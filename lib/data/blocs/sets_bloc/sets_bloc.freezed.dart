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

  _CreateSetsEvent create() {
    return const _CreateSetsEvent();
  }

  _FetchSetsEvent fetch() {
    return const _FetchSetsEvent();
  }
}

/// @nodoc
const $SetsEvent = _$SetsEventTearOff();

/// @nodoc
mixin _$SetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSetsEvent value) create,
    required TResult Function(_FetchSetsEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateSetsEvent value)? create,
    TResult Function(_FetchSetsEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSetsEvent value)? create,
    TResult Function(_FetchSetsEvent value)? fetch,
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
abstract class _$CreateSetsEventCopyWith<$Res> {
  factory _$CreateSetsEventCopyWith(
          _CreateSetsEvent value, $Res Function(_CreateSetsEvent) then) =
      __$CreateSetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateSetsEventCopyWithImpl<$Res> extends _$SetsEventCopyWithImpl<$Res>
    implements _$CreateSetsEventCopyWith<$Res> {
  __$CreateSetsEventCopyWithImpl(
      _CreateSetsEvent _value, $Res Function(_CreateSetsEvent) _then)
      : super(_value, (v) => _then(v as _CreateSetsEvent));

  @override
  _CreateSetsEvent get _value => super._value as _CreateSetsEvent;
}

/// @nodoc

class _$_CreateSetsEvent extends _CreateSetsEvent {
  const _$_CreateSetsEvent() : super._();

