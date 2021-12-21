// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardEventTearOff {
  const _$CardEventTearOff();

  InitialCardEvent initial() {
    return const InitialCardEvent();
  }

  ReadCardEvent read() {
    return const ReadCardEvent();
  }

  UpdateCardEvent update() {
    return const UpdateCardEvent();
  }

  DeleteCardEvent delete() {
    return const DeleteCardEvent();
  }
}

/// @nodoc
const $CardEvent = _$CardEventTearOff();

/// @nodoc
mixin _$CardEvent {
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
    required TResult Function(InitialCardEvent value) initial,
    required TResult Function(ReadCardEvent value) read,
    required TResult Function(UpdateCardEvent value) update,
    required TResult Function(DeleteCardEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEventCopyWith<$Res> {
  factory $CardEventCopyWith(CardEvent value, $Res Function(CardEvent) then) =
      _$CardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardEventCopyWithImpl<$Res> implements $CardEventCopyWith<$Res> {
  _$CardEventCopyWithImpl(this._value, this._then);

  final CardEvent _value;
  // ignore: unused_field
  final $Res Function(CardEvent) _then;
}

/// @nodoc
abstract class $InitialCardEventCopyWith<$Res> {
  factory $InitialCardEventCopyWith(
          InitialCardEvent value, $Res Function(InitialCardEvent) then) =
      _$InitialCardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCardEventCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $InitialCardEventCopyWith<$Res> {
  _$InitialCardEventCopyWithImpl(
      InitialCardEvent _value, $Res Function(InitialCardEvent) _then)
      : super(_value, (v) => _then(v as InitialCardEvent));

  @override
  InitialCardEvent get _value => super._value as InitialCardEvent;
}

/// @nodoc

class _$InitialCardEvent extends InitialCardEvent {
  const _$InitialCardEvent() : super._();

  @override
  String toString() {
    return 'CardEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialCardEvent);
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
    required TResult Function(InitialCardEvent value) initial,
    required TResult Function(ReadCardEvent value) read,
    required TResult Function(UpdateCardEvent value) update,
    required TResult Function(DeleteCardEvent value) delete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCardEvent extends CardEvent {
  const factory InitialCardEvent() = _$InitialCardEvent;
  const InitialCardEvent._() : super._();
}

/// @nodoc
abstract class $ReadCardEventCopyWith<$Res> {
  factory $ReadCardEventCopyWith(
          ReadCardEvent value, $Res Function(ReadCardEvent) then) =
      _$ReadCardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadCardEventCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $ReadCardEventCopyWith<$Res> {
  _$ReadCardEventCopyWithImpl(
      ReadCardEvent _value, $Res Function(ReadCardEvent) _then)
      : super(_value, (v) => _then(v as ReadCardEvent));

  @override
  ReadCardEvent get _value => super._value as ReadCardEvent;
}

/// @nodoc

class _$ReadCardEvent extends ReadCardEvent {
  const _$ReadCardEvent() : super._();

  @override
  String toString() {
    return 'CardEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReadCardEvent);
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
    required TResult Function(InitialCardEvent value) initial,
    required TResult Function(ReadCardEvent value) read,
    required TResult Function(UpdateCardEvent value) update,
    required TResult Function(DeleteCardEvent value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadCardEvent extends CardEvent {
  const factory ReadCardEvent() = _$ReadCardEvent;
  const ReadCardEvent._() : super._();
}

/// @nodoc
abstract class $UpdateCardEventCopyWith<$Res> {
  factory $UpdateCardEventCopyWith(
          UpdateCardEvent value, $Res Function(UpdateCardEvent) then) =
      _$UpdateCardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateCardEventCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $UpdateCardEventCopyWith<$Res> {
  _$UpdateCardEventCopyWithImpl(
      UpdateCardEvent _value, $Res Function(UpdateCardEvent) _then)
      : super(_value, (v) => _then(v as UpdateCardEvent));

  @override
  UpdateCardEvent get _value => super._value as UpdateCardEvent;
}

/// @nodoc

class _$UpdateCardEvent extends UpdateCardEvent {
  const _$UpdateCardEvent() : super._();

  @override
  String toString() {
    return 'CardEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateCardEvent);
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
    required TResult Function(InitialCardEvent value) initial,
    required TResult Function(ReadCardEvent value) read,
    required TResult Function(UpdateCardEvent value) update,
    required TResult Function(DeleteCardEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateCardEvent extends CardEvent {
  const factory UpdateCardEvent() = _$UpdateCardEvent;
  const UpdateCardEvent._() : super._();
}

/// @nodoc
abstract class $DeleteCardEventCopyWith<$Res> {
  factory $DeleteCardEventCopyWith(
          DeleteCardEvent value, $Res Function(DeleteCardEvent) then) =
      _$DeleteCardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteCardEventCopyWithImpl<$Res> extends _$CardEventCopyWithImpl<$Res>
    implements $DeleteCardEventCopyWith<$Res> {
  _$DeleteCardEventCopyWithImpl(
      DeleteCardEvent _value, $Res Function(DeleteCardEvent) _then)
      : super(_value, (v) => _then(v as DeleteCardEvent));

  @override
  DeleteCardEvent get _value => super._value as DeleteCardEvent;
}

/// @nodoc

class _$DeleteCardEvent extends DeleteCardEvent {
  const _$DeleteCardEvent() : super._();

  @override
  String toString() {
    return 'CardEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteCardEvent);
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
    required TResult Function(InitialCardEvent value) initial,
    required TResult Function(ReadCardEvent value) read,
    required TResult Function(UpdateCardEvent value) update,
    required TResult Function(DeleteCardEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCardEvent value)? initial,
    TResult Function(ReadCardEvent value)? read,
    TResult Function(UpdateCardEvent value)? update,
    TResult Function(DeleteCardEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteCardEvent extends CardEvent {
  const factory DeleteCardEvent() = _$DeleteCardEvent;
  const DeleteCardEvent._() : super._();
}

/// @nodoc
class _$CardStateTearOff {
  const _$CardStateTearOff();

  InitialCardState initial() {
    return const InitialCardState();
  }
}

/// @nodoc
const $CardState = _$CardStateTearOff();

/// @nodoc
mixin _$CardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCardState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialCardState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCardState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res> implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  final CardState _value;
  // ignore: unused_field
  final $Res Function(CardState) _then;
}

/// @nodoc
abstract class $InitialCardStateCopyWith<$Res> {
  factory $InitialCardStateCopyWith(
          InitialCardState value, $Res Function(InitialCardState) then) =
      _$InitialCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCardStateCopyWithImpl<$Res> extends _$CardStateCopyWithImpl<$Res>
    implements $InitialCardStateCopyWith<$Res> {
  _$InitialCardStateCopyWithImpl(
      InitialCardState _value, $Res Function(InitialCardState) _then)
      : super(_value, (v) => _then(v as InitialCardState));

  @override
  InitialCardState get _value => super._value as InitialCardState;
}

/// @nodoc

class _$InitialCardState extends InitialCardState {
  const _$InitialCardState() : super._();

  @override
  String toString() {
    return 'CardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialCardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(InitialCardState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialCardState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCardState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCardState extends CardState {
  const factory InitialCardState() = _$InitialCardState;
  const InitialCardState._() : super._();
}
