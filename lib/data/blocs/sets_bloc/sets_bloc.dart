import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/data/models/sets.dart';
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
    List<Datum>? sets,
  ]) = InitialSetsState;

  const factory SetsState.loaded([
    List<Datum>? sets,
    @Default(false) bool hasReachedMax,
  ]) = LoadedSetsState;

  const factory SetsState.error([
    List<Datum>? sets,
  ]) = ErrorSetsState;
}

class SetsBloc extends Bloc<SetsEvent, SetsState> {
  final CardsRepository cardsRepository = CardsRepository();

  SetsBloc() : super(const InitialSetsState()) {
    on<SetsEvent>((event, emit) => event.map(
          initial: (event) => _initialize(event, emit),
          fetch: (event) => _fetch(event, emit),
        ));
  }

  FutureOr<void> _initialize(
    InitialSetsEvent event,
    Emitter<SetsState> emit,
  ) async {
    try {
      final result = await cardsRepository.getSets();
      emit(SetsState.loaded(result, false));
    } catch (e) {
      emit(const SetsState.error());
      log(e.toString());
    }
  }

  FutureOr<void> _fetch(FetchSetsEvent event, Emitter<SetsState> emit) async {
    try {
      int length = state.sets != null ? state.sets!.length : listSize;
      int page = length ~/ listSize + 1;
      final result = await cardsRepository.getSets(page);
      result.isEmpty
          ? emit(SetsState.loaded(state.sets, true))
          : emit(SetsState.loaded(
              [...?state.sets, ...result],
              false,
            ));
    } catch (e) {
      emit(const SetsState.error());
      log(e.toString());
    }
  }
}
