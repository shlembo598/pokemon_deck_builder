import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/models/sets.dart';
import 'package:pokemon_deck_builder/data/repositories/cards_repository.dart';

part 'sets_bloc.freezed.dart';

@freezed
class SetsEvent with _$SetsEvent {
  const SetsEvent._();

  const factory SetsEvent.initial() = InitialSetsEvent;

  const factory SetsEvent.read() = ReadSetsEvent;

  const factory SetsEvent.update() = UpdateSetsEvent;

  const factory SetsEvent.delete() = DeleteSetsEvent;
}

@freezed
class SetsState with _$SetsState {
  const SetsState._();

  const factory SetsState.initial() = InitialSetsState;
  const factory SetsState.loaded(final List<Datum> sets) = LoadedSetsState;
}

class SetsBloc extends Bloc<SetsEvent, SetsState> {
  final CardsRepository cardsRepository = CardsRepository();
  SetsBloc() : super(const InitialSetsState()) {
    on<InitialSetsEvent>(_initialize, transformer: sequential());
    on<ReadSetsEvent>(_read, transformer: sequential());
    on<UpdateSetsEvent>(_update, transformer: sequential());
    on<DeleteSetsEvent>(_delete, transformer: sequential());
  }
  FutureOr<void> _initialize(
    InitialSetsEvent event,
    Emitter<SetsState> emit,
  ) async {
    emit(const SetsState.initial());
  }

  FutureOr<void> _read(ReadSetsEvent event, Emitter<SetsState> emit) async {
    List<Datum> setList = <Datum>[];
    try {
      final result = await cardsRepository.getSets();
      if (result?.statusCode == 200) {
        setList = Sets.fromJson(result?.data).data.toList();
      }
      log('${setList.length}');
      emit(SetsState.loaded(setList));
    } catch (e) {
      log(e.toString());
    }
  }

  FutureOr<void> _update(
    UpdateSetsEvent event,
    Emitter<SetsState> emit,
  ) {}

  FutureOr<void> _delete(
    DeleteSetsEvent event,
    Emitter<SetsState> emit,
  ) {}
}