  @override
  String toString() {
    return 'SetsEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateSetsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() fetch,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSetsEvent value) create,
    required TResult Function(_FetchSetsEvent value) fetch,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateSetsEvent value)? create,
    TResult Function(_FetchSetsEvent value)? fetch,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSetsEvent value)? create,
    TResult Function(_FetchSetsEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateSetsEvent extends SetsEvent {
  const factory _CreateSetsEvent() = _$_CreateSetsEvent;
  const _CreateSetsEvent._() : super._();
}

/// @nodoc
abstract class _$FetchSetsEventCopyWith<$Res> {
  factory _$FetchSetsEventCopyWith(
          _FetchSetsEvent value, $Res Function(_FetchSetsEvent) then) =
      __$FetchSetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchSetsEventCopyWithImpl<$Res> extends _$SetsEventCopyWithImpl<$Res>
    implements _$FetchSetsEventCopyWith<$Res> {
  __$FetchSetsEventCopyWithImpl(
      _FetchSetsEvent _value, $Res Function(_FetchSetsEvent) _then)
      : super(_value, (v) => _then(v as _FetchSetsEvent));

  @override
  _FetchSetsEvent get _value => super._value as _FetchSetsEvent;
}

/// @nodoc

class _$_FetchSetsEvent extends _FetchSetsEvent {
  const _$_FetchSetsEvent() : super._();

  @override
  String toString() {
    return 'SetsEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchSetsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
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
    required TResult Function(_CreateSetsEvent value) create,
    required TResult Function(_FetchSetsEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateSetsEvent value)? create,
    TResult Function(_FetchSetsEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSetsEvent value)? create,
    TResult Function(_FetchSetsEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchSetsEvent extends SetsEvent {
  const factory _FetchSetsEvent() = _$_FetchSetsEvent;
  const _FetchSetsEvent._() : super._();
}

/// @nodoc
class _$SetsStateTearOff {
  const _$SetsStateTearOff();

  _InitialSetsState initial([SetListContainer? setListContainer]) {
    return _InitialSetsState(
      setListContainer,
    );
  }

  _LoadingSetsState loading([SetListContainer? setListContainer]) {
    return _LoadingSetsState(
      setListContainer,
    );
  }

  _LoadedSetsState loaded(
      [SetListContainer? setListContainer, bool hasReachedMax = false]) {
    return _LoadedSetsState(
      setListContainer,
      hasReachedMax,
    );
  }

  _ErrorSetsState error([SetListContainer? setListContainer]) {
    return _ErrorSetsState(
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
    required TResult Function(SetListContainer? setListContainer) loading,
    required TResult Function(
            SetListContainer? setListContainer, bool hasReachedMax)
        loaded,
    required TResult Function(SetListContainer? setListContainer) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer)? loading,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer)? loading,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSetsState value) initial,
    required TResult Function(_LoadingSetsState value) loading,
    required TResult Function(_LoadedSetsState value) loaded,
    required TResult Function(_ErrorSetsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
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
abstract class _$InitialSetsStateCopyWith<$Res>
    implements $SetsStateCopyWith<$Res> {
  factory _$InitialSetsStateCopyWith(
          _InitialSetsState value, $Res Function(_InitialSetsState) then) =
      __$InitialSetsStateCopyWithImpl<$Res>;
  @override
  $Res call({SetListContainer? setListContainer});

  @override
  $SetListContainerCopyWith<$Res>? get setListContainer;
}

/// @nodoc
class __$InitialSetsStateCopyWithImpl<$Res>
    extends _$SetsStateCopyWithImpl<$Res>
    implements _$InitialSetsStateCopyWith<$Res> {
  __$InitialSetsStateCopyWithImpl(
      _InitialSetsState _value, $Res Function(_InitialSetsState) _then)
      : super(_value, (v) => _then(v as _InitialSetsState));

  @override
  _InitialSetsState get _value => super._value as _InitialSetsState;

  @override
  $Res call({
    Object? setListContainer = freezed,
  }) {
    return _then(_InitialSetsState(
      setListContainer == freezed
          ? _value.setListContainer
          : setListContainer // ignore: cast_nullable_to_non_nullable
              as SetListContainer?,
    ));
  }
}

/// @nodoc

class _$_InitialSetsState extends _InitialSetsState {
  const _$_InitialSetsState([this.setListContainer]) : super._();

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
            other is _InitialSetsState &&
            const DeepCollectionEquality()
                .equals(other.setListContainer, setListContainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(setListContainer));

  @JsonKey(ignore: true)
  @override
  _$InitialSetsStateCopyWith<_InitialSetsState> get copyWith =>
      __$InitialSetsStateCopyWithImpl<_InitialSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SetListContainer? setListContainer) initial,
    required TResult Function(SetListContainer? setListContainer) loading,
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
    TResult Function(SetListContainer? setListContainer)? loading,
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
    TResult Function(SetListContainer? setListContainer)? loading,
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
    required TResult Function(_InitialSetsState value) initial,
    required TResult Function(_LoadingSetsState value) loading,
    required TResult Function(_LoadedSetsState value) loaded,
    required TResult Function(_ErrorSetsState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSetsState extends SetsState {
  const factory _InitialSetsState([SetListContainer? setListContainer]) =
      _$_InitialSetsState;
  const _InitialSetsState._() : super._();

  @override
  SetListContainer? get setListContainer;
  @override
  @JsonKey(ignore: true)
  _$InitialSetsStateCopyWith<_InitialSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingSetsStateCopyWith<$Res>
    implements $SetsStateCopyWith<$Res> {
  factory _$LoadingSetsStateCopyWith(
          _LoadingSetsState value, $Res Function(_LoadingSetsState) then) =
      __$LoadingSetsStateCopyWithImpl<$Res>;
  @override
  $Res call({SetListContainer? setListContainer});

  @override
  $SetListContainerCopyWith<$Res>? get setListContainer;
}

/// @nodoc
class __$LoadingSetsStateCopyWithImpl<$Res>
    extends _$SetsStateCopyWithImpl<$Res>
    implements _$LoadingSetsStateCopyWith<$Res> {
  __$LoadingSetsStateCopyWithImpl(
      _LoadingSetsState _value, $Res Function(_LoadingSetsState) _then)
      : super(_value, (v) => _then(v as _LoadingSetsState));

  @override
  _LoadingSetsState get _value => super._value as _LoadingSetsState;

  @override
  $Res call({
    Object? setListContainer = freezed,
  }) {
    return _then(_LoadingSetsState(
      setListContainer == freezed
          ? _value.setListContainer
          : setListContainer // ignore: cast_nullable_to_non_nullable
              as SetListContainer?,
    ));
  }
}

/// @nodoc

class _$_LoadingSetsState extends _LoadingSetsState {
  const _$_LoadingSetsState([this.setListContainer]) : super._();

  @override
  final SetListContainer? setListContainer;

  @override
  String toString() {
    return 'SetsState.loading(setListContainer: $setListContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadingSetsState &&
            const DeepCollectionEquality()
                .equals(other.setListContainer, setListContainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(setListContainer));

  @JsonKey(ignore: true)
  @override
  _$LoadingSetsStateCopyWith<_LoadingSetsState> get copyWith =>
      __$LoadingSetsStateCopyWithImpl<_LoadingSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SetListContainer? setListContainer) initial,
    required TResult Function(SetListContainer? setListContainer) loading,
    required TResult Function(
            SetListContainer? setListContainer, bool hasReachedMax)
        loaded,
    required TResult Function(SetListContainer? setListContainer) error,
  }) {
    return loading(setListContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer)? loading,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
  }) {
    return loading?.call(setListContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SetListContainer? setListContainer)? initial,
    TResult Function(SetListContainer? setListContainer)? loading,
    TResult Function(SetListContainer? setListContainer, bool hasReachedMax)?
        loaded,
    TResult Function(SetListContainer? setListContainer)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(setListContainer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSetsState value) initial,
    required TResult Function(_LoadingSetsState value) loading,
    required TResult Function(_LoadedSetsState value) loaded,
    required TResult Function(_ErrorSetsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSetsState extends SetsState {
  const factory _LoadingSetsState([SetListContainer? setListContainer]) =
      _$_LoadingSetsState;
  const _LoadingSetsState._() : super._();

  @override
  SetListContainer? get setListContainer;
  @override
  @JsonKey(ignore: true)
  _$LoadingSetsStateCopyWith<_LoadingSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedSetsStateCopyWith<$Res>
    implements $SetsStateCopyWith<$Res> {
  factory _$LoadedSetsStateCopyWith(
          _LoadedSetsState value, $Res Function(_LoadedSetsState) then) =
      __$LoadedSetsStateCopyWithImpl<$Res>;
  @override
  $Res call({SetListContainer? setListContainer, bool hasReachedMax});

  @override
  $SetListContainerCopyWith<$Res>? get setListContainer;
}

/// @nodoc
class __$LoadedSetsStateCopyWithImpl<$Res> extends _$SetsStateCopyWithImpl<$Res>
    implements _$LoadedSetsStateCopyWith<$Res> {
  __$LoadedSetsStateCopyWithImpl(
      _LoadedSetsState _value, $Res Function(_LoadedSetsState) _then)
      : super(_value, (v) => _then(v as _LoadedSetsState));

  @override
  _LoadedSetsState get _value => super._value as _LoadedSetsState;

  @override
  $Res call({
    Object? setListContainer = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_LoadedSetsState(
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

class _$_LoadedSetsState extends _LoadedSetsState {
  const _$_LoadedSetsState([this.setListContainer, this.hasReachedMax = false])
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
            other is _LoadedSetsState &&
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
  _$LoadedSetsStateCopyWith<_LoadedSetsState> get copyWith =>
      __$LoadedSetsStateCopyWithImpl<_LoadedSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SetListContainer? setListContainer) initial,
    required TResult Function(SetListContainer? setListContainer) loading,
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
    TResult Function(SetListContainer? setListContainer)? loading,
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
    TResult Function(SetListContainer? setListContainer)? loading,
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
    required TResult Function(_InitialSetsState value) initial,
    required TResult Function(_LoadingSetsState value) loading,
    required TResult Function(_LoadedSetsState value) loaded,
    required TResult Function(_ErrorSetsState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedSetsState extends SetsState {
  const factory _LoadedSetsState(
      [SetListContainer? setListContainer,
      bool hasReachedMax]) = _$_LoadedSetsState;
  const _LoadedSetsState._() : super._();

  @override
  SetListContainer? get setListContainer;
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$LoadedSetsStateCopyWith<_LoadedSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorSetsStateCopyWith<$Res>
    implements $SetsStateCopyWith<$Res> {
  factory _$ErrorSetsStateCopyWith(
          _ErrorSetsState value, $Res Function(_ErrorSetsState) then) =
      __$ErrorSetsStateCopyWithImpl<$Res>;
  @override
  $Res call({SetListContainer? setListContainer});

  @override
  $SetListContainerCopyWith<$Res>? get setListContainer;
}

/// @nodoc
class __$ErrorSetsStateCopyWithImpl<$Res> extends _$SetsStateCopyWithImpl<$Res>
    implements _$ErrorSetsStateCopyWith<$Res> {
  __$ErrorSetsStateCopyWithImpl(
      _ErrorSetsState _value, $Res Function(_ErrorSetsState) _then)
      : super(_value, (v) => _then(v as _ErrorSetsState));

  @override
  _ErrorSetsState get _value => super._value as _ErrorSetsState;

  @override
  $Res call({
    Object? setListContainer = freezed,
  }) {
    return _then(_ErrorSetsState(
      setListContainer == freezed
          ? _value.setListContainer
          : setListContainer // ignore: cast_nullable_to_non_nullable
              as SetListContainer?,
    ));
  }
}

/// @nodoc

class _$_ErrorSetsState extends _ErrorSetsState {
  const _$_ErrorSetsState([this.setListContainer]) : super._();

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
            other is _ErrorSetsState &&
            const DeepCollectionEquality()
                .equals(other.setListContainer, setListContainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(setListContainer));

  @JsonKey(ignore: true)
  @override
  _$ErrorSetsStateCopyWith<_ErrorSetsState> get copyWith =>
      __$ErrorSetsStateCopyWithImpl<_ErrorSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SetListContainer? setListContainer) initial,
    required TResult Function(SetListContainer? setListContainer) loading,
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
    TResult Function(SetListContainer? setListContainer)? loading,
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
    TResult Function(SetListContainer? setListContainer)? loading,
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
    required TResult Function(_InitialSetsState value) initial,
    required TResult Function(_LoadingSetsState value) loading,
    required TResult Function(_LoadedSetsState value) loaded,
    required TResult Function(_ErrorSetsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSetsState value)? initial,
    TResult Function(_LoadingSetsState value)? loading,
    TResult Function(_LoadedSetsState value)? loaded,
    TResult Function(_ErrorSetsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSetsState extends SetsState {
  const factory _ErrorSetsState([SetListContainer? setListContainer]) =
      _$_ErrorSetsState;
  const _ErrorSetsState._() : super._();

  @override
  SetListContainer? get setListContainer;
  @override
  @JsonKey(ignore: true)
  _$ErrorSetsStateCopyWith<_ErrorSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetListContainerTearOff {
  const _$SetListContainerTearOff();

  _SetListContainer call(
      {List<SetDatum> sets = const [], int currentPage = 1}) {
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
  List<SetDatum> get sets => throw _privateConstructorUsedError;
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
  $Res call({List<SetDatum> sets, int currentPage});
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
              as List<SetDatum>,
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
  $Res call({List<SetDatum> sets, int currentPage});
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
              as List<SetDatum>,
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
  final List<SetDatum> sets;
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
  const factory _SetListContainer({List<SetDatum> sets, int currentPage}) =
      _$_SetListContainer;

  @override
  List<SetDatum> get sets;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$SetListContainerCopyWith<_SetListContainer> get copyWith =>
      throw _privateConstructorUsedError;
}
