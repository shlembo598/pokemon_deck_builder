// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Set _$SetFromJson(Map<String, dynamic> json) {
  return _Set.fromJson(json);
}

/// @nodoc
class _$SetTearOff {
  const _$SetTearOff();

  _Set call(
      {required List<Datum> data,
      required int page,
      required int pageSize,
      required int count,
      required int totalCount}) {
    return _Set(
      data: data,
      page: page,
      pageSize: pageSize,
      count: count,
      totalCount: totalCount,
    );
  }

  Set fromJson(Map<String, Object?> json) {
    return Set.fromJson(json);
  }
}

/// @nodoc
const $Set = _$SetTearOff();

/// @nodoc
mixin _$Set {
  List<Datum> get data => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetCopyWith<Set> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res>;
  $Res call(
      {List<Datum> data, int page, int pageSize, int count, int totalCount});
}

/// @nodoc
class _$SetCopyWithImpl<$Res> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  final Set _value;
  // ignore: unused_field
  final $Res Function(Set) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? count = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SetCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$SetCopyWith(_Set value, $Res Function(_Set) then) =
      __$SetCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Datum> data, int page, int pageSize, int count, int totalCount});
}

/// @nodoc
class __$SetCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res>
    implements _$SetCopyWith<$Res> {
  __$SetCopyWithImpl(_Set _value, $Res Function(_Set) _then)
      : super(_value, (v) => _then(v as _Set));

  @override
  _Set get _value => super._value as _Set;

  @override
  $Res call({
    Object? data = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? count = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_Set(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Set implements _Set {
  const _$_Set(
      {required this.data,
      required this.page,
      required this.pageSize,
      required this.count,
      required this.totalCount});

  factory _$_Set.fromJson(Map<String, dynamic> json) => _$$_SetFromJson(json);

  @override
  final List<Datum> data;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int count;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'Set(data: $data, page: $page, pageSize: $pageSize, count: $count, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Set &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(totalCount));

  @JsonKey(ignore: true)
  @override
  _$SetCopyWith<_Set> get copyWith =>
      __$SetCopyWithImpl<_Set>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetToJson(this);
  }
}

abstract class _Set implements Set {
  const factory _Set(
      {required List<Datum> data,
      required int page,
      required int pageSize,
      required int count,
      required int totalCount}) = _$_Set;

  factory _Set.fromJson(Map<String, dynamic> json) = _$_Set.fromJson;

  @override
  List<Datum> get data;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get count;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$SetCopyWith<_Set> get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
class _$DatumTearOff {
  const _$DatumTearOff();

  _Datum call(
      {required String? id,
      required String? name,
      required String? series,
      required int? printedTotal,
      required int? total,
      required Legalities? legalities,
      required String? ptcgoCode,
      required String? releaseDate,
      required String? updatedAt,
      required Images images}) {
    return _Datum(
      id: id,
      name: name,
      series: series,
      printedTotal: printedTotal,
      total: total,
      legalities: legalities,
      ptcgoCode: ptcgoCode,
      releaseDate: releaseDate,
      updatedAt: updatedAt,
      images: images,
    );
  }

  Datum fromJson(Map<String, Object?> json) {
    return Datum.fromJson(json);
  }
}

/// @nodoc
const $Datum = _$DatumTearOff();

/// @nodoc
mixin _$Datum {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get series => throw _privateConstructorUsedError;
  int? get printedTotal => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  Legalities? get legalities => throw _privateConstructorUsedError;
  String? get ptcgoCode => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  Images get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? series,
      int? printedTotal,
      int? total,
      Legalities? legalities,
      String? ptcgoCode,
      String? releaseDate,
      String? updatedAt,
      Images images});

  $LegalitiesCopyWith<$Res>? get legalities;
  $ImagesCopyWith<$Res> get images;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res> implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  final Datum _value;
  // ignore: unused_field
  final $Res Function(Datum) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? series = freezed,
    Object? printedTotal = freezed,
    Object? total = freezed,
    Object? legalities = freezed,
    Object? ptcgoCode = freezed,
    Object? releaseDate = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      printedTotal: printedTotal == freezed
          ? _value.printedTotal
          : printedTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      legalities: legalities == freezed
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities?,
      ptcgoCode: ptcgoCode == freezed
          ? _value.ptcgoCode
          : ptcgoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images,
    ));
  }

  @override
  $LegalitiesCopyWith<$Res>? get legalities {
    if (_value.legalities == null) {
      return null;
    }

    return $LegalitiesCopyWith<$Res>(_value.legalities!, (value) {
      return _then(_value.copyWith(legalities: value));
    });
  }

  @override
  $ImagesCopyWith<$Res> get images {
    return $ImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value));
    });
  }
}

