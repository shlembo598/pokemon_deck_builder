import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/repositories/cards_repository.dart';

part 'card_list_bloc.freezed.dart';

@freezed
class CardListEvent with _$CardListEvent {
  const CardListEvent._();

  const factory CardListEvent.create(
    String setId,
  ) = _CreateCardListEvent;

  const factory CardListEvent.fetch() = _FetchCardListEvent;

  const factory CardListEvent.showAsList(
    bool asList,
  ) = _ShowAsListListEvent;
}

@freezed
class CardListState with _$CardListState {
  const CardListState._();

  CardListContainer? get container => maybeWhen<CardListContainer?>(
        orElse: () => null,
        loaded: (container, _) => container,
      );

  const factory CardListState.initial(CardListContainer? cardListContainer) =
      _InitialCardListState;

  const factory CardListState.loading(CardListContainer? cardListContainer) =
      _LoadingCardListState;

  const factory CardListState.loaded(
    CardListContainer? cardListContainer,
    bool hasReachedMax,
  ) = _LoadedCardListState;

  const factory CardListState.error(CardListContainer? cardListContainer) =
      _ErrorCardListState;
}

class CardListBloc extends Bloc<CardListEvent, CardListState> {
  final CardsRepository cardsRepository;

  CardListBloc(this.cardsRepository)
      : super(const _InitialCardListState(null)) {
    on<CardListEvent>((event, emit) => event.map(
          create: (event) => _create(event, emit),
          fetch: (event) => _fetch(event, emit),
          showAsList: (event) => _showAsList(event, emit),
        ));
  }

  FutureOr<void> _showAsList(
    _ShowAsListListEvent event,
    Emitter<CardListState> emit,
  ) {
    if (state.cardListContainer != null) {
      final container = state.cardListContainer;
      emit(CardListState.loaded(
        container?.copyWith(showAsList: event.asList),
        false,
      ));
    }
  }

  FutureOr<void> _create(
    _CreateCardListEvent event,
    Emitter<CardListState> emit,
  ) async {
    final CardListContainer container = CardListContainer(setId: event.setId);
    try {
      emit(CardListState.loading(state.container));
      final result = await cardsRepository
          .getCardsBySetId(event.setId)
          .timeout(const Duration(seconds: 5));
      emit(CardListState.loaded(
        container.copyWith(cards: result),
        false,
      ));
    } on TimeoutException {
      emit(CardListState.error(container));
    } on Object {
      emit(CardListState.error(container));
      rethrow;
    }
  }

  FutureOr<void> _fetch(
    _FetchCardListEvent event,
    Emitter<CardListState> emit,
  ) async {
    if (state.cardListContainer != null) {
      final container = state.cardListContainer;
      final int nextPage = container!.currentPage + 1;
      final cards = container.cards;
      try {
        final result = await cardsRepository
            .getCardsBySetId(container.setId, nextPage)
            .timeout(const Duration(seconds: 5));
        if (result.isEmpty) {
          emit(CardListState.loaded(container, true));
        } else {
          cards.addAll(result);
          emit(CardListState.loaded(
            container.copyWith(cards: cards, currentPage: nextPage),
            false,
          ));
        }
      } on TimeoutException {
        emit(CardListState.error(container));
      } on Object {
        emit(CardListState.error(container));
        rethrow;
      }
    }
  }
}

@freezed
class CardListContainer with _$CardListContainer {
  const factory CardListContainer({
    @Default('sw1') String setId,
    @Default([]) List<CardDatum> cards,
    @Default(1) int currentPage,
    @Default(false) bool showAsList,
  }) = _CardListContainer;
}
