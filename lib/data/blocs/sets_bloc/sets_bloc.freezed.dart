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

  InitialSetsState initial([SetListContainer? setListContainer]) {
    return InitialSetsState(
      setListContainer,
    );
  }

  LoadedSetsState loaded(
      [SetListContainer? setListContainer, bool hasReachedMax = false]) {
    return LoadedSetsState(
      setListContainer,
      hasReachedMax,
    );
  }

  ErrorSetsState error([SetListContainer? setListContainer]) {
    return ErrorSetsState(
      setListContainer,
    );
  }
}

/// @nodoc
const $SetsState = _$SetsStateTearOff();

/// @nodoc
mixin _$SetsState {
  SetListContainer? get setListContainer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SetListContainer? setListContainer) initial,
    required TResult Function(
            SetListContainer? setListContainer, bool hasReachedMax)
        loaded,
    required TResult Function(SetListContainer? setListContainer) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
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
  $Res call({SetListContainer? setListContainer});

  $SetListContainerCopyWith<$Res>? get setListContainer;
}

/// @nodoc
class _$SetsStateCopyWithImpl<$Res> implements $SetsStateCopyWith<$Res> {
  _$SetsStateCopyWithImpl(this._value, this._then);

  final SetsState _value;
  // ignore: unused_field
  final $Res Function(SetsState) _then;

  @override
  $Res call({
    Object? setListContainer = freezed,
  }) {
    return _then(_value.copyWith(
      setListContainer: setListContainer == freezed
          ? _value.setListContainer
          : setListContainer // ignore: cast_nullable_to_non_nullable
              as SetListContainer?,
    ));
  }

  @override
  $SetListContainerCopyWith<$Res>? get setListContainer {
    if (_value.setListContainer == null) {
      return null;
    }

    return $SetListContainerCopyWith<$Res>(_value.setListContainer!, (value) {
      return _then(_value.copyWith(setListContainer: value));
    });
  }
}

/// @nodoc
abstract class $InitialSetsStateCopyWith<$Res>
    implements $SetsStateCopyWith<$Res> {
  factory $InitialSetsStateCopyWith(
          InitialSetsState value, $Res Function(InitialSetsState) then) =
      _$InitialSetsStateCopyWithImpl<$Res>;
  @override
  $Res call({SetListContainer? setListContainer});

  @override
  $SetListContainerCopyWith<$Res>? get setListContainer;
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
    Object? setListContainer = freezed,
  }) {
    return _then(InitialSetsState(
      setListContainer == freezed
          ? _value.setListContainer
          : setListContainer // ignore: cast_nullable_to_non_nullable
              as SetListContainer?,
    ));
  }
}

/// @nodoc

class _$InitialSetsState extends InitialSetsState {
  const _$InitialSetsState([this.setListContainer]) : super._();

  @override
  final SetListContainer? setListContainer;

