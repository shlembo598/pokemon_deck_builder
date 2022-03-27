import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:l/l.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';

import '../../db/db_models/card_db_model.dart';
import '../../db/pokemon_db.dart';
import '../../utils/constants.dart';

part 'deck_statistics_bloc.freezed.dart';

@freezed
class DeckStatisticsEvent with _$DeckStatisticsEvent {
  const DeckStatisticsEvent._();

  const factory DeckStatisticsEvent.create(
    int deckId,
  ) = _CreateDeckStatisticsEvent;
}

@freezed
class DeckStatisticsState with _$DeckStatisticsState {
  const DeckStatisticsState._();

  const factory DeckStatisticsState.initial() = _InitialDeckStatisticsState;

  const factory DeckStatisticsState.loading() = _LoadingDeckStatisticsState;

  const factory DeckStatisticsState.loaded({
    List<TypesData>? supertypesData,
    List<TypesData>? typesData,
    int? totalCards,
    double? totalDeckPrice,
  }) = _LoadedDeckStatisticsState;
}

class DeckStatisticsBloc
    extends Bloc<DeckStatisticsEvent, DeckStatisticsState> {
  DeckStatisticsBloc() : super(const _InitialDeckStatisticsState()) {
    on<DeckStatisticsEvent>(
      (event, emitter) => event.map<Future<void>>(
        create: (event) => _create(event, emitter),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  Future<void> _create(
    _CreateDeckStatisticsEvent event,
    Emitter<DeckStatisticsState> emitter,
  ) async {
    int deckId = event.deckId;
    emitter(const DeckStatisticsState.loading());
    List<CardDBModel> cards = [];
    try {
      cards = await PokemonDB.instance.readCardsDeck(deckId);
      l.vvvvvv(cards.length);
    } catch (e) {
      l.v6('No cards in the deck');
    }
    final superTypesData = _getSuperTypesStatistic(cards);
    final typesData = _getTypesStatistic(cards);
    final int totalCards = cards.length;
    final double totalDeckPrice = _getDeckTotalPrice(cards);

    emitter(DeckStatisticsState.loaded(
      supertypesData: superTypesData,
      typesData: typesData,
      totalCards: totalCards,
      totalDeckPrice: totalDeckPrice,
    ));
  }

  List<TypesData> _getSuperTypesStatistic(List<CardDBModel> cards) {
    Map<String, int> superTypes = {};
    List<TypesData> superTypesData = [];
    for (String superType in pokemonSuperTypes) {
      superTypes[superType] = 0;
    }
    for (var type in superTypes.entries) {
      for (CardDBModel card in cards) {
        CardDatum cardData = CardDatum.fromJson(jsonDecode(card.cardData!));
        String cardSuperType = cardData.supertype.toString().toLowerCase();
        if (type.key == cardSuperType) {
          int count = superTypes[type.key]!;
          superTypes[type.key] = count + 1;
        }
      }
    }
    for (var type in superTypes.entries) {
      var cardType = TypesData(type: type.key, count: type.value);
      superTypesData.add(cardType);
    }

    return superTypesData;
  }

  List<TypesData> _getTypesStatistic(List<CardDBModel> cards) {
    Map<String, int> types = {};
    List<TypesData> typesData = [];
    for (String type in pokemonTypes) {
      types[type] = 0;
    }
    for (var type in types.entries) {
      for (CardDBModel card in cards) {
        CardDatum cardData = CardDatum.fromJson(jsonDecode(card.cardData!));
        String cardType = cardData.types.toString().toLowerCase();
        if (cardType.contains(type.key)) {
          int count = types[type.key]!;
          types[type.key] = count + 1;
        }
      }
    }
    types.removeWhere((element, value) => value == 0.0);
    for (var type in types.entries) {
      var cardType = TypesData(type: type.key, count: type.value);
      typesData.add(cardType);
    }

    return typesData;
  }

  double _getDeckTotalPrice(List<CardDBModel> cards) {
    double totalPrice = 0.0;

    for (CardDBModel card in cards) {
      CardDatum cardData = CardDatum.fromJson(jsonDecode(card.cardData!));
      final double? cardMarketPrice =
          cardData.cardmarket?.prices!['averageSellPrice'];
      final double? tcgPlayerNormalPrice =
          cardData.tcgplayer?.prices?.normal?.market;
      final double? tcgPlayerHoloPrice =
          cardData.tcgplayer?.prices?.holofoil?.market;
      if (cardMarketPrice != null) {
        totalPrice = totalPrice + cardMarketPrice;
      } else if (tcgPlayerNormalPrice != null) {
        totalPrice = totalPrice + tcgPlayerNormalPrice;
      } else if (tcgPlayerHoloPrice != null) {
        totalPrice = totalPrice + tcgPlayerHoloPrice;
      }
    }

    return totalPrice;
  }
}

@freezed
class TypesData with _$TypesData {
  const factory TypesData({
    @required String? type,
    @required int? count,
  }) = _TypesData;
}
