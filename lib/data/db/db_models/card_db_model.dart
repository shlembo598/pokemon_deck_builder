import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/utils/unit8list_converter.dart';

part 'card_db_model.freezed.dart';
part 'card_db_model.g.dart';

const String cardDbModelTableName = 'card';

class CardDbFields {
  static final List<String> values = [
    id,
    name,
    cardData,
    imageSmall,
    imageLarge
  ];

  static const String id = 'id';
  static const String name = 'name';
  static const String cardData = 'card_data';
  static const String imageSmall = 'image_small';
  static const String imageLarge = 'image_large';
}

@freezed
class CardDBModel with _$CardDBModel {
  const factory CardDBModel(
    @JsonKey(name: 'id', required: true, disallowNullValue: true) String id,
    @JsonKey(name: 'name', required: true, disallowNullValue: true) String name,
    @JsonKey(name: 'card_data', required: true, disallowNullValue: true)
        String cardData,
    @JsonKey(name: 'image_small') @Unit8ListConverter() Uint8List imageSmall,
    @JsonKey(name: 'image_large') @Unit8ListConverter() Uint8List imageLarge,
  ) = _CardDBModel;

  factory CardDBModel.fromJson(Map<String, dynamic> json) =>
      _$CardDBModelFromJson(json);
}