/// @nodoc
abstract class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) then) =
      __$DatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? series,
      int? printedTotal,
      int? total,
      Legalities? legalities,
      String? ptcgoCode,
      String? releaseDate,
      String? updatedAt,
      Images images});

  @override
  $LegalitiesCopyWith<$Res>? get legalities;
  @override
  $ImagesCopyWith<$Res> get images;
}

/// @nodoc
class __$DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(_Datum _value, $Res Function(_Datum) _then)
      : super(_value, (v) => _then(v as _Datum));

  @override
  _Datum get _value => super._value as _Datum;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? series = freezed,
    Object? printedTotal = freezed,
    Object? total = freezed,
    Object? legalities = freezed,
    Object? ptcgoCode = freezed,
    Object? releaseDate = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_Datum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      printedTotal: printedTotal == freezed
          ? _value.printedTotal
          : printedTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      legalities: legalities == freezed
          ? _value.legalities
          : legalities // ignore: cast_nullable_to_non_nullable
              as Legalities?,
      ptcgoCode: ptcgoCode == freezed
          ? _value.ptcgoCode
          : ptcgoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {required this.id,
      required this.name,
      required this.series,
      required this.printedTotal,
      required this.total,
      required this.legalities,
      required this.ptcgoCode,
      required this.releaseDate,
      required this.updatedAt,
      required this.images});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? series;
  @override
  final int? printedTotal;
  @override
  final int? total;
  @override
  final Legalities? legalities;
  @override
  final String? ptcgoCode;
  @override
  final String? releaseDate;
  @override
  final String? updatedAt;
  @override
  final Images images;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, series: $series, printedTotal: $printedTotal, total: $total, legalities: $legalities, ptcgoCode: $ptcgoCode, releaseDate: $releaseDate, updatedAt: $updatedAt, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Datum &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.series, series) &&
            const DeepCollectionEquality()
                .equals(other.printedTotal, printedTotal) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.legalities, legalities) &&
            const DeepCollectionEquality().equals(other.ptcgoCode, ptcgoCode) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(series),
      const DeepCollectionEquality().hash(printedTotal),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(legalities),
      const DeepCollectionEquality().hash(ptcgoCode),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$DatumCopyWith<_Datum> get copyWith =>
      __$DatumCopyWithImpl<_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(this);
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {required String? id,
      required String? name,
      required String? series,
      required int? printedTotal,
      required int? total,
      required Legalities? legalities,
      required String? ptcgoCode,
      required String? releaseDate,
      required String? updatedAt,
      required Images images}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get series;
  @override
  int? get printedTotal;
  @override
  int? get total;
  @override
  Legalities? get legalities;
  @override
  String? get ptcgoCode;
  @override
  String? get releaseDate;
  @override
  String? get updatedAt;
  @override
  Images get images;
  @override
  @JsonKey(ignore: true)
  _$DatumCopyWith<_Datum> get copyWith => throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
class _$ImagesTearOff {
  const _$ImagesTearOff();

  _Images call({required String symbol, required String logo}) {
    return _Images(
      symbol: symbol,
      logo: logo,
    );
  }

  Images fromJson(Map<String, Object?> json) {
    return Images.fromJson(json);
  }
}

/// @nodoc
const $Images = _$ImagesTearOff();

/// @nodoc
mixin _$Images {
  String get symbol => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res>;
  $Res call({String symbol, String logo});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res> implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  final Images _value;
  // ignore: unused_field
  final $Res Function(Images) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$ImagesCopyWith(_Images value, $Res Function(_Images) then) =
      __$ImagesCopyWithImpl<$Res>;
  @override
  $Res call({String symbol, String logo});
}

