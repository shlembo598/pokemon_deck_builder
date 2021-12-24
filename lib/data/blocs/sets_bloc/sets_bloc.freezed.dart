// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SetsEventTearOff {
  const _$SetsEventTearOff();

  InitialSetsEvent initial() {
    return const InitialSetsEvent();
  }

  FetchSetsEvent fetch() {
    return const FetchSetsEvent();
  }
}

/// @nodoc
const $SetsEvent = _$SetsEventTearOff();

/// @nodoc
mixin _$SetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsEvent value) initial,
    required TResult Function(FetchSetsEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(FetchSetsEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(FetchSetsEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetsEventCopyWith<$Res> {
  factory $SetsEventCopyWith(SetsEvent value, $Res Function(SetsEvent) then) =
      _$SetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetsEventCopyWithImpl<$Res> implements $SetsEventCopyWith<$Res> {
  _$SetsEventCopyWithImpl(this._value, this._then);

  final SetsEvent _value;
  // ignore: unused_field
  final $Res Function(SetsEvent) _then;
}

/// @nodoc
abstract class $InitialSetsEventCopyWith<$Res> {
  factory $InitialSetsEventCopyWith(
          InitialSetsEvent value, $Res Function(InitialSetsEvent) then) =
      _$InitialSetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialSetsEventCopyWithImpl<$Res> extends _$SetsEventCopyWithImpl<$Res>
    implements $InitialSetsEventCopyWith<$Res> {
  _$InitialSetsEventCopyWithImpl(
      InitialSetsEvent _value, $Res Function(InitialSetsEvent) _then)
      : super(_value, (v) => _then(v as InitialSetsEvent));

  @override
  InitialSetsEvent get _value => super._value as InitialSetsEvent;
}

/// @nodoc

class _$InitialSetsEvent extends InitialSetsEvent {
  const _$InitialSetsEvent() : super._();

  @override
  String toString() {
    return 'SetsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialSetsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
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
    required TResult Function(InitialSetsEvent value) initial,
    required TResult Function(FetchSetsEvent value) fetch,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(FetchSetsEvent value)? fetch,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(FetchSetsEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSetsEvent extends SetsEvent {
  const factory InitialSetsEvent() = _$InitialSetsEvent;
  const InitialSetsEvent._() : super._();
}

/// @nodoc
abstract class $FetchSetsEventCopyWith<$Res> {
  factory $FetchSetsEventCopyWith(
          FetchSetsEvent value, $Res Function(FetchSetsEvent) then) =
      _$FetchSetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchSetsEventCopyWithImpl<$Res> extends _$SetsEventCopyWithImpl<$Res>
    implements $FetchSetsEventCopyWith<$Res> {
  _$FetchSetsEventCopyWithImpl(
      FetchSetsEvent _value, $Res Function(FetchSetsEvent) _then)
      : super(_value, (v) => _then(v as FetchSetsEvent));

  @override
  FetchSetsEvent get _value => super._value as FetchSetsEvent;
}

/// @nodoc

class _$FetchSetsEvent extends FetchSetsEvent {
  const _$FetchSetsEvent() : super._();

  @override
  String toString() {
    return 'SetsEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchSetsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsEvent value) initial,
    required TResult Function(FetchSetsEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(FetchSetsEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(FetchSetsEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchSetsEvent extends SetsEvent {
  const factory FetchSetsEvent() = _$FetchSetsEvent;
  const FetchSetsEvent._() : super._();
}

/// @nodoc
class _$SetsStateTearOff {
  const _$SetsStateTearOff();

  InitialSetsState initial([List<Datum>? sets]) {
    return InitialSetsState(
      sets,
    );
  }

  LoadedSetsState loaded([List<Datum>? sets, bool hasReachedMax = false]) {
    return LoadedSetsState(
      sets,
      hasReachedMax,
    );
  }

  ErrorSetsState error([List<Datum>? sets]) {
    return ErrorSetsState(
      sets,
    );
  }
}

/// @nodoc
const $SetsState = _$SetsStateTearOff();

/// @nodoc
mixin _$SetsState {
  List<Datum>? get sets => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datum>? sets) initial,
    required TResult Function(List<Datum>? sets, bool hasReachedMax) loaded,
    required TResult Function(List<Datum>? sets) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Datum>? sets)? initial,
    TResult Function(List<Datum>? sets, bool hasReachedMax)? loaded,
    TResult Function(List<Datum>? sets)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datum>? sets)? initial,
    TResult Function(List<Datum>? sets, bool hasReachedMax)? loaded,
    TResult Function(List<Datum>? sets)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsState value) initial,
    required TResult Function(LoadedSetsState value) loaded,
    required TResult Function(ErrorSetsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    TResult Function(ErrorSetsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    TResult Function(ErrorSetsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetsStateCopyWith<SetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetsStateCopyWith<$Res> {
  factory $SetsStateCopyWith(SetsState value, $Res Function(SetsState) then) =
      _$SetsStateCopyWithImpl<$Res>;
  $Res call({List<Datum>? sets});
}

/// @nodoc
class _$SetsStateCopyWithImpl<$Res> implements $SetsStateCopyWith<$Res> {
  _$SetsStateCopyWithImpl(this._value, this._then);

  final SetsState _value;
  // ignore: unused_field
  final $Res Function(SetsState) _then;

  @override
  $Res call({
    Object? sets = freezed,
  }) {
    return _then(_value.copyWith(
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
abstract class $InitialSetsStateCopyWith<$Res>
    implements $SetsStateCopyWith<$Res> {
  factory $InitialSetsStateCopyWith(
          InitialSetsState value, $Res Function(InitialSetsState) then) =
      _$InitialSetsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? sets});
}

/// @nodoc
class _$InitialSetsStateCopyWithImpl<$Res> extends _$SetsStateCopyWithImpl<$Res>
    implements $InitialSetsStateCopyWith<$Res> {
  _$InitialSetsStateCopyWithImpl(
      InitialSetsState _value, $Res Function(InitialSetsState) _then)
      : super(_value, (v) => _then(v as InitialSetsState));

  @override
  InitialSetsState get _value => super._value as InitialSetsState;

  @override
  $Res call({
    Object? sets = freezed,
  }) {
    return _then(InitialSetsState(
      sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc

class _$InitialSetsState extends InitialSetsState {
  const _$InitialSetsState([this.sets]) : super._();

  @override
  final List<Datum>? sets;

  @override
  String toString() {
    return 'SetsState.initial(sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialSetsState &&
            const DeepCollectionEquality().equals(other.sets, sets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sets));

  @JsonKey(ignore: true)
  @override
  $InitialSetsStateCopyWith<InitialSetsState> get copyWith =>
      _$InitialSetsStateCopyWithImpl<InitialSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datum>? sets) initial,
    required TResult Function(List<Datum>? sets, bool hasReachedMax) loaded,
    required TResult Function(List<Datum>? sets) error,
  }) {
    return initial(sets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Datum>? sets)? initial,
    TResult Function(List<Datum>? sets, bool hasReachedMax)? loaded,
    TResult Function(List<Datum>? sets)? error,
  }) {
    return initial?.call(sets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datum>? sets)? initial,
    TResult Function(List<Datum>? sets, bool hasReachedMax)? loaded,
    TResult Function(List<Datum>? sets)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(sets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsState value) initial,
    required TResult Function(LoadedSetsState value) loaded,
    required TResult Function(ErrorSetsState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    TResult Function(ErrorSetsState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    TResult Function(ErrorSetsState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSetsState extends SetsState {
  const factory InitialSetsState([List<Datum>? sets]) = _$InitialSetsState;
  const InitialSetsState._() : super._();

  @override
  List<Datum>? get sets;
  @override
  @JsonKey(ignore: true)
  $InitialSetsStateCopyWith<InitialSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedSetsStateCopyWith<$Res>
    implements $SetsStateCopyWith<$Res> {
  factory $LoadedSetsStateCopyWith(
          LoadedSetsState value, $Res Function(LoadedSetsState) then) =
      _$LoadedSetsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? sets, bool hasReachedMax});
}

/// @nodoc
class _$LoadedSetsStateCopyWithImpl<$Res> extends _$SetsStateCopyWithImpl<$Res>
    implements $LoadedSetsStateCopyWith<$Res> {
  _$LoadedSetsStateCopyWithImpl(
      LoadedSetsState _value, $Res Function(LoadedSetsState) _then)
      : super(_value, (v) => _then(v as LoadedSetsState));

  @override
  LoadedSetsState get _value => super._value as LoadedSetsState;

  @override
  $Res call({
    Object? sets = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(LoadedSetsState(
      sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedSetsState extends LoadedSetsState {
  const _$LoadedSetsState([this.sets, this.hasReachedMax = false]) : super._();

  @override
  final List<Datum>? sets;
  @JsonKey()
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'SetsState.loaded(sets: $sets, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedSetsState &&
            const DeepCollectionEquality().equals(other.sets, sets) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sets),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  $LoadedSetsStateCopyWith<LoadedSetsState> get copyWith =>
      _$LoadedSetsStateCopyWithImpl<LoadedSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datum>? sets) initial,
    required TResult Function(List<Datum>? sets, bool hasReachedMax) loaded,
    required TResult Function(List<Datum>? sets) error,
  }) {
    return loaded(sets, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Datum>? sets)? initial,
    TResult Function(List<Datum>? sets, bool hasReachedMax)? loaded,
    TResult Function(List<Datum>? sets)? error,
  }) {
    return loaded?.call(sets, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datum>? sets)? initial,
    TResult Function(List<Datum>? sets, bool hasReachedMax)? loaded,
    TResult Function(List<Datum>? sets)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(sets, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsState value) initial,
    required TResult Function(LoadedSetsState value) loaded,
    required TResult Function(ErrorSetsState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    TResult Function(ErrorSetsState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    TResult Function(ErrorSetsState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedSetsState extends SetsState {
  const factory LoadedSetsState([List<Datum>? sets, bool hasReachedMax]) =
      _$LoadedSetsState;
  const LoadedSetsState._() : super._();

  @override
  List<Datum>? get sets;
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  $LoadedSetsStateCopyWith<LoadedSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorSetsStateCopyWith<$Res>
    implements $SetsStateCopyWith<$Res> {
  factory $ErrorSetsStateCopyWith(
          ErrorSetsState value, $Res Function(ErrorSetsState) then) =
      _$ErrorSetsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum>? sets});
}

/// @nodoc
class _$ErrorSetsStateCopyWithImpl<$Res> extends _$SetsStateCopyWithImpl<$Res>
    implements $ErrorSetsStateCopyWith<$Res> {
  _$ErrorSetsStateCopyWithImpl(
      ErrorSetsState _value, $Res Function(ErrorSetsState) _then)
      : super(_value, (v) => _then(v as ErrorSetsState));

  @override
  ErrorSetsState get _value => super._value as ErrorSetsState;

  @override
  $Res call({
    Object? sets = freezed,
  }) {
    return _then(ErrorSetsState(
      sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc

class _$ErrorSetsState extends ErrorSetsState {
  const _$ErrorSetsState([this.sets]) : super._();

  @override
  final List<Datum>? sets;

  @override
  String toString() {
    return 'SetsState.error(sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorSetsState &&
            const DeepCollectionEquality().equals(other.sets, sets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sets));

  @JsonKey(ignore: true)
  @override
  $ErrorSetsStateCopyWith<ErrorSetsState> get copyWith =>
      _$ErrorSetsStateCopyWithImpl<ErrorSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Datum>? sets) initial,
    required TResult Function(List<Datum>? sets, bool hasReachedMax) loaded,
    required TResult Function(List<Datum>? sets) error,
  }) {
    return error(sets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Datum>? sets)? initial,
    TResult Function(List<Datum>? sets, bool hasReachedMax)? loaded,
    TResult Function(List<Datum>? sets)? error,
  }) {
    return error?.call(sets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Datum>? sets)? initial,
    TResult Function(List<Datum>? sets, bool hasReachedMax)? loaded,
    TResult Function(List<Datum>? sets)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(sets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsState value) initial,
    required TResult Function(LoadedSetsState value) loaded,
    required TResult Function(ErrorSetsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    TResult Function(ErrorSetsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    TResult Function(ErrorSetsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorSetsState extends SetsState {
  const factory ErrorSetsState([List<Datum>? sets]) = _$ErrorSetsState;
  const ErrorSetsState._() : super._();

  @override
  List<Datum>? get sets;
  @override
  @JsonKey(ignore: true)
  $ErrorSetsStateCopyWith<ErrorSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}
