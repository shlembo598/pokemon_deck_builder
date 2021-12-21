import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_bloc.freezed.dart';

@freezed
class CardEvent with _$CardEvent {
  const CardEvent._();

  const factory CardEvent.initial() = InitialCardEvent;

  const factory CardEvent.read() = ReadCardEvent;

  const factory CardEvent.update() = UpdateCardEvent;

  const factory CardEvent.delete() = DeleteCardEvent;
}

@freezed
class CardState with _$CardState {
  const CardState._();

  const factory CardState.initial() = InitialCardState;
}

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(const InitialCardState()) {
    on<InitialCardEvent>(_initialize, transformer: sequential());
    on<ReadCardEvent>(_read, transformer: sequential());
    on<UpdateCardEvent>(_update, transformer: sequential());
    on<DeleteCardEvent>(_delete, transformer: sequential());
  }

  FutureOr<void> _initialize(
    InitialCardEvent event,
    Emitter<CardState> emit,
  ) {
    emit(const InitialCardState());
  }

  FutureOr<void> _read(ReadCardEvent event, Emitter<CardState> emit) {}

  FutureOr<void> _update(
    UpdateCardEvent event,
    Emitter<CardState> emit,
  ) {}

  FutureOr<void> _delete(
    DeleteCardEvent event,
    Emitter<CardState> emit,
  ) {}
}
