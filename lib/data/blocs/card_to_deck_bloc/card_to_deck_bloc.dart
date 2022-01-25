import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';

part 'card_to_deck_bloc.freezed.dart';

@freezed
class CardToDeckEvent with _$CardToDeckEvent {
  const CardToDeckEvent._();

  const factory CardToDeckEvent.add({CardDatum? cardDatum}) =
      _AddCardToDeckEvent;

  const factory CardToDeckEvent.remove({CardDatum? cardDatum}) =
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
    // PokemonDB.instance.addCard(event.cardDatum!);
    emit(CardToDeckState.added());
  }

  FutureOr<void> _remove(
    _RemoveCardToDeckEvent event,
    Emitter<CardToDeckState> emit,
  ) async {
    // final findedCard = await PokemonDB.instance.readCard(event.cardDatum!.id);
    // log(findedCard.imageSmall.length.toString());
    emit(CardToDeckState.removed());
  }
}
