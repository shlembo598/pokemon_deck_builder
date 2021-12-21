// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
class _$CardTearOff {
  const _$CardTearOff();

  _Card call(
      {required String id,
      required String name,
      required String supertype,
      required List<String> subtypes,
      required String hp,
      required List<String> types,
      required String evolvesFrom,
      required List<Ability> abilities,
      required List<Attack> attacks,
      required List<Weakness> weaknesses,
      required List<String> retreatCost,
      required int convertedRetreatCost,
      required Set cardSet,
      required String number,
      required String artist,
      required String rarity,
      required String flavorText,
      required List<int> nationalPokedexNumbers,
      required Legalities legalities,
      required CardImages images,
      required TcgPlayer tcgplayer,
      required CardMarket cardmarket}) {
    return _Card(
      id: id,
      name: name,
      supertype: supertype,
      subtypes: subtypes,
      hp: hp,
      types: types,
      evolvesFrom: evolvesFrom,
      abilities: abilities,
      attacks: attacks,
      weaknesses: weaknesses,
      retreatCost: retreatCost,
      convertedRetreatCost: convertedRetreatCost,
      cardSet: cardSet,
      number: number,
      artist: artist,
      rarity: rarity,
      flavorText: flavorText,
      nationalPokedexNumbers: nationalPokedexNumbers,
      legalities: legalities,
      images: images,
      tcgplayer: tcgplayer,
      cardmarket: cardmarket,
    );
  }

  Card fromJson(Map<String, Object?> json) {
    return Card.fromJson(json);
  }
}

/// @nodoc
const $Card = _$CardTearOff();

/// @nodoc
mixin _$Card {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get supertype => throw _privateConstructorUsedError;
  List<String> get subtypes => throw _privateConstructorUsedError;
  String get hp => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  String get evolvesFrom => throw _privateConstructorUsedError;
  List<Ability> get abilities => throw _privateConstructorUsedError;
  List<Attack> get attacks => throw _privateConstructorUsedError;
  List<Weakness> get weaknesses => throw _privateConstructorUsedError;
  List<String> get retreatCost => throw _privateConstructorUsedError;
  int get convertedRetreatCost => throw _privateConstructorUsedError;
  Set get cardSet => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get rarity => throw _privateConstructorUsedError;
  String get flavorText => throw _privateConstructorUsedError;
  List<int> get nationalPokedexNumbers => throw _privateConstructorUsedError;
  Legalities get legalities => throw _privateConstructorUsedError;
  CardImages get images => throw _privateConstructorUsedError;
  TcgPlayer get tcgplayer => throw _privateConstructorUsedError;
  CardMarket get cardmarket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String supertype,
      List<String> subtypes,
      String hp,
      List<String> types,
      String evolvesFrom,
      List<Ability> abilities,
      List<Attack> attacks,
      List<Weakness> weaknesses,
      List<String> retreatCost,
      int convertedRetreatCost,
      Set cardSet,
      String number,
      String artist,
      String rarity,
      String flavorText,
      List<int> nationalPokedexNumbers,
      Legalities legalities,
      CardImages images,
      TcgPlayer tcgplayer,
      CardMarket cardmarket});

  $SetCopyWith<$Res> get cardSet;
  $LegalitiesCopyWith<$Res> get legalities;
  $CardImagesCopyWith<$Res> get images;
  $TcgPlayerCopyWith<$Res> get tcgplayer;
  $CardMarketCopyWith<$Res> get cardmarket;
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? supertype = freezed,
    Object? subtypes = freezed,
    Object? hp = freezed,
    Object? types = freezed,
    Object? evolvesFrom = freezed,
    Object? abilities = freezed,
    Object? attacks = freezed,
    Object? weaknesses = freezed,
    Object? retreatCost = freezed,
    Object? convertedRetreatCost = freezed,
    Object? cardSet = freezed,
    Object? number = freezed,
    Object? artist = freezed,
    Object? rarity = freezed,
    Object? flavorText = freezed,
    Object? nationalPokedexNumbers = freezed,
    Object? legalities = freezed,
    Object? images = freezed,
    Object? tcgplayer = freezed,
    Object? cardmarket = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      supertype: supertype == freezed
          ? _value.supertype
          : supertype // ignore: cast_nullable_to_non_nullable
              as String,
      subtypes: subtypes == freezed
          ? _value.subtypes
          : subtypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      evolvesFrom: evolvesFrom == freezed
          ? _value.evolvesFrom
          : evolvesFrom // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      attacks: attacks == freezed
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as List<Attack>,
      weaknesses: weaknesses == freezed
          ? _value.weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<Weakness>,
      retreatCost: retreatCost == freezed
          ? _value.retreatCost
          : retreatCost // ignore: cast_nullable_to_non_nullable
              as List<String>,
      convertedRetreatCost: convertedRetreatCost == freezed
          ? _value.convertedRetreatCost
          : convertedRetreatCost // ignore: cast_nullable_to_non_nullable
              as int,
      cardSet: cardSet == freezed
          ? _value.cardSet
          : cardSet // ignore: cast_nullable_to_non_nullable
              as Set,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      flavorText: flavorText == freezed
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      nationalPokedexNumbers: nationalPokedexNumbers == freezed
          ? _value.nationalPokedexNumbers
          : nationalPokedexNumbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      legalities: legalities == freezed
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as CardImages,
      tcgplayer: tcgplayer == freezed
          ? _value.tcgplayer
          : tcgplayer // ignore: cast_nullable_to_non_nullable
              as TcgPlayer,
      cardmarket: cardmarket == freezed
          ? _value.cardmarket
          : cardmarket // ignore: cast_nullable_to_non_nullable
              as CardMarket,
    ));
  }

  @override
  $SetCopyWith<$Res> get cardSet {
    return $SetCopyWith<$Res>(_value.cardSet, (value) {
      return _then(_value.copyWith(cardSet: value));
    });
  }

  @override
  $LegalitiesCopyWith<$Res> get legalities {
    return $LegalitiesCopyWith<$Res>(_value.legalities, (value) {
      return _then(_value.copyWith(legalities: value));
    });
  }

  @override
  $CardImagesCopyWith<$Res> get images {
    return $CardImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value));
    });
  }

  @override
  $TcgPlayerCopyWith<$Res> get tcgplayer {
    return $TcgPlayerCopyWith<$Res>(_value.tcgplayer, (value) {
      return _then(_value.copyWith(tcgplayer: value));
    });
  }

  @override
  $CardMarketCopyWith<$Res> get cardmarket {
    return $CardMarketCopyWith<$Res>(_value.cardmarket, (value) {
      return _then(_value.copyWith(cardmarket: value));
    });
  }
}

/// @nodoc
abstract class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) then) =
      __$CardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String supertype,
      List<String> subtypes,
      String hp,
      List<String> types,
      String evolvesFrom,
      List<Ability> abilities,
      List<Attack> attacks,
      List<Weakness> weaknesses,
      List<String> retreatCost,
      int convertedRetreatCost,
      Set cardSet,
      String number,
      String artist,
      String rarity,
      String flavorText,
      List<int> nationalPokedexNumbers,
      Legalities legalities,
      CardImages images,
      TcgPlayer tcgplayer,
      CardMarket cardmarket});

  @override
  $SetCopyWith<$Res> get cardSet;
  @override
  $LegalitiesCopyWith<$Res> get legalities;
  @override
  $CardImagesCopyWith<$Res> get images;
  @override
  $TcgPlayerCopyWith<$Res> get tcgplayer;
  @override
  $CardMarketCopyWith<$Res> get cardmarket;
}

