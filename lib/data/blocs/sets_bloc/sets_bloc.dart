import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/models/set.dart';
import 'package:pokemon_deck_builder/data/repositories/cards_repository.dart';

part 'sets_bloc.freezed.dart';

@freezed
class SetsEvent with _$SetsEvent {
  const SetsEvent._();

  const factory SetsEvent.initial() = InitialSetsEvent;

  const factory SetsEvent.fetch() = FetchSetsEvent;
}

@freezed
class SetsState with _$SetsState {
  const SetsState._();

  const factory SetsState.initial([
    SetListContainer? setListContainer,
  ]) = InitialSetsState;

  const factory SetsState.loaded([
    SetListContainer? setListContainer,
    @Default(false) bool hasReachedMax,
  ]) = LoadedSetsState;

  const factory SetsState.error([
    SetListContainer? setListContainer,
  ]) = ErrorSetsState;
}

class SetsBloc extends Bloc<SetsEvent, SetsState> {
  final CardsRepository cardsRepository = CardsRepository();

  SetsBloc() : super(const InitialSetsState()) {
    on<SetsEvent>((event, emit) => event.map(
          initial: (event) => _getInitialData(event, emit),
          fetch: (event) => _fetch(event, emit),
        ));
  }

  FutureOr<void> _getInitialData(
    InitialSetsEvent event,
    Emitter<SetsState> emit,
  ) async {
    try {
      final result =
          await cardsRepository.getSets().timeout(const Duration(seconds: 5));
      final SetListContainer container = SetListContainer(sets: result);
      emit(SetsState.loaded(
        container,
        false,
      ));
    } on TimeoutException {
      emit(const SetsState.error());
    } on dynamic catch (e) {
      emit(const SetsState.error());
      log(e.toString());
      rethrow;
    }
  }

  FutureOr<void> _fetch(FetchSetsEvent event, Emitter<SetsState> emit) async {
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
      } on dynamic catch (e) {
        emit(const SetsState.error());
        log(e.toString());
        rethrow;
      }
    }
  }
}

@freezed
class SetListContainer with _$SetListContainer {
  const factory SetListContainer({
    @Default([]) List<Datum> sets,
    @Default(1) int currentPage,
  }) = _SetListContainer;
}
