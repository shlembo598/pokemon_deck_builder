// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

  InitialThemeEvent initial() {
    return const InitialThemeEvent();
  }

  ChangeThemeEvent change(ThemeData theme) {
    return ChangeThemeEvent(
      theme,
    );
  }
}

/// @nodoc
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeData theme) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData theme)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData theme)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialThemeEvent value) initial,
    required TResult Function(ChangeThemeEvent value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialThemeEvent value)? initial,
    TResult Function(ChangeThemeEvent value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialThemeEvent value)? initial,
    TResult Function(ChangeThemeEvent value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;
}

/// @nodoc
abstract class $InitialThemeEventCopyWith<$Res> {
  factory $InitialThemeEventCopyWith(
          InitialThemeEvent value, $Res Function(InitialThemeEvent) then) =
      _$InitialThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialThemeEventCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res>
    implements $InitialThemeEventCopyWith<$Res> {
  _$InitialThemeEventCopyWithImpl(
      InitialThemeEvent _value, $Res Function(InitialThemeEvent) _then)
      : super(_value, (v) => _then(v as InitialThemeEvent));

  @override
  InitialThemeEvent get _value => super._value as InitialThemeEvent;
}

/// @nodoc

class _$InitialThemeEvent extends InitialThemeEvent {
  const _$InitialThemeEvent() : super._();

  @override
  String toString() {
    return 'ThemeEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialThemeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeData theme) change,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData theme)? change,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData theme)? change,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialThemeEvent value) initial,
    required TResult Function(ChangeThemeEvent value) change,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialThemeEvent value)? initial,
    TResult Function(ChangeThemeEvent value)? change,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialThemeEvent value)? initial,
    TResult Function(ChangeThemeEvent value)? change,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialThemeEvent extends ThemeEvent {
  const factory InitialThemeEvent() = _$InitialThemeEvent;
  const InitialThemeEvent._() : super._();
}

/// @nodoc
abstract class $ChangeThemeEventCopyWith<$Res> {
  factory $ChangeThemeEventCopyWith(
          ChangeThemeEvent value, $Res Function(ChangeThemeEvent) then) =
      _$ChangeThemeEventCopyWithImpl<$Res>;
  $Res call({ThemeData theme});
}

/// @nodoc
class _$ChangeThemeEventCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res>
    implements $ChangeThemeEventCopyWith<$Res> {
  _$ChangeThemeEventCopyWithImpl(
      ChangeThemeEvent _value, $Res Function(ChangeThemeEvent) _then)
      : super(_value, (v) => _then(v as ChangeThemeEvent));

  @override
  ChangeThemeEvent get _value => super._value as ChangeThemeEvent;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(ChangeThemeEvent(
      theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$ChangeThemeEvent extends ChangeThemeEvent {
  const _$ChangeThemeEvent(this.theme) : super._();

  @override
  final ThemeData theme;

  @override
  String toString() {
    return 'ThemeEvent.change(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeThemeEvent &&
            const DeepCollectionEquality().equals(other.theme, theme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(theme));

  @JsonKey(ignore: true)
  @override
  $ChangeThemeEventCopyWith<ChangeThemeEvent> get copyWith =>
      _$ChangeThemeEventCopyWithImpl<ChangeThemeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeData theme) change,
  }) {
    return change(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData theme)? change,
  }) {
    return change?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData theme)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialThemeEvent value) initial,
    required TResult Function(ChangeThemeEvent value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialThemeEvent value)? initial,
    TResult Function(ChangeThemeEvent value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialThemeEvent value)? initial,
    TResult Function(ChangeThemeEvent value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class ChangeThemeEvent extends ThemeEvent {
  const factory ChangeThemeEvent(ThemeData theme) = _$ChangeThemeEvent;
  const ChangeThemeEvent._() : super._();

  ThemeData get theme;
  @JsonKey(ignore: true)
  $ChangeThemeEventCopyWith<ChangeThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  InitialThemeState initial() {
    return const InitialThemeState();
  }

  ChangedThemeState changed({required ThemeData appTheme}) {
    return ChangedThemeState(
      appTheme: appTheme,
    );
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeData appTheme) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData appTheme)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData appTheme)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialThemeState value) initial,
    required TResult Function(ChangedThemeState value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialThemeState value)? initial,
    TResult Function(ChangedThemeState value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialThemeState value)? initial,
    TResult Function(ChangedThemeState value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;
}

/// @nodoc
abstract class $InitialThemeStateCopyWith<$Res> {
  factory $InitialThemeStateCopyWith(
          InitialThemeState value, $Res Function(InitialThemeState) then) =
      _$InitialThemeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res>
    implements $InitialThemeStateCopyWith<$Res> {
  _$InitialThemeStateCopyWithImpl(
      InitialThemeState _value, $Res Function(InitialThemeState) _then)
      : super(_value, (v) => _then(v as InitialThemeState));

  @override
  InitialThemeState get _value => super._value as InitialThemeState;
}

/// @nodoc

class _$InitialThemeState extends InitialThemeState {
  const _$InitialThemeState() : super._();

  @override
  String toString() {
    return 'ThemeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialThemeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeData appTheme) changed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData appTheme)? changed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData appTheme)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialThemeState value) initial,
    required TResult Function(ChangedThemeState value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialThemeState value)? initial,
    TResult Function(ChangedThemeState value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialThemeState value)? initial,
    TResult Function(ChangedThemeState value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialThemeState extends ThemeState {
  const factory InitialThemeState() = _$InitialThemeState;
  const InitialThemeState._() : super._();
}

/// @nodoc
abstract class $ChangedThemeStateCopyWith<$Res> {
  factory $ChangedThemeStateCopyWith(
          ChangedThemeState value, $Res Function(ChangedThemeState) then) =
      _$ChangedThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeData appTheme});
}

/// @nodoc
class _$ChangedThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res>
    implements $ChangedThemeStateCopyWith<$Res> {
  _$ChangedThemeStateCopyWithImpl(
      ChangedThemeState _value, $Res Function(ChangedThemeState) _then)
      : super(_value, (v) => _then(v as ChangedThemeState));

  @override
  ChangedThemeState get _value => super._value as ChangedThemeState;

  @override
  $Res call({
    Object? appTheme = freezed,
  }) {
    return _then(ChangedThemeState(
      appTheme: appTheme == freezed
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$ChangedThemeState extends ChangedThemeState {
  const _$ChangedThemeState({required this.appTheme}) : super._();

  @override
  final ThemeData appTheme;

  @override
  String toString() {
    return 'ThemeState.changed(appTheme: $appTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangedThemeState &&
            const DeepCollectionEquality().equals(other.appTheme, appTheme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appTheme));

  @JsonKey(ignore: true)
  @override
  $ChangedThemeStateCopyWith<ChangedThemeState> get copyWith =>
      _$ChangedThemeStateCopyWithImpl<ChangedThemeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeData appTheme) changed,
  }) {
    return changed(appTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData appTheme)? changed,
  }) {
    return changed?.call(appTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData appTheme)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(appTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialThemeState value) initial,
    required TResult Function(ChangedThemeState value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialThemeState value)? initial,
    TResult Function(ChangedThemeState value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialThemeState value)? initial,
    TResult Function(ChangedThemeState value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class ChangedThemeState extends ThemeState {
  const factory ChangedThemeState({required ThemeData appTheme}) =
      _$ChangedThemeState;
  const ChangedThemeState._() : super._();

  ThemeData get appTheme;
  @JsonKey(ignore: true)
  $ChangedThemeStateCopyWith<ChangedThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