/// @nodoc
class __$CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(_Card _value, $Res Function(_Card) _then)
      : super(_value, (v) => _then(v as _Card));

  @override
  _Card get _value => super._value as _Card;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? supertype = freezed,
    Object? subtypes = freezed,
    Object? hp = freezed,
    Object? types = freezed,
    Object? evolvesFrom = freezed,
    Object? abilities = freezed,
    Object? attacks = freezed,
    Object? weaknesses = freezed,
    Object? retreatCost = freezed,
    Object? convertedRetreatCost = freezed,
    Object? cardSet = freezed,
    Object? number = freezed,
    Object? artist = freezed,
    Object? rarity = freezed,
    Object? flavorText = freezed,
    Object? nationalPokedexNumbers = freezed,
    Object? legalities = freezed,
    Object? images = freezed,
    Object? tcgplayer = freezed,
    Object? cardmarket = freezed,
  }) {
    return _then(_Card(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      supertype: supertype == freezed
          ? _value.supertype
          : supertype // ignore: cast_nullable_to_non_nullable
              as String,
      subtypes: subtypes == freezed
          ? _value.subtypes
          : subtypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hp: hp == freezed
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as String,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      evolvesFrom: evolvesFrom == freezed
          ? _value.evolvesFrom
          : evolvesFrom // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      attacks: attacks == freezed
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as List<Attack>,
      weaknesses: weaknesses == freezed
          ? _value.weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<Weakness>,
      retreatCost: retreatCost == freezed
          ? _value.retreatCost
          : retreatCost // ignore: cast_nullable_to_non_nullable
              as List<String>,
      convertedRetreatCost: convertedRetreatCost == freezed
          ? _value.convertedRetreatCost
          : convertedRetreatCost // ignore: cast_nullable_to_non_nullable
              as int,
      cardSet: cardSet == freezed
          ? _value.cardSet
          : cardSet // ignore: cast_nullable_to_non_nullable
              as Set,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: rarity == freezed
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      flavorText: flavorText == freezed
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      nationalPokedexNumbers: nationalPokedexNumbers == freezed
          ? _value.nationalPokedexNumbers
          : nationalPokedexNumbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      legalities: legalities == freezed
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as CardImages,
      tcgplayer: tcgplayer == freezed
          ? _value.tcgplayer
          : tcgplayer // ignore: cast_nullable_to_non_nullable
              as TcgPlayer,
      cardmarket: cardmarket == freezed
          ? _value.cardmarket
          : cardmarket // ignore: cast_nullable_to_non_nullable
              as CardMarket,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Card implements _Card {
  const _$_Card(
      {required this.id,
      required this.name,
      required this.supertype,
      required this.subtypes,
      required this.hp,
      required this.types,
      required this.evolvesFrom,
      required this.abilities,
      required this.attacks,
      required this.weaknesses,
      required this.retreatCost,
      required this.convertedRetreatCost,
      required this.cardSet,
      required this.number,
      required this.artist,
      required this.rarity,
      required this.flavorText,
      required this.nationalPokedexNumbers,
      required this.legalities,
      required this.images,
      required this.tcgplayer,
      required this.cardmarket});

  factory _$_Card.fromJson(Map<String, dynamic> json) => _$$_CardFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String supertype;
  @override
  final List<String> subtypes;
  @override
  final String hp;
  @override
  final List<String> types;
  @override
  final String evolvesFrom;
  @override
  final List<Ability> abilities;
  @override
  final List<Attack> attacks;
  @override
  final List<Weakness> weaknesses;
  @override
  final List<String> retreatCost;
  @override
  final int convertedRetreatCost;
  @override
  final Set cardSet;
  @override
  final String number;
  @override
  final String artist;
  @override
  final String rarity;
  @override
  final String flavorText;
  @override
  final List<int> nationalPokedexNumbers;
  @override
  final Legalities legalities;
  @override
  final CardImages images;
  @override
  final TcgPlayer tcgplayer;
  @override
  final CardMarket cardmarket;

  @override
  String toString() {
    return 'Card(id: $id, name: $name, supertype: $supertype, subtypes: $subtypes, hp: $hp, types: $types, evolvesFrom: $evolvesFrom, abilities: $abilities, attacks: $attacks, weaknesses: $weaknesses, retreatCost: $retreatCost, convertedRetreatCost: $convertedRetreatCost, cardSet: $cardSet, number: $number, artist: $artist, rarity: $rarity, flavorText: $flavorText, nationalPokedexNumbers: $nationalPokedexNumbers, legalities: $legalities, images: $images, tcgplayer: $tcgplayer, cardmarket: $cardmarket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Card &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.supertype, supertype) &&
            const DeepCollectionEquality().equals(other.subtypes, subtypes) &&
            const DeepCollectionEquality().equals(other.hp, hp) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality()
                .equals(other.evolvesFrom, evolvesFrom) &&
            const DeepCollectionEquality().equals(other.abilities, abilities) &&
            const DeepCollectionEquality().equals(other.attacks, attacks) &&
            const DeepCollectionEquality()
                .equals(other.weaknesses, weaknesses) &&
            const DeepCollectionEquality()
                .equals(other.retreatCost, retreatCost) &&
            const DeepCollectionEquality()
                .equals(other.convertedRetreatCost, convertedRetreatCost) &&
            const DeepCollectionEquality().equals(other.cardSet, cardSet) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.artist, artist) &&
            const DeepCollectionEquality().equals(other.rarity, rarity) &&
            const DeepCollectionEquality()
                .equals(other.flavorText, flavorText) &&
            const DeepCollectionEquality()
                .equals(other.nationalPokedexNumbers, nationalPokedexNumbers) &&
            const DeepCollectionEquality()
                .equals(other.legalities, legalities) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.tcgplayer, tcgplayer) &&
            const DeepCollectionEquality()
                .equals(other.cardmarket, cardmarket));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(supertype),
        const DeepCollectionEquality().hash(subtypes),
        const DeepCollectionEquality().hash(hp),
        const DeepCollectionEquality().hash(types),
        const DeepCollectionEquality().hash(evolvesFrom),
        const DeepCollectionEquality().hash(abilities),
        const DeepCollectionEquality().hash(attacks),
        const DeepCollectionEquality().hash(weaknesses),
        const DeepCollectionEquality().hash(retreatCost),
        const DeepCollectionEquality().hash(convertedRetreatCost),
        const DeepCollectionEquality().hash(cardSet),
        const DeepCollectionEquality().hash(number),
        const DeepCollectionEquality().hash(artist),
        const DeepCollectionEquality().hash(rarity),
        const DeepCollectionEquality().hash(flavorText),
        const DeepCollectionEquality().hash(nationalPokedexNumbers),
        const DeepCollectionEquality().hash(legalities),
        const DeepCollectionEquality().hash(images),
        const DeepCollectionEquality().hash(tcgplayer),
        const DeepCollectionEquality().hash(cardmarket)
      ]);

  @JsonKey(ignore: true)
  @override
  _$CardCopyWith<_Card> get copyWith =>
      __$CardCopyWithImpl<_Card>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardToJson(this);
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {required String id,
      required String name,
      required String supertype,
      required List<String> subtypes,
      required String hp,
      required List<String> types,
      required String evolvesFrom,
      required List<Ability> abilities,
      required List<Attack> attacks,
      required List<Weakness> weaknesses,
      required List<String> retreatCost,
      required int convertedRetreatCost,
      required Set cardSet,
      required String number,
      required String artist,
      required String rarity,
      required String flavorText,
      required List<int> nationalPokedexNumbers,
      required Legalities legalities,
      required CardImages images,
      required TcgPlayer tcgplayer,
      required CardMarket cardmarket}) = _$_Card;

  factory _Card.fromJson(Map<String, dynamic> json) = _$_Card.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get supertype;
  @override
  List<String> get subtypes;
  @override
  String get hp;
  @override
  List<String> get types;
  @override
  String get evolvesFrom;
  @override
  List<Ability> get abilities;
  @override
  List<Attack> get attacks;
  @override
  List<Weakness> get weaknesses;
  @override
  List<String> get retreatCost;
  @override
  int get convertedRetreatCost;
  @override
  Set get cardSet;
  @override
  String get number;
  @override
  String get artist;
  @override
  String get rarity;
  @override
  String get flavorText;
  @override
  List<int> get nationalPokedexNumbers;
  @override
  Legalities get legalities;
  @override
  CardImages get images;
  @override
  TcgPlayer get tcgplayer;
  @override
  CardMarket get cardmarket;
  @override
  @JsonKey(ignore: true)
  _$CardCopyWith<_Card> get copyWith => throw _privateConstructorUsedError;
}

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return _Ability.fromJson(json);
}

