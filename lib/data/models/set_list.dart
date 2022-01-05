import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_list.freezed.dart';
part 'set_list.g.dart';

@freezed
class SetList with _$SetList {
  @JsonSerializable(explicitToJson: true)
  const factory SetList({
    required List<SetDatum> data,
    required int page,
    required int pageSize,
    required int count,
    required int totalCount,
  }) = _SetList;

  factory SetList.fromJson(Map<String, dynamic> json) =>
      _$SetListFromJson(json);
}

@freezed
class SetDatum with _$SetDatum {
  const factory SetDatum({
    required String id,
    required String name,
    required String series,
    required int printedTotal,
    required int total,
    required Legalities? legalities,
    required String? ptcgoCode,
    required String? releaseDate,
    required String? updatedAt,
    required Images images,
  }) = _SetDatum;

  factory SetDatum.fromJson(Map<String, dynamic> json) =>
      _$SetDatumFromJson(json);
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
