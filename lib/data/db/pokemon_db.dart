import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pokemon_deck_builder/data/db/db_models/card_db_model.dart';
import 'package:pokemon_deck_builder/data/db/db_models/deck_cards_db_model.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:sqflite/sqflite.dart';

import 'db_models/deck_db_model.dart';

class PokemonDB {
  static final PokemonDB instance = PokemonDB._init();

  static Database? _database;

  PokemonDB._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb('pokemon_cards.db');

    return _database!;
  }

  Future<Database> _initDb(String filePath) async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    final dbPath = appDocDir.path;
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY';
    const integerTypeNotNull = 'INTEGER NOT NULL';
    const textType = 'TEXT';
    const textTypePrimary = 'TEXT PRIMARY KEY';
    const textTypeNoNull = 'TEXT NOT NULL';
    const blobType = 'BLOB';

    await db.execute('''CREATE TABLE $cardDbModelTableName(
    ${CardDbFields.id} $textTypePrimary,
    ${CardDbFields.name} $textTypeNoNull,
    ${CardDbFields.cardData} $textType,
    ${CardDbFields.imageSmall} $blobType,
    ${CardDbFields.imageLarge} $blobType
    )''');

    await db.execute('''CREATE TABLE $deckDbModelTableName(
    ${DeckDbFields.id} $idType,
    ${DeckDbFields.name} $textTypeNoNull
    )''');

    await db.execute('''CREATE TABLE $deckCardsDBModel(
    ${DeckCardsDFields.id} $idType,
    ${DeckCardsDFields.cardId} $textTypeNoNull,
    ${DeckCardsDFields.deckId} $integerTypeNotNull,
    FOREIGN KEY (${DeckCardsDFields.cardId}) REFERENCES $cardDbModelTableName (${CardDbFields.id}),
    FOREIGN KEY (${DeckCardsDFields.deckId}) REFERENCES $deckDbModelTableName (${DeckDbFields.id})
    )''');
  }

  void addCard(CardDatum cardDatum) async {
    final db = await instance.database;
    final id = cardDatum.id;
    final name = cardDatum.name;
    final cardData = json.encode(cardDatum.toString());

    final responseData = await get(Uri.parse(cardDatum.images!.small));
    final imageSmall = responseData.bodyBytes;

    var image = await get(Uri.parse(cardDatum.images!.small));
    var bytes = image.bodyBytes;

    final newCard = CardDBModel(id, name, cardData, imageSmall, bytes);
    await db.insert(cardDbModelTableName, newCard.toJson());
  }

  Future<CardDBModel> readCard(String id) async {
    final db = await instance.database;
    final maps = await db.query(
      cardDbModelTableName,
      columns: CardDbFields.values,
      where: '${CardDbFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return CardDBModel.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<DeckDBModel> createDeck(String deckName) async {
    final db = await instance.database;
    final newDeck = DeckDBModel(name: deckName);
    final id = await db.insert(deckDbModelTableName, newDeck.toJson());

    return newDeck.copyWith(id: id);
  }

  Future<DeckDBModel> readDeck(int id) async {
    final db = await instance.database;
    final maps = await db.query(
      deckDbModelTableName,
      columns: DeckDbFields.values,
      where: '${DeckDbFields.id} = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return DeckDBModel.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<DeckDBModel>> readAllDecks() async {
    final db = await instance.database;
    final result = await db.query(deckDbModelTableName);

    return result.map((json) => DeckDBModel.fromJson(json)).toList();
  }

  Future<int> deleteDeck(int id) async {
    final db = await instance.database;

    return await db.delete(deckDbModelTableName,
        where: '${DeckDbFields.id} = ?', whereArgs: [id]);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