/// @nodoc
class _$AbilityTearOff {
  const _$AbilityTearOff();

  _Ability call(
      {required String name, required String text, required String type}) {
    return _Ability(
      name: name,
      text: text,
      type: type,
    );
  }

  Ability fromJson(Map<String, Object?> json) {
    return Ability.fromJson(json);
  }
}

/// @nodoc
const $Ability = _$AbilityTearOff();

/// @nodoc
mixin _$Ability {
  String get name => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityCopyWith<Ability> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityCopyWith<$Res> {
  factory $AbilityCopyWith(Ability value, $Res Function(Ability) then) =
      _$AbilityCopyWithImpl<$Res>;
  $Res call({String name, String text, String type});
}

/// @nodoc
class _$AbilityCopyWithImpl<$Res> implements $AbilityCopyWith<$Res> {
  _$AbilityCopyWithImpl(this._value, this._then);

  final Ability _value;
  // ignore: unused_field
  final $Res Function(Ability) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AbilityCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$AbilityCopyWith(_Ability value, $Res Function(_Ability) then) =
      __$AbilityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String text, String type});
}

/// @nodoc
class __$AbilityCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$AbilityCopyWith<$Res> {
  __$AbilityCopyWithImpl(_Ability _value, $Res Function(_Ability) _then)
      : super(_value, (v) => _then(v as _Ability));

  @override
  _Ability get _value => super._value as _Ability;

  @override
  $Res call({
    Object? name = freezed,
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_Ability(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ability implements _Ability {
  const _$_Ability(
      {required this.name, required this.text, required this.type});

  factory _$_Ability.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityFromJson(json);

  @override
  final String name;
  @override
  final String text;
  @override
  final String type;

  @override
  String toString() {
    return 'Ability(name: $name, text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ability &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$AbilityCopyWith<_Ability> get copyWith =>
      __$AbilityCopyWithImpl<_Ability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityToJson(this);
  }
}

abstract class _Ability implements Ability {
  const factory _Ability(
      {required String name,
      required String text,
      required String type}) = _$_Ability;

  factory _Ability.fromJson(Map<String, dynamic> json) = _$_Ability.fromJson;

  @override
  String get name;
  @override
  String get text;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$AbilityCopyWith<_Ability> get copyWith =>
      throw _privateConstructorUsedError;
}

Attack _$AttackFromJson(Map<String, dynamic> json) {
  return _Attack.fromJson(json);
}

/// @nodoc
class _$AttackTearOff {
  const _$AttackTearOff();

  _Attack call(
      {required String name,
      required List<String> cost,
      required int convertedEnergyCost,
      required String damage,
      required String text}) {
    return _Attack(
      name: name,
      cost: cost,
      convertedEnergyCost: convertedEnergyCost,
      damage: damage,
      text: text,
    );
  }

  Attack fromJson(Map<String, Object?> json) {
    return Attack.fromJson(json);
  }
}

/// @nodoc
const $Attack = _$AttackTearOff();

/// @nodoc
mixin _$Attack {
  String get name => throw _privateConstructorUsedError;
  List<String> get cost => throw _privateConstructorUsedError;
  int get convertedEnergyCost => throw _privateConstructorUsedError;
  String get damage => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttackCopyWith<Attack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackCopyWith<$Res> {
  factory $AttackCopyWith(Attack value, $Res Function(Attack) then) =
      _$AttackCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<String> cost,
      int convertedEnergyCost,
      String damage,
      String text});
}

/// @nodoc
class _$AttackCopyWithImpl<$Res> implements $AttackCopyWith<$Res> {
  _$AttackCopyWithImpl(this._value, this._then);

  final Attack _value;
  // ignore: unused_field
  final $Res Function(Attack) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
    Object? convertedEnergyCost = freezed,
    Object? damage = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<String>,
      convertedEnergyCost: convertedEnergyCost == freezed
          ? _value.convertedEnergyCost
          : convertedEnergyCost // ignore: cast_nullable_to_non_nullable
              as int,
      damage: damage == freezed
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AttackCopyWith<$Res> implements $AttackCopyWith<$Res> {
  factory _$AttackCopyWith(_Attack value, $Res Function(_Attack) then) =
      __$AttackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<String> cost,
      int convertedEnergyCost,
      String damage,
      String text});
}

/// @nodoc
class __$AttackCopyWithImpl<$Res> extends _$AttackCopyWithImpl<$Res>
    implements _$AttackCopyWith<$Res> {
  __$AttackCopyWithImpl(_Attack _value, $Res Function(_Attack) _then)
      : super(_value, (v) => _then(v as _Attack));

  @override
  _Attack get _value => super._value as _Attack;

  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
    Object? convertedEnergyCost = freezed,
    Object? damage = freezed,
    Object? text = freezed,
  }) {
    return _then(_Attack(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<String>,
      convertedEnergyCost: convertedEnergyCost == freezed
          ? _value.convertedEnergyCost
          : convertedEnergyCost // ignore: cast_nullable_to_non_nullable
              as int,
      damage: damage == freezed
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attack implements _Attack {
  const _$_Attack(
      {required this.name,
      required this.cost,
      required this.convertedEnergyCost,
      required this.damage,
      required this.text});

  factory _$_Attack.fromJson(Map<String, dynamic> json) =>
      _$$_AttackFromJson(json);

  @override
  final String name;
  @override
  final List<String> cost;
  @override
  final int convertedEnergyCost;
  @override
  final String damage;
  @override
  final String text;

  @override
  String toString() {
    return 'Attack(name: $name, cost: $cost, convertedEnergyCost: $convertedEnergyCost, damage: $damage, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attack &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.convertedEnergyCost, convertedEnergyCost) &&
            const DeepCollectionEquality().equals(other.damage, damage) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(convertedEnergyCost),
      const DeepCollectionEquality().hash(damage),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$AttackCopyWith<_Attack> get copyWith =>
      __$AttackCopyWithImpl<_Attack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttackToJson(this);
  }
}

abstract class _Attack implements Attack {
  const factory _Attack(
      {required String name,
      required List<String> cost,
      required int convertedEnergyCost,
      required String damage,
      required String text}) = _$_Attack;

  factory _Attack.fromJson(Map<String, dynamic> json) = _$_Attack.fromJson;

  @override
  String get name;
  @override
  List<String> get cost;
  @override
  int get convertedEnergyCost;
  @override
  String get damage;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$AttackCopyWith<_Attack> get copyWith => throw _privateConstructorUsedError;
}

Set _$SetFromJson(Map<String, dynamic> json) {
  return _Set.fromJson(json);
}

/// @nodoc
class _$SetTearOff {
  const _$SetTearOff();

  _Set call(
      {required String id,
      required String name,
      required String series,
      required int printedTotal,
      required int total,
      required Legalities legalities,
      required String ptcgoCode,
      required String releaseDate,
      required String updatedAt,
      required SetImages images}) {
    return _Set(
      id: id,
      name: name,
      series: series,
      printedTotal: printedTotal,
      total: total,
      legalities: legalities,
      ptcgoCode: ptcgoCode,
      releaseDate: releaseDate,
      updatedAt: updatedAt,
      images: images,
    );
  }

  Set fromJson(Map<String, Object?> json) {
    return Set.fromJson(json);
  }
}

/// @nodoc
const $Set = _$SetTearOff();

/// @nodoc
mixin _$Set {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get series => throw _privateConstructorUsedError;
  int get printedTotal => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  Legalities get legalities => throw _privateConstructorUsedError;
  String get ptcgoCode => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  SetImages get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetCopyWith<Set> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String series,
      int printedTotal,
      int total,
      Legalities legalities,
      String ptcgoCode,
      String releaseDate,
      String updatedAt,
      SetImages images});

  $LegalitiesCopyWith<$Res> get legalities;
  $SetImagesCopyWith<$Res> get images;
}

/// @nodoc
class _$SetCopyWithImpl<$Res> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  final Set _value;
  // ignore: unused_field
  final $Res Function(Set) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? series = freezed,
    Object? printedTotal = freezed,
    Object? total = freezed,
    Object? legalities = freezed,
    Object? ptcgoCode = freezed,
    Object? releaseDate = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String,
      printedTotal: printedTotal == freezed
          ? _value.printedTotal
          : printedTotal // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      legalities: legalities == freezed
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities,
      ptcgoCode: ptcgoCode == freezed
          ? _value.ptcgoCode
          : ptcgoCode // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as SetImages,
    ));
  }

  @override
  $LegalitiesCopyWith<$Res> get legalities {
    return $LegalitiesCopyWith<$Res>(_value.legalities, (value) {
      return _then(_value.copyWith(legalities: value));
    });
  }

  @override
  $SetImagesCopyWith<$Res> get images {
    return $SetImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value));
    });
  }
}

