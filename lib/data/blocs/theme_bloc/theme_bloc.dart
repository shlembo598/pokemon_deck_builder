import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc.freezed.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const ThemeEvent._();

  const factory ThemeEvent.initial() = InitialThemeEvent;

  const factory ThemeEvent.change(
    final ThemeData theme,
  ) = ChangeThemeEvent;
}

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState.initial() = InitialThemeState;

  const factory ThemeState.changed({
    required ThemeData appTheme,
  }) = ChangedThemeState;
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const InitialThemeState()) {
    on<InitialThemeEvent>(_initialize, transformer: sequential());
    on<ChangeThemeEvent>(_change, transformer: sequential());
  }

  void _initialize(
    InitialThemeEvent event,
    Emitter<ThemeState> emit,
  ) {
    emit(const ThemeState.initial());
  }

  void _change(
    ChangeThemeEvent event,
    Emitter<ThemeState> emit,
  ) {
    emit(ThemeState.changed(appTheme: event.theme));
  }
}
