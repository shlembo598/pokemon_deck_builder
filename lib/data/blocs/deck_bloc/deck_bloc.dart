import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/db/db_models/deck_db_model.dart';
import 'package:pokemon_deck_builder/data/db/pokemon_db.dart';

part 'deck_bloc.freezed.dart';

@freezed
class DeckEvent with _$DeckEvent {
  const DeckEvent._();

  const factory DeckEvent.create(
    String name,
  ) = CreateDeckEvent;

  const factory DeckEvent.read() = ReadDeckEvent;

  const factory DeckEvent.update() = UpdateDeckEvent;

  const factory DeckEvent.delete(
    int id,
  ) = DeleteDeckEvent;
}

@freezed
class DeckState with _$DeckState {
  const DeckState._();

  const factory DeckState.initial([
    List<DeckDBModel>? deckList,
  ]) = InitialDeckState;

  const factory DeckState.loaded([
    List<DeckDBModel>? deckList,
  ]) = LoadedDeckState;
}

class DeckBloc extends Bloc<DeckEvent, DeckState> {
  DeckBloc() : super(const InitialDeckState()) {
    on<DeckEvent>((event, emit) => event.map(
          create: (event) => _create(event, emit),
          read: (event) => _read(event, emit),
          update: (event) => _update(event, emit),
          delete: (event) => _delete(event, emit),
        ));
  }

  FutureOr<void> _create(
    CreateDeckEvent event,
    Emitter<DeckState> emit,
  ) async {
    final newDeck = DeckDBModel(name: event.name);
    await PokemonDB.instance.createDeck(newDeck);
    add(const DeckEvent.read());
  }

  FutureOr<void> _read(ReadDeckEvent event, Emitter<DeckState> emit) async {
    List<DeckDBModel> decks = [];
    decks = await PokemonDB.instance.readAllDecks();
    emit(DeckState.loaded(decks));
  }

  FutureOr<void> _update(
    UpdateDeckEvent event,
    Emitter<DeckState> emit,
  ) {}

  FutureOr<void> _delete(
    DeleteDeckEvent event,
    Emitter<DeckState> emit,
  ) async {
    await PokemonDB.instance.deleteDeck(event.id);
    add(const DeckEvent.read());
  }
}