/// @nodoc
abstract class _$SetCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$SetCopyWith(_Set value, $Res Function(_Set) then) =
      __$SetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String series,
      int printedTotal,
      int total,
      Legalities legalities,
      String ptcgoCode,
      String releaseDate,
      String updatedAt,
      SetImages images});

  @override
  $LegalitiesCopyWith<$Res> get legalities;
  @override
  $SetImagesCopyWith<$Res> get images;
}

/// @nodoc
class __$SetCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res>
    implements _$SetCopyWith<$Res> {
  __$SetCopyWithImpl(_Set _value, $Res Function(_Set) _then)
      : super(_value, (v) => _then(v as _Set));

  @override
  _Set get _value => super._value as _Set;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? series = freezed,
    Object? printedTotal = freezed,
    Object? total = freezed,
    Object? legalities = freezed,
    Object? ptcgoCode = freezed,
    Object? releaseDate = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_Set(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String,
      printedTotal: printedTotal == freezed
          ? _value.printedTotal
          : printedTotal // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      legalities: legalities == freezed
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities,
      ptcgoCode: ptcgoCode == freezed
          ? _value.ptcgoCode
          : ptcgoCode // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as SetImages,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Set implements _Set {
  const _$_Set(
      {required this.id,
      required this.name,
      required this.series,
      required this.printedTotal,
      required this.total,
      required this.legalities,
      required this.ptcgoCode,
      required this.releaseDate,
      required this.updatedAt,
      required this.images});

  factory _$_Set.fromJson(Map<String, dynamic> json) => _$$_SetFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String series;
  @override
  final int printedTotal;
  @override
  final int total;
  @override
  final Legalities legalities;
  @override
  final String ptcgoCode;
  @override
  final String releaseDate;
  @override
  final String updatedAt;
  @override
  final SetImages images;

  @override
  String toString() {
    return 'Set(id: $id, name: $name, series: $series, printedTotal: $printedTotal, total: $total, legalities: $legalities, ptcgoCode: $ptcgoCode, releaseDate: $releaseDate, updatedAt: $updatedAt, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Set &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.series, series) &&
            const DeepCollectionEquality()
                .equals(other.printedTotal, printedTotal) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.legalities, legalities) &&
            const DeepCollectionEquality().equals(other.ptcgoCode, ptcgoCode) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(series),
      const DeepCollectionEquality().hash(printedTotal),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(legalities),
      const DeepCollectionEquality().hash(ptcgoCode),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$SetCopyWith<_Set> get copyWith =>
      __$SetCopyWithImpl<_Set>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetToJson(this);
  }
}

abstract class _Set implements Set {
  const factory _Set(
      {required String id,
      required String name,
      required String series,
      required int printedTotal,
      required int total,
      required Legalities legalities,
      required String ptcgoCode,
      required String releaseDate,
      required String updatedAt,
      required SetImages images}) = _$_Set;

  factory _Set.fromJson(Map<String, dynamic> json) = _$_Set.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get series;
  @override
  int get printedTotal;
  @override
  int get total;
  @override
  Legalities get legalities;
  @override
  String get ptcgoCode;
  @override
  String get releaseDate;
  @override
  String get updatedAt;
  @override
  SetImages get images;
  @override
  @JsonKey(ignore: true)
  _$SetCopyWith<_Set> get copyWith => throw _privateConstructorUsedError;
}

SetImages _$SetImagesFromJson(Map<String, dynamic> json) {
  return _SetImages.fromJson(json);
}

/// @nodoc
class _$SetImagesTearOff {
  const _$SetImagesTearOff();

  _SetImages call({required String symbol, required String logo}) {
    return _SetImages(
      symbol: symbol,
      logo: logo,
    );
  }

  SetImages fromJson(Map<String, Object?> json) {
    return SetImages.fromJson(json);
  }
}

/// @nodoc
const $SetImages = _$SetImagesTearOff();

