// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sets _$$_SetsFromJson(Map<String, dynamic> json) => _$_Sets(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      count: json['count'] as int,
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$$_SetsToJson(_$_Sets instance) => <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'pageSize': instance.pageSize,
      'count': instance.count,
      'totalCount': instance.totalCount,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as String?,
      name: json['name'] as String?,
      series: json['series'] as String?,
      printedTotal: json['printedTotal'] as int?,
      total: json['total'] as int?,
      legalities: json['legalities'] == null
          ? null
          : Legalities.fromJson(json['legalities'] as Map<String, dynamic>),
      ptcgoCode: json['ptcgoCode'] as String?,
      releaseDate: json['releaseDate'] as String?,
      updatedAt: json['updatedAt'] as String?,
      images: Images.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'series': instance.series,
      'printedTotal': instance.printedTotal,
      'total': instance.total,
      'legalities': instance.legalities,
      'ptcgoCode': instance.ptcgoCode,
      'releaseDate': instance.releaseDate,
      'updatedAt': instance.updatedAt,
      'images': instance.images,
    };

_$_Images _$$_ImagesFromJson(Map<String, dynamic> json) => _$_Images(
      symbol: json['symbol'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'logo': instance.logo,
    };

_$_Legalities _$$_LegalitiesFromJson(Map<String, dynamic> json) =>
    _$_Legalities(
      unlimited: json['unlimited'] as String?,
    );

Map<String, dynamic> _$$_LegalitiesToJson(_$_Legalities instance) =>
    <String, dynamic>{
      'unlimited': instance.unlimited,
    };
