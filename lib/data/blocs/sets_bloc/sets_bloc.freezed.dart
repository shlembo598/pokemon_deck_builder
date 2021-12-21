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

  ReadSetsEvent read() {
    return const ReadSetsEvent();
  }

  UpdateSetsEvent update() {
    return const UpdateSetsEvent();
  }

  DeleteSetsEvent delete() {
    return const DeleteSetsEvent();
  }
}

/// @nodoc
const $SetsEvent = _$SetsEventTearOff();

/// @nodoc
mixin _$SetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsEvent value) initial,
    required TResult Function(ReadSetsEvent value) read,
    required TResult Function(UpdateSetsEvent value) update,
    required TResult Function(DeleteSetsEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
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
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
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
    required TResult Function(ReadSetsEvent value) read,
    required TResult Function(UpdateSetsEvent value) update,
    required TResult Function(DeleteSetsEvent value) delete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
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
abstract class $ReadSetsEventCopyWith<$Res> {
  factory $ReadSetsEventCopyWith(
          ReadSetsEvent value, $Res Function(ReadSetsEvent) then) =
      _$ReadSetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadSetsEventCopyWithImpl<$Res> extends _$SetsEventCopyWithImpl<$Res>
    implements $ReadSetsEventCopyWith<$Res> {
  _$ReadSetsEventCopyWithImpl(
      ReadSetsEvent _value, $Res Function(ReadSetsEvent) _then)
      : super(_value, (v) => _then(v as ReadSetsEvent));

  @override
  ReadSetsEvent get _value => super._value as ReadSetsEvent;
}

/// @nodoc

class _$ReadSetsEvent extends ReadSetsEvent {
  const _$ReadSetsEvent() : super._();

  @override
  String toString() {
    return 'SetsEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReadSetsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsEvent value) initial,
    required TResult Function(ReadSetsEvent value) read,
    required TResult Function(UpdateSetsEvent value) update,
    required TResult Function(DeleteSetsEvent value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadSetsEvent extends SetsEvent {
  const factory ReadSetsEvent() = _$ReadSetsEvent;
  const ReadSetsEvent._() : super._();
}

/// @nodoc
abstract class $UpdateSetsEventCopyWith<$Res> {
  factory $UpdateSetsEventCopyWith(
          UpdateSetsEvent value, $Res Function(UpdateSetsEvent) then) =
      _$UpdateSetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSetsEventCopyWithImpl<$Res> extends _$SetsEventCopyWithImpl<$Res>
    implements $UpdateSetsEventCopyWith<$Res> {
  _$UpdateSetsEventCopyWithImpl(
      UpdateSetsEvent _value, $Res Function(UpdateSetsEvent) _then)
      : super(_value, (v) => _then(v as UpdateSetsEvent));

  @override
  UpdateSetsEvent get _value => super._value as UpdateSetsEvent;
}

/// @nodoc

class _$UpdateSetsEvent extends UpdateSetsEvent {
  const _$UpdateSetsEvent() : super._();

  @override
  String toString() {
    return 'SetsEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateSetsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsEvent value) initial,
    required TResult Function(ReadSetsEvent value) read,
    required TResult Function(UpdateSetsEvent value) update,
    required TResult Function(DeleteSetsEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateSetsEvent extends SetsEvent {
  const factory UpdateSetsEvent() = _$UpdateSetsEvent;
  const UpdateSetsEvent._() : super._();
}

/// @nodoc
abstract class $DeleteSetsEventCopyWith<$Res> {
  factory $DeleteSetsEventCopyWith(
          DeleteSetsEvent value, $Res Function(DeleteSetsEvent) then) =
      _$DeleteSetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteSetsEventCopyWithImpl<$Res> extends _$SetsEventCopyWithImpl<$Res>
    implements $DeleteSetsEventCopyWith<$Res> {
  _$DeleteSetsEventCopyWithImpl(
      DeleteSetsEvent _value, $Res Function(DeleteSetsEvent) _then)
      : super(_value, (v) => _then(v as DeleteSetsEvent));

  @override
  DeleteSetsEvent get _value => super._value as DeleteSetsEvent;
}

/// @nodoc

class _$DeleteSetsEvent extends DeleteSetsEvent {
  const _$DeleteSetsEvent() : super._();

  @override
  String toString() {
    return 'SetsEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteSetsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsEvent value) initial,
    required TResult Function(ReadSetsEvent value) read,
    required TResult Function(UpdateSetsEvent value) update,
    required TResult Function(DeleteSetsEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsEvent value)? initial,
    TResult Function(ReadSetsEvent value)? read,
    TResult Function(UpdateSetsEvent value)? update,
    TResult Function(DeleteSetsEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteSetsEvent extends SetsEvent {
  const factory DeleteSetsEvent() = _$DeleteSetsEvent;
  const DeleteSetsEvent._() : super._();
}

/// @nodoc
class _$SetsStateTearOff {
  const _$SetsStateTearOff();

  InitialSetsState initial() {
    return const InitialSetsState();
  }

  LoadedSetsState loaded(List<Datum> sets) {
    return LoadedSetsState(
      sets,
    );
  }
}

/// @nodoc
const $SetsState = _$SetsStateTearOff();

/// @nodoc
mixin _$SetsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Datum> sets) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Datum> sets)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Datum> sets)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsState value) initial,
    required TResult Function(LoadedSetsState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetsStateCopyWith<$Res> {
  factory $SetsStateCopyWith(SetsState value, $Res Function(SetsState) then) =
      _$SetsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetsStateCopyWithImpl<$Res> implements $SetsStateCopyWith<$Res> {
  _$SetsStateCopyWithImpl(this._value, this._then);

  final SetsState _value;
  // ignore: unused_field
  final $Res Function(SetsState) _then;
}

/// @nodoc
abstract class $InitialSetsStateCopyWith<$Res> {
  factory $InitialSetsStateCopyWith(
          InitialSetsState value, $Res Function(InitialSetsState) then) =
      _$InitialSetsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialSetsStateCopyWithImpl<$Res> extends _$SetsStateCopyWithImpl<$Res>
    implements $InitialSetsStateCopyWith<$Res> {
  _$InitialSetsStateCopyWithImpl(
      InitialSetsState _value, $Res Function(InitialSetsState) _then)
      : super(_value, (v) => _then(v as InitialSetsState));

  @override
  InitialSetsState get _value => super._value as InitialSetsState;
}

/// @nodoc

class _$InitialSetsState extends InitialSetsState {
  const _$InitialSetsState() : super._();

  @override
  String toString() {
    return 'SetsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialSetsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Datum> sets) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Datum> sets)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Datum> sets)? loaded,
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
    required TResult Function(InitialSetsState value) initial,
    required TResult Function(LoadedSetsState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSetsState extends SetsState {
  const factory InitialSetsState() = _$InitialSetsState;
  const InitialSetsState._() : super._();
}

/// @nodoc
abstract class $LoadedSetsStateCopyWith<$Res> {
  factory $LoadedSetsStateCopyWith(
          LoadedSetsState value, $Res Function(LoadedSetsState) then) =
      _$LoadedSetsStateCopyWithImpl<$Res>;
  $Res call({List<Datum> sets});
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
  }) {
    return _then(LoadedSetsState(
      sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc

class _$LoadedSetsState extends LoadedSetsState {
  const _$LoadedSetsState(this.sets) : super._();

  @override
  final List<Datum> sets;

  @override
  String toString() {
    return 'SetsState.loaded(sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedSetsState &&
            const DeepCollectionEquality().equals(other.sets, sets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sets));

  @JsonKey(ignore: true)
  @override
  $LoadedSetsStateCopyWith<LoadedSetsState> get copyWith =>
      _$LoadedSetsStateCopyWithImpl<LoadedSetsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Datum> sets) loaded,
  }) {
    return loaded(sets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Datum> sets)? loaded,
  }) {
    return loaded?.call(sets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Datum> sets)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(sets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSetsState value) initial,
    required TResult Function(LoadedSetsState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSetsState value)? initial,
    TResult Function(LoadedSetsState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedSetsState extends SetsState {
  const factory LoadedSetsState(List<Datum> sets) = _$LoadedSetsState;
  const LoadedSetsState._() : super._();

  List<Datum> get sets;
  @JsonKey(ignore: true)
  $LoadedSetsStateCopyWith<LoadedSetsState> get copyWith =>
      throw _privateConstructorUsedError;
}