/// @nodoc
mixin _$SetImages {
  String get symbol => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetImagesCopyWith<SetImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetImagesCopyWith<$Res> {
  factory $SetImagesCopyWith(SetImages value, $Res Function(SetImages) then) =
      _$SetImagesCopyWithImpl<$Res>;
  $Res call({String symbol, String logo});
}

/// @nodoc
class _$SetImagesCopyWithImpl<$Res> implements $SetImagesCopyWith<$Res> {
  _$SetImagesCopyWithImpl(this._value, this._then);

  final SetImages _value;
  // ignore: unused_field
  final $Res Function(SetImages) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SetImagesCopyWith<$Res> implements $SetImagesCopyWith<$Res> {
  factory _$SetImagesCopyWith(
          _SetImages value, $Res Function(_SetImages) then) =
      __$SetImagesCopyWithImpl<$Res>;
  @override
  $Res call({String symbol, String logo});
}

/// @nodoc
class __$SetImagesCopyWithImpl<$Res> extends _$SetImagesCopyWithImpl<$Res>
    implements _$SetImagesCopyWith<$Res> {
  __$SetImagesCopyWithImpl(_SetImages _value, $Res Function(_SetImages) _then)
      : super(_value, (v) => _then(v as _SetImages));

  @override
  _SetImages get _value => super._value as _SetImages;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? logo = freezed,
  }) {
    return _then(_SetImages(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SetImages implements _SetImages {
  const _$_SetImages({required this.symbol, required this.logo});

  factory _$_SetImages.fromJson(Map<String, dynamic> json) =>
      _$$_SetImagesFromJson(json);

  @override
  final String symbol;
  @override
  final String logo;

  @override
  String toString() {
    return 'SetImages(symbol: $symbol, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetImages &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.logo, logo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(logo));

  @JsonKey(ignore: true)
  @override
  _$SetImagesCopyWith<_SetImages> get copyWith =>
      __$SetImagesCopyWithImpl<_SetImages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetImagesToJson(this);
  }
}

abstract class _SetImages implements SetImages {
  const factory _SetImages({required String symbol, required String logo}) =
      _$_SetImages;

  factory _SetImages.fromJson(Map<String, dynamic> json) =
      _$_SetImages.fromJson;

  @override
  String get symbol;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$SetImagesCopyWith<_SetImages> get copyWith =>
      throw _privateConstructorUsedError;
}

Legalities _$LegalitiesFromJson(Map<String, dynamic> json) {
  return _Legalities.fromJson(json);
}

/// @nodoc
class _$LegalitiesTearOff {
  const _$LegalitiesTearOff();

  _Legalities call(
      {required String unlimited,
      required String standard,
      required String expanded}) {
    return _Legalities(
      unlimited: unlimited,
      standard: standard,
      expanded: expanded,
    );
  }

  Legalities fromJson(Map<String, Object?> json) {
    return Legalities.fromJson(json);
  }
}

/// @nodoc
const $Legalities = _$LegalitiesTearOff();

/// @nodoc
mixin _$Legalities {
  String get unlimited => throw _privateConstructorUsedError;
  String get standard => throw _privateConstructorUsedError;
  String get expanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegalitiesCopyWith<Legalities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegalitiesCopyWith<$Res> {
  factory $LegalitiesCopyWith(
          Legalities value, $Res Function(Legalities) then) =
      _$LegalitiesCopyWithImpl<$Res>;
  $Res call({String unlimited, String standard, String expanded});
}

/// @nodoc
class _$LegalitiesCopyWithImpl<$Res> implements $LegalitiesCopyWith<$Res> {
  _$LegalitiesCopyWithImpl(this._value, this._then);

  final Legalities _value;
  // ignore: unused_field
  final $Res Function(Legalities) _then;

  @override
  $Res call({
    Object? unlimited = freezed,
    Object? standard = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_value.copyWith(
      unlimited: unlimited == freezed
          ? _value.unlimited
          : unlimited // ignore: cast_nullable_to_non_nullable
              as String,
      standard: standard == freezed
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: expanded == freezed
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LegalitiesCopyWith<$Res> implements $LegalitiesCopyWith<$Res> {
  factory _$LegalitiesCopyWith(
          _Legalities value, $Res Function(_Legalities) then) =
      __$LegalitiesCopyWithImpl<$Res>;
  @override
  $Res call({String unlimited, String standard, String expanded});
}

/// @nodoc
class __$LegalitiesCopyWithImpl<$Res> extends _$LegalitiesCopyWithImpl<$Res>
    implements _$LegalitiesCopyWith<$Res> {
  __$LegalitiesCopyWithImpl(
      _Legalities _value, $Res Function(_Legalities) _then)
      : super(_value, (v) => _then(v as _Legalities));

  @override
  _Legalities get _value => super._value as _Legalities;

  @override
  $Res call({
    Object? unlimited = freezed,
    Object? standard = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_Legalities(
      unlimited: unlimited == freezed
          ? _value.unlimited
          : unlimited // ignore: cast_nullable_to_non_nullable
              as String,
      standard: standard == freezed
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: expanded == freezed
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Legalities implements _Legalities {
  const _$_Legalities(
      {required this.unlimited,
      required this.standard,
      required this.expanded});

  factory _$_Legalities.fromJson(Map<String, dynamic> json) =>
      _$$_LegalitiesFromJson(json);

  @override
  final String unlimited;
  @override
  final String standard;
  @override
  final String expanded;

  @override
  String toString() {
    return 'Legalities(unlimited: $unlimited, standard: $standard, expanded: $expanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Legalities &&
            const DeepCollectionEquality().equals(other.unlimited, unlimited) &&
            const DeepCollectionEquality().equals(other.standard, standard) &&
            const DeepCollectionEquality().equals(other.expanded, expanded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unlimited),
      const DeepCollectionEquality().hash(standard),
      const DeepCollectionEquality().hash(expanded));

  @JsonKey(ignore: true)
  @override
  _$LegalitiesCopyWith<_Legalities> get copyWith =>
      __$LegalitiesCopyWithImpl<_Legalities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LegalitiesToJson(this);
  }
}

abstract class _Legalities implements Legalities {
  const factory _Legalities(
      {required String unlimited,
      required String standard,
      required String expanded}) = _$_Legalities;

  factory _Legalities.fromJson(Map<String, dynamic> json) =
      _$_Legalities.fromJson;

  @override
  String get unlimited;
  @override
  String get standard;
  @override
  String get expanded;
  @override
  @JsonKey(ignore: true)
  _$LegalitiesCopyWith<_Legalities> get copyWith =>
      throw _privateConstructorUsedError;
}

CardMarket _$CardMarketFromJson(Map<String, dynamic> json) {
  return _CardMarket.fromJson(json);
}

/// @nodoc
class _$CardMarketTearOff {
  const _$CardMarketTearOff();

  _CardMarket call(
      {required String url,
      required String updatedAt,
      required Map<String, double> prices}) {
    return _CardMarket(
      url: url,
      updatedAt: updatedAt,
      prices: prices,
    );
  }

  CardMarket fromJson(Map<String, Object?> json) {
    return CardMarket.fromJson(json);
  }
}

/// @nodoc
const $CardMarket = _$CardMarketTearOff();

/// @nodoc
mixin _$CardMarket {
  String get url => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  Map<String, double> get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardMarketCopyWith<CardMarket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardMarketCopyWith<$Res> {
  factory $CardMarketCopyWith(
          CardMarket value, $Res Function(CardMarket) then) =
      _$CardMarketCopyWithImpl<$Res>;
  $Res call({String url, String updatedAt, Map<String, double> prices});
}

/// @nodoc
class _$CardMarketCopyWithImpl<$Res> implements $CardMarketCopyWith<$Res> {
  _$CardMarketCopyWithImpl(this._value, this._then);

  final CardMarket _value;
  // ignore: unused_field
  final $Res Function(CardMarket) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? updatedAt = freezed,
    Object? prices = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
abstract class _$CardMarketCopyWith<$Res> implements $CardMarketCopyWith<$Res> {
  factory _$CardMarketCopyWith(
          _CardMarket value, $Res Function(_CardMarket) then) =
      __$CardMarketCopyWithImpl<$Res>;
  @override
  $Res call({String url, String updatedAt, Map<String, double> prices});
}

/// @nodoc
class __$CardMarketCopyWithImpl<$Res> extends _$CardMarketCopyWithImpl<$Res>
    implements _$CardMarketCopyWith<$Res> {
  __$CardMarketCopyWithImpl(
      _CardMarket _value, $Res Function(_CardMarket) _then)
      : super(_value, (v) => _then(v as _CardMarket));

  @override
  _CardMarket get _value => super._value as _CardMarket;

  @override
  $Res call({
    Object? url = freezed,
    Object? updatedAt = freezed,
    Object? prices = freezed,
  }) {
    return _then(_CardMarket(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardMarket implements _CardMarket {
  const _$_CardMarket(
      {required this.url, required this.updatedAt, required this.prices});

  factory _$_CardMarket.fromJson(Map<String, dynamic> json) =>
      _$$_CardMarketFromJson(json);

  @override
  final String url;
  @override
  final String updatedAt;
  @override
  final Map<String, double> prices;

  @override
  String toString() {
    return 'CardMarket(url: $url, updatedAt: $updatedAt, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardMarket &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.prices, prices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(prices));

  @JsonKey(ignore: true)
  @override
  _$CardMarketCopyWith<_CardMarket> get copyWith =>
      __$CardMarketCopyWithImpl<_CardMarket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardMarketToJson(this);
  }
}

abstract class _CardMarket implements CardMarket {
  const factory _CardMarket(
      {required String url,
      required String updatedAt,
      required Map<String, double> prices}) = _$_CardMarket;

  factory _CardMarket.fromJson(Map<String, dynamic> json) =
      _$_CardMarket.fromJson;

  @override
  String get url;
  @override
  String get updatedAt;
  @override
  Map<String, double> get prices;
  @override
  @JsonKey(ignore: true)
  _$CardMarketCopyWith<_CardMarket> get copyWith =>
      throw _privateConstructorUsedError;
}

CardImages _$CardImagesFromJson(Map<String, dynamic> json) {
  return _CardImages.fromJson(json);
}

/// @nodoc
class _$CardImagesTearOff {
  const _$CardImagesTearOff();

  _CardImages call({required String small, required String large}) {
    return _CardImages(
      small: small,
      large: large,
    );
  }

  CardImages fromJson(Map<String, Object?> json) {
    return CardImages.fromJson(json);
  }
}

/// @nodoc
const $CardImages = _$CardImagesTearOff();

/// @nodoc
mixin _$CardImages {
  String get small => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardImagesCopyWith<CardImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardImagesCopyWith<$Res> {
  factory $CardImagesCopyWith(
          CardImages value, $Res Function(CardImages) then) =
      _$CardImagesCopyWithImpl<$Res>;
  $Res call({String small, String large});
}

/// @nodoc
class _$CardImagesCopyWithImpl<$Res> implements $CardImagesCopyWith<$Res> {
  _$CardImagesCopyWithImpl(this._value, this._then);

  final CardImages _value;
  // ignore: unused_field
  final $Res Function(CardImages) _then;

  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CardImagesCopyWith<$Res> implements $CardImagesCopyWith<$Res> {
  factory _$CardImagesCopyWith(
          _CardImages value, $Res Function(_CardImages) then) =
      __$CardImagesCopyWithImpl<$Res>;
  @override
  $Res call({String small, String large});
}

/// @nodoc
class __$CardImagesCopyWithImpl<$Res> extends _$CardImagesCopyWithImpl<$Res>
    implements _$CardImagesCopyWith<$Res> {
  __$CardImagesCopyWithImpl(
      _CardImages _value, $Res Function(_CardImages) _then)
      : super(_value, (v) => _then(v as _CardImages));

  @override
  _CardImages get _value => super._value as _CardImages;

  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_CardImages(
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardImages implements _CardImages {
  const _$_CardImages({required this.small, required this.large});

  factory _$_CardImages.fromJson(Map<String, dynamic> json) =>
      _$$_CardImagesFromJson(json);

  @override
  final String small;
  @override
  final String large;

  @override
  String toString() {
    return 'CardImages(small: $small, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardImages &&
            const DeepCollectionEquality().equals(other.small, small) &&
            const DeepCollectionEquality().equals(other.large, large));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(small),
      const DeepCollectionEquality().hash(large));

  @JsonKey(ignore: true)
  @override
  _$CardImagesCopyWith<_CardImages> get copyWith =>
      __$CardImagesCopyWithImpl<_CardImages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardImagesToJson(this);
  }
}

abstract class _CardImages implements CardImages {
  const factory _CardImages({required String small, required String large}) =
      _$_CardImages;

  factory _CardImages.fromJson(Map<String, dynamic> json) =
      _$_CardImages.fromJson;

  @override
  String get small;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$CardImagesCopyWith<_CardImages> get copyWith =>
      throw _privateConstructorUsedError;
}

TcgPlayer _$TcgPlayerFromJson(Map<String, dynamic> json) {
  return _TcgPlayer.fromJson(json);
}

/// @nodoc
class _$TcgPlayerTearOff {
  const _$TcgPlayerTearOff();

  _TcgPlayer call(
      {required String url,
      required String updatedAt,
      required Prices prices}) {
    return _TcgPlayer(
      url: url,
      updatedAt: updatedAt,
      prices: prices,
    );
  }

  TcgPlayer fromJson(Map<String, Object?> json) {
    return TcgPlayer.fromJson(json);
  }
}

/// @nodoc
const $TcgPlayer = _$TcgPlayerTearOff();

/// @nodoc
mixin _$TcgPlayer {
  String get url => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  Prices get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TcgPlayerCopyWith<TcgPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TcgPlayerCopyWith<$Res> {
  factory $TcgPlayerCopyWith(TcgPlayer value, $Res Function(TcgPlayer) then) =
      _$TcgPlayerCopyWithImpl<$Res>;
  $Res call({String url, String updatedAt, Prices prices});

  $PricesCopyWith<$Res> get prices;
}

/// @nodoc
class _$TcgPlayerCopyWithImpl<$Res> implements $TcgPlayerCopyWith<$Res> {
  _$TcgPlayerCopyWithImpl(this._value, this._then);

  final TcgPlayer _value;
  // ignore: unused_field
  final $Res Function(TcgPlayer) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? updatedAt = freezed,
    Object? prices = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices,
    ));
  }

  @override
  $PricesCopyWith<$Res> get prices {
    return $PricesCopyWith<$Res>(_value.prices, (value) {
      return _then(_value.copyWith(prices: value));
    });
  }
}

/// @nodoc
abstract class _$TcgPlayerCopyWith<$Res> implements $TcgPlayerCopyWith<$Res> {
  factory _$TcgPlayerCopyWith(
          _TcgPlayer value, $Res Function(_TcgPlayer) then) =
      __$TcgPlayerCopyWithImpl<$Res>;
  @override
  $Res call({String url, String updatedAt, Prices prices});

  @override
  $PricesCopyWith<$Res> get prices;
}

/// @nodoc
class __$TcgPlayerCopyWithImpl<$Res> extends _$TcgPlayerCopyWithImpl<$Res>
    implements _$TcgPlayerCopyWith<$Res> {
  __$TcgPlayerCopyWithImpl(_TcgPlayer _value, $Res Function(_TcgPlayer) _then)
      : super(_value, (v) => _then(v as _TcgPlayer));

  @override
  _TcgPlayer get _value => super._value as _TcgPlayer;

  @override
  $Res call({
    Object? url = freezed,
    Object? updatedAt = freezed,
    Object? prices = freezed,
  }) {
    return _then(_TcgPlayer(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TcgPlayer implements _TcgPlayer {
  const _$_TcgPlayer(
      {required this.url, required this.updatedAt, required this.prices});

  factory _$_TcgPlayer.fromJson(Map<String, dynamic> json) =>
      _$$_TcgPlayerFromJson(json);

  @override
  final String url;
  @override
  final String updatedAt;
  @override
  final Prices prices;

  @override
  String toString() {
    return 'TcgPlayer(url: $url, updatedAt: $updatedAt, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TcgPlayer &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.prices, prices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(prices));

  @JsonKey(ignore: true)
  @override
  _$TcgPlayerCopyWith<_TcgPlayer> get copyWith =>
      __$TcgPlayerCopyWithImpl<_TcgPlayer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TcgPlayerToJson(this);
  }
}

abstract class _TcgPlayer implements TcgPlayer {
  const factory _TcgPlayer(
      {required String url,
      required String updatedAt,
      required Prices prices}) = _$_TcgPlayer;

  factory _TcgPlayer.fromJson(Map<String, dynamic> json) =
      _$_TcgPlayer.fromJson;

  @override
  String get url;
  @override
  String get updatedAt;
  @override
  Prices get prices;
  @override
  @JsonKey(ignore: true)
  _$TcgPlayerCopyWith<_TcgPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

Prices _$PricesFromJson(Map<String, dynamic> json) {
  return _Prices.fromJson(json);
}

/// @nodoc
class _$PricesTearOff {
  const _$PricesTearOff();

  _Prices call({required Normal normal, required Normal reverseHolofoil}) {
    return _Prices(
      normal: normal,
      reverseHolofoil: reverseHolofoil,
    );
  }

  Prices fromJson(Map<String, Object?> json) {
    return Prices.fromJson(json);
  }
}

/// @nodoc
const $Prices = _$PricesTearOff();

/// @nodoc
mixin _$Prices {
  Normal get normal => throw _privateConstructorUsedError;
  Normal get reverseHolofoil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricesCopyWith<Prices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesCopyWith<$Res> {
  factory $PricesCopyWith(Prices value, $Res Function(Prices) then) =
      _$PricesCopyWithImpl<$Res>;
  $Res call({Normal normal, Normal reverseHolofoil});

  $NormalCopyWith<$Res> get normal;
  $NormalCopyWith<$Res> get reverseHolofoil;
}

/// @nodoc
class _$PricesCopyWithImpl<$Res> implements $PricesCopyWith<$Res> {
  _$PricesCopyWithImpl(this._value, this._then);

  final Prices _value;
  // ignore: unused_field
  final $Res Function(Prices) _then;

  @override
  $Res call({
    Object? normal = freezed,
    Object? reverseHolofoil = freezed,
  }) {
    return _then(_value.copyWith(
      normal: normal == freezed
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as Normal,
      reverseHolofoil: reverseHolofoil == freezed
          ? _value.reverseHolofoil
          : reverseHolofoil // ignore: cast_nullable_to_non_nullable
              as Normal,
    ));
  }

  @override
  $NormalCopyWith<$Res> get normal {
    return $NormalCopyWith<$Res>(_value.normal, (value) {
      return _then(_value.copyWith(normal: value));
    });
  }

  @override
  $NormalCopyWith<$Res> get reverseHolofoil {
    return $NormalCopyWith<$Res>(_value.reverseHolofoil, (value) {
      return _then(_value.copyWith(reverseHolofoil: value));
    });
  }
}

/// @nodoc
abstract class _$PricesCopyWith<$Res> implements $PricesCopyWith<$Res> {
  factory _$PricesCopyWith(_Prices value, $Res Function(_Prices) then) =
      __$PricesCopyWithImpl<$Res>;
  @override
  $Res call({Normal normal, Normal reverseHolofoil});

  @override
  $NormalCopyWith<$Res> get normal;
  @override
  $NormalCopyWith<$Res> get reverseHolofoil;
}

/// @nodoc
class __$PricesCopyWithImpl<$Res> extends _$PricesCopyWithImpl<$Res>
    implements _$PricesCopyWith<$Res> {
  __$PricesCopyWithImpl(_Prices _value, $Res Function(_Prices) _then)
      : super(_value, (v) => _then(v as _Prices));

  @override
  _Prices get _value => super._value as _Prices;

  @override
  $Res call({
    Object? normal = freezed,
    Object? reverseHolofoil = freezed,
  }) {
    return _then(_Prices(
      normal: normal == freezed
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as Normal,
      reverseHolofoil: reverseHolofoil == freezed
          ? _value.reverseHolofoil
          : reverseHolofoil // ignore: cast_nullable_to_non_nullable
              as Normal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Prices implements _Prices {
  const _$_Prices({required this.normal, required this.reverseHolofoil});

  factory _$_Prices.fromJson(Map<String, dynamic> json) =>
      _$$_PricesFromJson(json);

  @override
  final Normal normal;
  @override
  final Normal reverseHolofoil;

  @override
  String toString() {
    return 'Prices(normal: $normal, reverseHolofoil: $reverseHolofoil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Prices &&
            const DeepCollectionEquality().equals(other.normal, normal) &&
            const DeepCollectionEquality()
                .equals(other.reverseHolofoil, reverseHolofoil));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(normal),
      const DeepCollectionEquality().hash(reverseHolofoil));

  @JsonKey(ignore: true)
  @override
  _$PricesCopyWith<_Prices> get copyWith =>
      __$PricesCopyWithImpl<_Prices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricesToJson(this);
  }
}

abstract class _Prices implements Prices {
  const factory _Prices(
      {required Normal normal, required Normal reverseHolofoil}) = _$_Prices;

  factory _Prices.fromJson(Map<String, dynamic> json) = _$_Prices.fromJson;

  @override
  Normal get normal;
  @override
  Normal get reverseHolofoil;
  @override
  @JsonKey(ignore: true)
  _$PricesCopyWith<_Prices> get copyWith => throw _privateConstructorUsedError;
}

Normal _$NormalFromJson(Map<String, dynamic> json) {
  return _Normal.fromJson(json);
}

/// @nodoc
class _$NormalTearOff {
  const _$NormalTearOff();

  _Normal call(
      {required double low,
      required double mid,
      required double high,
      required double market,
      required double directLow}) {
    return _Normal(
      low: low,
      mid: mid,
      high: high,
      market: market,
      directLow: directLow,
    );
  }

  Normal fromJson(Map<String, Object?> json) {
    return Normal.fromJson(json);
  }
}

/// @nodoc
const $Normal = _$NormalTearOff();

/// @nodoc
mixin _$Normal {
  double get low => throw _privateConstructorUsedError;
  double get mid => throw _privateConstructorUsedError;
  double get high => throw _privateConstructorUsedError;
  double get market => throw _privateConstructorUsedError;
  double get directLow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NormalCopyWith<Normal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NormalCopyWith<$Res> {
  factory $NormalCopyWith(Normal value, $Res Function(Normal) then) =
      _$NormalCopyWithImpl<$Res>;
  $Res call(
      {double low, double mid, double high, double market, double directLow});
}

/// @nodoc
class _$NormalCopyWithImpl<$Res> implements $NormalCopyWith<$Res> {
  _$NormalCopyWithImpl(this._value, this._then);

  final Normal _value;
  // ignore: unused_field
  final $Res Function(Normal) _then;

  @override
  $Res call({
    Object? low = freezed,
    Object? mid = freezed,
    Object? high = freezed,
    Object? market = freezed,
    Object? directLow = freezed,
  }) {
    return _then(_value.copyWith(
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      mid: mid == freezed
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as double,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as double,
      directLow: directLow == freezed
          ? _value.directLow
          : directLow // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$NormalCopyWith<$Res> implements $NormalCopyWith<$Res> {
  factory _$NormalCopyWith(_Normal value, $Res Function(_Normal) then) =
      __$NormalCopyWithImpl<$Res>;
  @override
  $Res call(
      {double low, double mid, double high, double market, double directLow});
}

/// @nodoc
class __$NormalCopyWithImpl<$Res> extends _$NormalCopyWithImpl<$Res>
    implements _$NormalCopyWith<$Res> {
  __$NormalCopyWithImpl(_Normal _value, $Res Function(_Normal) _then)
      : super(_value, (v) => _then(v as _Normal));

  @override
  _Normal get _value => super._value as _Normal;

  @override
  $Res call({
    Object? low = freezed,
    Object? mid = freezed,
    Object? high = freezed,
    Object? market = freezed,
    Object? directLow = freezed,
  }) {
    return _then(_Normal(
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      mid: mid == freezed
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as double,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as double,
      directLow: directLow == freezed
          ? _value.directLow
          : directLow // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Normal implements _Normal {
  const _$_Normal(
      {required this.low,
      required this.mid,
      required this.high,
      required this.market,
      required this.directLow});

  factory _$_Normal.fromJson(Map<String, dynamic> json) =>
      _$$_NormalFromJson(json);

  @override
  final double low;
  @override
  final double mid;
  @override
  final double high;
  @override
  final double market;
  @override
  final double directLow;

  @override
  String toString() {
    return 'Normal(low: $low, mid: $mid, high: $high, market: $market, directLow: $directLow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Normal &&
            const DeepCollectionEquality().equals(other.low, low) &&
            const DeepCollectionEquality().equals(other.mid, mid) &&
            const DeepCollectionEquality().equals(other.high, high) &&
            const DeepCollectionEquality().equals(other.market, market) &&
            const DeepCollectionEquality().equals(other.directLow, directLow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(low),
      const DeepCollectionEquality().hash(mid),
      const DeepCollectionEquality().hash(high),
      const DeepCollectionEquality().hash(market),
      const DeepCollectionEquality().hash(directLow));

  @JsonKey(ignore: true)
  @override
  _$NormalCopyWith<_Normal> get copyWith =>
      __$NormalCopyWithImpl<_Normal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NormalToJson(this);
  }
}

abstract class _Normal implements Normal {
  const factory _Normal(
      {required double low,
      required double mid,
      required double high,
      required double market,
      required double directLow}) = _$_Normal;

  factory _Normal.fromJson(Map<String, dynamic> json) = _$_Normal.fromJson;

  @override
  double get low;
  @override
  double get mid;
  @override
  double get high;
  @override
  double get market;
  @override
  double get directLow;
  @override
  @JsonKey(ignore: true)
  _$NormalCopyWith<_Normal> get copyWith => throw _privateConstructorUsedError;
}

Weakness _$WeaknessFromJson(Map<String, dynamic> json) {
  return _Weakness.fromJson(json);
}

/// @nodoc
class _$WeaknessTearOff {
  const _$WeaknessTearOff();

  _Weakness call({required String type, required String value}) {
    return _Weakness(
      type: type,
      value: value,
    );
  }

  Weakness fromJson(Map<String, Object?> json) {
    return Weakness.fromJson(json);
  }
}

/// @nodoc
const $Weakness = _$WeaknessTearOff();

/// @nodoc
mixin _$Weakness {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaknessCopyWith<Weakness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaknessCopyWith<$Res> {
  factory $WeaknessCopyWith(Weakness value, $Res Function(Weakness) then) =
      _$WeaknessCopyWithImpl<$Res>;
  $Res call({String type, String value});
}

/// @nodoc
class _$WeaknessCopyWithImpl<$Res> implements $WeaknessCopyWith<$Res> {
  _$WeaknessCopyWithImpl(this._value, this._then);

  final Weakness _value;
  // ignore: unused_field
  final $Res Function(Weakness) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeaknessCopyWith<$Res> implements $WeaknessCopyWith<$Res> {
  factory _$WeaknessCopyWith(_Weakness value, $Res Function(_Weakness) then) =
      __$WeaknessCopyWithImpl<$Res>;
  @override
  $Res call({String type, String value});
}

/// @nodoc
class __$WeaknessCopyWithImpl<$Res> extends _$WeaknessCopyWithImpl<$Res>
    implements _$WeaknessCopyWith<$Res> {
  __$WeaknessCopyWithImpl(_Weakness _value, $Res Function(_Weakness) _then)
      : super(_value, (v) => _then(v as _Weakness));

  @override
  _Weakness get _value => super._value as _Weakness;

  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_Weakness(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weakness implements _Weakness {
  const _$_Weakness({required this.type, required this.value});

  factory _$_Weakness.fromJson(Map<String, dynamic> json) =>
      _$$_WeaknessFromJson(json);

  @override
  final String type;
  @override
  final String value;

  @override
  String toString() {
    return 'Weakness(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weakness &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$WeaknessCopyWith<_Weakness> get copyWith =>
      __$WeaknessCopyWithImpl<_Weakness>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaknessToJson(this);
  }
}

abstract class _Weakness implements Weakness {
  const factory _Weakness({required String type, required String value}) =
      _$_Weakness;

  factory _Weakness.fromJson(Map<String, dynamic> json) = _$_Weakness.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$WeaknessCopyWith<_Weakness> get copyWith =>
      throw _privateConstructorUsedError;
}
