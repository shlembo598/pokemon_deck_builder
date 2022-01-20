import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck_db_model.freezed.dart';
part 'deck_db_model.g.dart';

const String deckDbModelTableName = 'deck';

@freezed
class DeckDBModel with _$DeckDBModel {
  const factory DeckDBModel({
    @JsonKey(name: 'id', disallowNullValue: true) int? id,
    @JsonKey(name: 'name', required: true, disallowNullValue: true)
        String? name,
  }) = _DeckDBModel;

  factory DeckDBModel.fromJson(Map<String, dynamic> json) =>
      _$DeckDBModelFromJson(json);
}

class DeckDbFields {
  static final List<String> values = [
    id,
    name,
  ];

  static const String id = 'id';
  static const String name = 'name';
}
