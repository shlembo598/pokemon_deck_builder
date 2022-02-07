import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/db/db_models/card_db_model.dart';
import 'package:pokemon_deck_builder/data/db/db_models/deck_db_model.dart';
import 'package:pokemon_deck_builder/data/db/pokemon_db.dart';

part 'deck_detail_bloc.freezed.dart';

@freezed
class DeckDetailEvent with _$DeckDetailEvent {
  const DeckDetailEvent._();

  const factory DeckDetailEvent.load(
    DeckDBModel deck,
  ) = _LoadDeckDetailEvent;

  const factory DeckDetailEvent.refresh(
    int deckId,
  ) = _RefreshDeckDetailEvent;

  const factory DeckDetailEvent.showAsList() = _ShowAsListDeckDetailEvent;
}

@freezed
class DeckDetailState with _$DeckDetailState {
  const DeckDetailState._();

  List<CardDBModel>? get cardDBList => maybeWhen<List<CardDBModel>?>(
        orElse: () => null,
        loaded: (cardDBList) => cardDBList,
      );

  const factory DeckDetailState.initial({
    List<CardDBModel>? cardsDBList,
  }) = _InitialDeckDetailState;

  const factory DeckDetailState.loading({
    List<CardDBModel>? cardsDBList,
  }) = _LoadingDeckDetailState;

  const factory DeckDetailState.loaded({
    List<CardDBModel>? cardsDBList,
  }) = _LoadedDeckDetailState;
}

class DeckDetailBloc extends Bloc<DeckDetailEvent, DeckDetailState> {
  DeckDetailBloc() : super(const _InitialDeckDetailState(cardsDBList: null)) {
    on<DeckDetailEvent>(
      (event, emitter) => event.map<Future<void>>(
        load: (event) => _load(event, emitter),
        showAsList: (event) => _showAsList(event, emitter),
        refresh: (event) => _refresh(event, emitter),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  Future<void> _load(
    _LoadDeckDetailEvent event,
    Emitter<DeckDetailState> emitter,
  ) async {
    int? deckId = event.deck.id;
    emitter(DeckDetailState.loading(cardsDBList: state.cardDBList));
    List<CardDBModel> cards = [];
    try {
      cards = await PokemonDB.instance.readCardsDeck(deckId!);
      emitter(DeckDetailState.loaded(cardsDBList: cards));
    } catch (e) {
      log('No cards in the deck');
    }
  }

  Future<void> _showAsList(
    _ShowAsListDeckDetailEvent event,
    Emitter<DeckDetailState> emitter,
  ) async {}

  _refresh(
    _RefreshDeckDetailEvent event,
    Emitter<DeckDetailState> emitter,
  ) async {
    int deckId = event.deckId;
    emitter(DeckDetailState.loading(cardsDBList: state.cardDBList));
    List<CardDBModel> cards = [];
    try {
      cards = await PokemonDB.instance.readCardsDeck(deckId);
      emitter(DeckDetailState.loaded(cardsDBList: cards));
    } catch (e) {
      log('No cards in the deck');
    }
  }
}
