import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/data/repositories/cards_repository.dart';

part 'sets_bloc.freezed.dart';

@freezed
class SetsEvent with _$SetsEvent {
  const SetsEvent._();

  const factory SetsEvent.create() = _CreateSetsEvent;

  const factory SetsEvent.fetch() = _FetchSetsEvent;
}

@freezed
class SetsState with _$SetsState {
  const SetsState._();

  const factory SetsState.initial([
    SetListContainer? setListContainer,
  ]) = _InitialSetsState;

  const factory SetsState.loading([
    SetListContainer? setListContainer,
  ]) = _LoadingSetsState;

  const factory SetsState.loaded([
    SetListContainer? setListContainer,
    @Default(false) bool hasReachedMax,
  ]) = _LoadedSetsState;

  const factory SetsState.error([
    SetListContainer? setListContainer,
  ]) = _ErrorSetsState;
}

class SetsBloc extends Bloc<SetsEvent, SetsState> {
  final CardsRepository cardsRepository;

  SetsBloc(this.cardsRepository) : super(const _InitialSetsState()) {
    on<SetsEvent>((event, emit) => event.map(
          create: (event) => _getInitialData(event, emit),
          fetch: (event) => _fetch(event, emit),
        ));
  }

  FutureOr<void> _getInitialData(
    _CreateSetsEvent event,
    Emitter<SetsState> emit,
  ) async {
    try {
      emit(const SetsState.loading());
      final result =
          await cardsRepository.getSets().timeout(const Duration(seconds: 5));
      final SetListContainer container = SetListContainer(sets: result);
      emit(SetsState.loaded(
        container,
        false,
      ));
    } on TimeoutException {
      emit(const SetsState.error());
    } on Object {
      emit(const SetsState.error());
      rethrow;
    }
  }

  FutureOr<void> _fetch(_FetchSetsEvent event, Emitter<SetsState> emit) async {
    if (state.setListContainer != null) {
      final container = state.setListContainer;
      final int nextPage = container!.currentPage + 1;
      final sets = container.sets;
      try {
        final result = await cardsRepository
            .getSets(nextPage)
            .timeout(const Duration(seconds: 5));
        if (result.isEmpty) {
          emit(SetsState.loaded(container, true));
        } else {
          sets.addAll(result);
          emit(SetsState.loaded(
            container.copyWith(sets: sets, currentPage: nextPage),
            false,
          ));
        }
      } on TimeoutException {
        emit(const SetsState.error());
      } on Object {
        emit(const SetsState.error());
        rethrow;
      }
    }
  }
}

@freezed
class SetListContainer with _$SetListContainer {
  const factory SetListContainer({
    @Default([]) List<SetDatum> sets,
    @Default(1) int currentPage,
  }) = _SetListContainer;
}
