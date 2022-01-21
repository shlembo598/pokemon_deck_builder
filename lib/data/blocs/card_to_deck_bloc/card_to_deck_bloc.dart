import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_to_deck_bloc.freezed.dart';

@freezed
class CardToDeckEvent with _$CardToDeckEvent {
  const CardToDeckEvent._();

  const factory CardToDeckEvent.add() = AddCardToDeckEvent;

  const factory CardToDeckEvent.remove() = RemoveCardToDeckEvent;
}

@freezed
class CardToDeckState with _$CardToDeckState {
  const CardToDeckState._();

  const factory CardToDeckState.added() = AddedCardToDeckState;

  const factory CardToDeckState.removed() = RemovedCardToDeckState;
}

class CardToDeckBloc extends Bloc<CardToDeckEvent, CardToDeckState> {
  CardToDeckBloc() : super(const RemovedCardToDeckState()) {
    on<CardToDeckEvent>((event, emit) => event.map(
          add: (event) => _add(event, emit),
          remove: (event) => _remove(event, emit),
        ));
  }

  FutureOr<void> _add(
    AddCardToDeckEvent event,
    Emitter<CardToDeckState> emit,
  ) {
    emit(CardToDeckState.added());
  }

  FutureOr<void> _remove(
      RemoveCardToDeckEvent event, Emitter<CardToDeckState> emit) {
    emit(CardToDeckState.removed());
  }
}
