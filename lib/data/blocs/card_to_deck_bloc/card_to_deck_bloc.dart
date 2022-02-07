import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/db/pokemon_db.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';

part 'card_to_deck_bloc.freezed.dart';

@freezed
class CardToDeckEvent with _$CardToDeckEvent {
  const CardToDeckEvent._();

  const factory CardToDeckEvent.add({CardDatum? cardDatum, int? deckId}) =
      _AddCardToDeckEvent;

  const factory CardToDeckEvent.remove({String? cardId, int? deckId}) =
      _RemoveCardToDeckEvent;
}

@freezed
class CardToDeckState with _$CardToDeckState {
  const CardToDeckState._();

  const factory CardToDeckState.added() = _AddedCardToDeckState;

  const factory CardToDeckState.removed() = _RemovedCardToDeckState;
}

class CardToDeckBloc extends Bloc<CardToDeckEvent, CardToDeckState> {
  CardToDeckBloc() : super(const _RemovedCardToDeckState()) {
    on<CardToDeckEvent>((event, emit) => event.map(
          add: (event) => _add(event, emit),
          remove: (event) => _remove(event, emit),
        ));
  }

  FutureOr<void> _add(
    _AddCardToDeckEvent event,
    Emitter<CardToDeckState> emit,
  ) async {
    final card = event.cardDatum!;
    final deckId = event.deckId!;
    PokemonDB.instance.addCard(card);
    PokemonDB.instance.addCardToDeck(event.cardDatum!.id, deckId);
    emit(const CardToDeckState.added());
  }

  FutureOr<void> _remove(
    _RemoveCardToDeckEvent event,
    Emitter<CardToDeckState> emit,
  ) async {
    final remove = await PokemonDB.instance
        .removeCardFromDeck(event.cardId!, event.deckId!);
    if (remove) {
      emit(const CardToDeckState.removed());
      emit(const CardToDeckState.added());
    }
  }
}
