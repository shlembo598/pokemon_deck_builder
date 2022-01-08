import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/repositories/cards_repository.dart';

part 'card_search_bloc.freezed.dart';

@freezed
class CardSearchEvent with _$CardSearchEvent {
  const CardSearchEvent._();

  const factory CardSearchEvent.create() = CreateCardSearchEvent;

  const factory CardSearchEvent.find(String parameter) = FindCardSearchEvent;

  const factory CardSearchEvent.fetch() = FetchCardSearchEvent;
}

@freezed
class CardSearchState with _$CardSearchState {
  const CardSearchState._();

  const factory CardSearchState.initial([
    SearchCardContainer? searchCardContainer,
  ]) = InitialCardSearchState;

  const factory CardSearchState.loading([
    SearchCardContainer? searchCardContainer,
  ]) = LoadingCardSearchState;

  const factory CardSearchState.loaded([
    SearchCardContainer? searchCardContainer,
    @Default(false) bool hasReachedMax,
  ]) = LoadedCardSearchState;

  const factory CardSearchState.error([
    SearchCardContainer? searchCardContainer,
  ]) = ErrorCardSearchState;
}

class CardSearchBloc extends Bloc<CardSearchEvent, CardSearchState> {
  final CardsRepository cardsRepository = CardsRepository();

  CardSearchBloc() : super(const InitialCardSearchState()) {
    on<CardSearchEvent>((event, emit) => event.map(
          create: (event) => _create(event, emit),
          find: (event) => _find(event, emit),
          fetch: (event) => _fetch(event, emit),
        ));
  }

  FutureOr<void> _create(
    CreateCardSearchEvent event,
    Emitter<CardSearchState> emit,
  ) {
    emit(
      const CardSearchState.initial(),
    );
  }

  FutureOr<void> _find(
    FindCardSearchEvent event,
    Emitter<CardSearchState> emit,
  ) async {
    const SearchCardContainer container = SearchCardContainer();
    try {
      emit(const CardSearchState.loading());
      final result = await cardsRepository
          .searchCard(event.parameter)
          .timeout(const Duration(seconds: 5));
      emit(CardSearchState.loaded(
        container.copyWith(cards: result, searchParameter: event.parameter),
        false,
      ));
    } on TimeoutException {
      emit(const CardSearchState.error(container));
    } on dynamic catch (e) {
      emit(const CardSearchState.error(container));
      log(e.toString());
      rethrow;
    }
  }

  FutureOr<void> _fetch(
    FetchCardSearchEvent event,
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
        if (result.isEmpty) {
          emit(CardSearchState.loaded(container, true));
        } else {
          cards.addAll(result);
          emit(CardSearchState.loaded(
            container.copyWith(cards: cards, currentPage: nextPage),
            false,
          ));
        }
      } on TimeoutException {
        emit(CardSearchState.error(container));
      } on dynamic catch (e) {
        emit(CardSearchState.error(container));
        log(e.toString());
        rethrow;
      }
    }
  }
}

@freezed
class SearchCardContainer with _$SearchCardContainer {
  const factory SearchCardContainer({
    @Default([]) List<CardDatum> cards,
    @Default(1) int currentPage,
    @Default('') String searchParameter,
  }) = _SearchCardContainer;
}
