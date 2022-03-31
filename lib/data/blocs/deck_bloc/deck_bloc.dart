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

  const factory DeckEvent.read() = _ReadDeckEvent;

  const factory DeckEvent.update(
    int deckId,
    String newDeckName,
  ) = _UpdateDeckEvent;

  const factory DeckEvent.delete(
    int id,
  ) = _DeleteDeckEvent;
}

@freezed
class DeckState with _$DeckState {
  const DeckState._();

  const factory DeckState.initial([
    List<DeckDBModel>? deckList,
  ]) = _InitialDeckState;

  const factory DeckState.loaded([
    List<DeckDBModel>? deckList,
  ]) = _LoadedDeckState;

  const factory DeckState.updated(
    String newDeckName,
  ) = _UpdatedDeckState;
}

class DeckBloc extends Bloc<DeckEvent, DeckState> {
  DeckBloc() : super(const _InitialDeckState()) {
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
    await PokemonDB.instance.createDeck(event.name);
    add(const DeckEvent.read());
  }

  FutureOr<void> _read(_ReadDeckEvent event, Emitter<DeckState> emit) async {
    List<DeckDBModel> decks = [];
    decks = await PokemonDB.instance.readAllDecks();
    emit(DeckState.loaded(decks));
  }

  FutureOr<void> _update(
    _UpdateDeckEvent event,
    Emitter<DeckState> emit,
  ) async {
    String deckName = event.newDeckName;
    await PokemonDB.instance.renameDeck(
      event.deckId,
      deckName,
    );
    emit(DeckState.updated(deckName));
  }

  FutureOr<void> _delete(
    _DeleteDeckEvent event,
    Emitter<DeckState> emit,
  ) async {
    await PokemonDB.instance.deleteDeck(event.id);
    // await PokemonDB.instance.readCardsDeck(event.id);
    add(const DeckEvent.read());
  }
}
