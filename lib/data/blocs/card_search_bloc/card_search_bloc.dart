import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/models/search_card_container.dart';
import 'package:pokemon_deck_builder/data/repositories/cards_repository.dart';

part 'card_search_bloc.freezed.dart';

@freezed
class CardSearchEvent with _$CardSearchEvent {
  const CardSearchEvent._();

  const factory CardSearchEvent.create() = _CreateCardSearchEvent;

  const factory CardSearchEvent.find(String parameter) = _FindCardSearchEvent;

  const factory CardSearchEvent.fetch() = _FetchCardSearchEvent;

  const factory CardSearchEvent.showAsList(
    bool asList,
  ) = _ShowAsListSearchEvent;
}

@freezed
class CardSearchState with _$CardSearchState {
  const CardSearchState._();

  const factory CardSearchState.initial([
    SearchCardContainer? searchCardContainer,
  ]) = _InitialCardSearchState;

  const factory CardSearchState.loading([
    SearchCardContainer? searchCardContainer,
  ]) = _LoadingCardSearchState;

  const factory CardSearchState.loaded([
    SearchCardContainer? searchCardContainer,
    @Default(false) bool hasReachedMax,
  ]) = _LoadedCardSearchState;

  const factory CardSearchState.error([
    SearchCardContainer? searchCardContainer,
  ]) = _ErrorCardSearchState;
}

class CardSearchBloc extends Bloc<CardSearchEvent, CardSearchState> {
  final CardsRepository cardsRepository;

  CardSearchBloc(this.cardsRepository)
      : super(const _InitialCardSearchState()) {
    on<CardSearchEvent>((event, emit) => event.map(
          create: (event) => _create(event, emit),
          find: (event) => _find(event, emit),
          fetch: (event) => _fetch(event, emit),
          showAsList: (event) => _showAsList(event, emit),
        ));
  }

  FutureOr<void> _create(
    _CreateCardSearchEvent event,
    Emitter<CardSearchState> emit,
  ) {
    emit(
      const CardSearchState.initial(),
    );
  }

  FutureOr<void> _showAsList(
    _ShowAsListSearchEvent event,
    Emitter<CardSearchState> emit,
  ) {
    final container = state.searchCardContainer;
    emit(CardSearchState.loaded(
      container?.copyWith(showAsList: event.asList),
      false,
    ));
  }

  FutureOr<void> _find(
    _FindCardSearchEvent event,
    Emitter<CardSearchState> emit,
  ) async {
    try {
      emit(const CardSearchState.loading());
      final result = await cardsRepository
          .searchCard(event.parameter)
          .timeout(const Duration(seconds: 5));
      emit(CardSearchState.loaded(
        result.copyWith(searchParameter: event.parameter),
        false,
      ));
    } on TimeoutException {
      emit(const CardSearchState.error());
    } on Object {
      emit(const CardSearchState.error());
      rethrow;
    }
  }

  FutureOr<void> _fetch(
    _FetchCardSearchEvent event,
    Emitter<CardSearchState> emit,
  ) async {
    if (state.searchCardContainer != null) {
      final container = state.searchCardContainer;
      final int nextPage = container!.currentPage + 1;
      final cards = container.cards;
      try {
        final result = await cardsRepository
            .searchCard(container.searchParameter, nextPage)
            .timeout(const Duration(seconds: 5));
        if (result.cards.isEmpty) {
          emit(CardSearchState.loaded(container, true));
        } else {
          cards.addAll(result.cards);
          emit(CardSearchState.loaded(
            container.copyWith(cards: cards, currentPage: nextPage),
            false,
          ));
        }
      } on TimeoutException {
        emit(CardSearchState.error(container));
      } on Object {
        emit(CardSearchState.error(container));
        rethrow;
      }
    }
  }
}