  @override
  String toString() {
    return 'SetsState.initial(setListContainer: $setListContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitialSetsState &&
            const DeepCollectionEquality()
                .equals(other.setListContainer, setListContainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(setListContainer));

  @JsonKey(ignore: true)
  @override
  $InitialSetsStateCopyWith<InitialSetsState> get copyWith =>
      _$InitialSetsStateCopyWithImpl<InitialSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SetListContainer? setListContainer) initial,
    required TResult Function(
            SetListContainer? setListContainer, bool hasReachedMax)
        loaded,
    required TResult Function(SetListContainer? setListContainer) error,
  }) {
    return initial(setListContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
  }) {
    return initial?.call(setListContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(setListContainer);
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
  const factory InitialSetsState([SetListContainer? setListContainer]) =
      _$InitialSetsState;
  const InitialSetsState._() : super._();

  @override
  SetListContainer? get setListContainer;
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
  $Res call({SetListContainer? setListContainer, bool hasReachedMax});

  @override
  $SetListContainerCopyWith<$Res>? get setListContainer;
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
    Object? setListContainer = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(LoadedSetsState(
      setListContainer == freezed
          ? _value.setListContainer
          : setListContainer // ignore: cast_nullable_to_non_nullable
              as SetListContainer?,
      hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedSetsState extends LoadedSetsState {
  const _$LoadedSetsState([this.setListContainer, this.hasReachedMax = false])
      : super._();

  @override
  final SetListContainer? setListContainer;
  @JsonKey()
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'SetsState.loaded(setListContainer: $setListContainer, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedSetsState &&
            const DeepCollectionEquality()
                .equals(other.setListContainer, setListContainer) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(setListContainer),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  $LoadedSetsStateCopyWith<LoadedSetsState> get copyWith =>
      _$LoadedSetsStateCopyWithImpl<LoadedSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SetListContainer? setListContainer) initial,
    required TResult Function(
            SetListContainer? setListContainer, bool hasReachedMax)
        loaded,
    required TResult Function(SetListContainer? setListContainer) error,
  }) {
    return loaded(setListContainer, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
  }) {
    return loaded?.call(setListContainer, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(setListContainer, hasReachedMax);
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
  const factory LoadedSetsState(
      [SetListContainer? setListContainer,
      bool hasReachedMax]) = _$LoadedSetsState;
  const LoadedSetsState._() : super._();

  @override
  SetListContainer? get setListContainer;
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
  $Res call({SetListContainer? setListContainer});

  @override
  $SetListContainerCopyWith<$Res>? get setListContainer;
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
    Object? setListContainer = freezed,
  }) {
    return _then(ErrorSetsState(
      setListContainer == freezed
          ? _value.setListContainer
          : setListContainer // ignore: cast_nullable_to_non_nullable
              as SetListContainer?,
    ));
  }
}

/// @nodoc

class _$ErrorSetsState extends ErrorSetsState {
  const _$ErrorSetsState([this.setListContainer]) : super._();

  @override
  final SetListContainer? setListContainer;

  @override
  String toString() {
    return 'SetsState.error(setListContainer: $setListContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorSetsState &&
            const DeepCollectionEquality()
                .equals(other.setListContainer, setListContainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(setListContainer));

  @JsonKey(ignore: true)
  @override
  $ErrorSetsStateCopyWith<ErrorSetsState> get copyWith =>
      _$ErrorSetsStateCopyWithImpl<ErrorSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SetListContainer? setListContainer) initial,
    required TResult Function(
            SetListContainer? setListContainer, bool hasReachedMax)
        loaded,
    required TResult Function(SetListContainer? setListContainer) error,
  }) {
    return error(setListContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
  }) {
    return error?.call(setListContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(setListContainer);
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
  const factory ErrorSetsState([SetListContainer? setListContainer]) =
      _$ErrorSetsState;
  const ErrorSetsState._() : super._();

  @override
  SetListContainer? get setListContainer;
  @override
  @JsonKey(ignore: true)
  $ErrorSetsStateCopyWith<ErrorSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetListContainerTearOff {
  const _$SetListContainerTearOff();

  _SetListContainer call({List<Datum> sets = const [], int currentPage = 1}) {
    return _SetListContainer(
      sets: sets,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $SetListContainer = _$SetListContainerTearOff();

/// @nodoc
mixin _$SetListContainer {
  List<Datum> get sets => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetListContainerCopyWith<SetListContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetListContainerCopyWith<$Res> {
  factory $SetListContainerCopyWith(
          SetListContainer value, $Res Function(SetListContainer) then) =
      _$SetListContainerCopyWithImpl<$Res>;
  $Res call({List<Datum> sets, int currentPage});
}

/// @nodoc
class _$SetListContainerCopyWithImpl<$Res>
    implements $SetListContainerCopyWith<$Res> {
  _$SetListContainerCopyWithImpl(this._value, this._then);

  final SetListContainer _value;
  // ignore: unused_field
  final $Res Function(SetListContainer) _then;

  @override
  $Res call({
    Object? sets = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SetListContainerCopyWith<$Res>
    implements $SetListContainerCopyWith<$Res> {
  factory _$SetListContainerCopyWith(
          _SetListContainer value, $Res Function(_SetListContainer) then) =
      __$SetListContainerCopyWithImpl<$Res>;
  @override
  $Res call({List<Datum> sets, int currentPage});
}

/// @nodoc
class __$SetListContainerCopyWithImpl<$Res>
    extends _$SetListContainerCopyWithImpl<$Res>
    implements _$SetListContainerCopyWith<$Res> {
  __$SetListContainerCopyWithImpl(
      _SetListContainer _value, $Res Function(_SetListContainer) _then)
      : super(_value, (v) => _then(v as _SetListContainer));

  @override
  _SetListContainer get _value => super._value as _SetListContainer;

  @override
  $Res call({
    Object? sets = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_SetListContainer(
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetListContainer implements _SetListContainer {
  const _$_SetListContainer({this.sets = const [], this.currentPage = 1});

  @JsonKey()
  @override
  final List<Datum> sets;
  @JsonKey()
  @override
  final int currentPage;

  @override
  String toString() {
    return 'SetListContainer(sets: $sets, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetListContainer &&
            const DeepCollectionEquality().equals(other.sets, sets) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sets),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$SetListContainerCopyWith<_SetListContainer> get copyWith =>
      __$SetListContainerCopyWithImpl<_SetListContainer>(this, _$identity);
}

abstract class _SetListContainer implements SetListContainer {
  const factory _SetListContainer({List<Datum> sets, int currentPage}) =
      _$_SetListContainer;

  @override
  List<Datum> get sets;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$SetListContainerCopyWith<_SetListContainer> get copyWith =>
      throw _privateConstructorUsedError;
}
