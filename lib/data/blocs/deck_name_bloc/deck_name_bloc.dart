import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck_name_bloc.freezed.dart';

@freezed
class DeckNameEvent with _$DeckNameEvent {
  const DeckNameEvent._();

  const factory DeckNameEvent.create() = _CreateDeckNameEvent;

  const factory DeckNameEvent.update(
    String deckName,
  ) = _UpdateDeckNameEvent;
}

@freezed
class DeckNameState with _$DeckNameState {
  const DeckNameState._();

  const factory DeckNameState.initial() = _InitialDeckNameState;

  const factory DeckNameState.updated(
    String deckName,
  ) = _UpdatedlDeckNameState;
}

class DeckNameBloc extends Bloc<DeckNameEvent, DeckNameState> {
  DeckNameBloc() : super(const _InitialDeckNameState()) {
    on<DeckNameEvent>(
      (event, emitter) => event.map<Future<void>>(
        create: (event) => _create(event, emitter),
        update: (event) => _update(event, emitter),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  Future<void> _create(
    _CreateDeckNameEvent event,
    Emitter<DeckNameState> emitter,
  ) async {
    emitter(const DeckNameState.initial());
  }

  Future<void> _update(
    _UpdateDeckNameEvent event,
    Emitter<DeckNameState> emitter,
  ) async {
    emitter(DeckNameState.updated(event.deckName));
  }
}