/// @nodoc
class __$ImagesCopyWithImpl<$Res> extends _$ImagesCopyWithImpl<$Res>
    implements _$ImagesCopyWith<$Res> {
  __$ImagesCopyWithImpl(_Images _value, $Res Function(_Images) _then)
      : super(_value, (v) => _then(v as _Images));

  @override
  _Images get _value => super._value as _Images;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? logo = freezed,
  }) {
    return _then(_Images(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Images implements _Images {
  const _$_Images({required this.symbol, required this.logo});

  factory _$_Images.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesFromJson(json);

  @override
  final String symbol;
  @override
  final String logo;

  @override
  String toString() {
    return 'Images(symbol: $symbol, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Images &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.logo, logo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(logo));

  @JsonKey(ignore: true)
  @override
  _$ImagesCopyWith<_Images> get copyWith =>
      __$ImagesCopyWithImpl<_Images>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesToJson(this);
  }
}

abstract class _Images implements Images {
  const factory _Images({required String symbol, required String logo}) =
      _$_Images;

  factory _Images.fromJson(Map<String, dynamic> json) = _$_Images.fromJson;

  @override
  String get symbol;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$ImagesCopyWith<_Images> get copyWith => throw _privateConstructorUsedError;
}

Legalities _$LegalitiesFromJson(Map<String, dynamic> json) {
  return _Legalities.fromJson(json);
}

/// @nodoc
class _$LegalitiesTearOff {
  const _$LegalitiesTearOff();

  _Legalities call({required String? unlimited}) {
    return _Legalities(
      unlimited: unlimited,
    );
  }

  Legalities fromJson(Map<String, Object?> json) {
    return Legalities.fromJson(json);
  }
}

/// @nodoc
const $Legalities = _$LegalitiesTearOff();

/// @nodoc
mixin _$Legalities {
  String? get unlimited => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegalitiesCopyWith<Legalities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegalitiesCopyWith<$Res> {
  factory $LegalitiesCopyWith(
          Legalities value, $Res Function(Legalities) then) =
      _$LegalitiesCopyWithImpl<$Res>;
  $Res call({String? unlimited});
}

/// @nodoc
class _$LegalitiesCopyWithImpl<$Res> implements $LegalitiesCopyWith<$Res> {
  _$LegalitiesCopyWithImpl(this._value, this._then);

  final Legalities _value;
  // ignore: unused_field
  final $Res Function(Legalities) _then;

  @override
  $Res call({
    Object? unlimited = freezed,
  }) {
    return _then(_value.copyWith(
      unlimited: unlimited == freezed
          ? _value.unlimited
          : unlimited // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LegalitiesCopyWith<$Res> implements $LegalitiesCopyWith<$Res> {
  factory _$LegalitiesCopyWith(
          _Legalities value, $Res Function(_Legalities) then) =
      __$LegalitiesCopyWithImpl<$Res>;
  @override
  $Res call({String? unlimited});
}

/// @nodoc
class __$LegalitiesCopyWithImpl<$Res> extends _$LegalitiesCopyWithImpl<$Res>
    implements _$LegalitiesCopyWith<$Res> {
  __$LegalitiesCopyWithImpl(
      _Legalities _value, $Res Function(_Legalities) _then)
      : super(_value, (v) => _then(v as _Legalities));

  @override
  _Legalities get _value => super._value as _Legalities;

  @override
  $Res call({
    Object? unlimited = freezed,
  }) {
    return _then(_Legalities(
      unlimited: unlimited == freezed
          ? _value.unlimited
          : unlimited // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Legalities implements _Legalities {
  const _$_Legalities({required this.unlimited});

  factory _$_Legalities.fromJson(Map<String, dynamic> json) =>
      _$$_LegalitiesFromJson(json);

  @override
  final String? unlimited;

  @override
  String toString() {
    return 'Legalities(unlimited: $unlimited)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Legalities &&
            const DeepCollectionEquality().equals(other.unlimited, unlimited));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(unlimited));

  @JsonKey(ignore: true)
  @override
  _$LegalitiesCopyWith<_Legalities> get copyWith =>
      __$LegalitiesCopyWithImpl<_Legalities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LegalitiesToJson(this);
  }
}

abstract class _Legalities implements Legalities {
  const factory _Legalities({required String? unlimited}) = _$_Legalities;

  factory _Legalities.fromJson(Map<String, dynamic> json) =
      _$_Legalities.fromJson;

  @override
  String? get unlimited;
  @override
  @JsonKey(ignore: true)
  _$LegalitiesCopyWith<_Legalities> get copyWith =>
      throw _privateConstructorUsedError;
}
