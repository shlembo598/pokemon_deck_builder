import 'package:freezed_annotation/freezed_annotation.dart';

part 'set.freezed.dart';
part 'set.g.dart';

@freezed
class Set with _$Set {
  @JsonSerializable(explicitToJson: true)
  const factory Set({
    required List<Datum> data,
    required int page,
    required int pageSize,
    required int count,
    required int totalCount,
  }) = _Set;

  factory Set.fromJson(Map<String, dynamic> json) => _$SetFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    required String? id,
    required String? name,
    required String? series,
    required int? printedTotal,
    required int? total,
    required Legalities? legalities,
    required String? ptcgoCode,
    required String? releaseDate,
    required String? updatedAt,
    required Images images,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    required String symbol,
    required String logo,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class Legalities with _$Legalities {
  const factory Legalities({
    required String? unlimited,
  }) = _Legalities;

  factory Legalities.fromJson(Map<String, dynamic> json) =>
      _$LegalitiesFromJson(json);
}
