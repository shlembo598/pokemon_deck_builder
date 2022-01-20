import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck_cards_db_model.freezed.dart';
part 'deck_cards_db_model.g.dart';

const String deckCardsDBModel = 'deck_cards';

@freezed
class DeckCardsDBModel with _$DeckCardsDBModel {
  const factory DeckCardsDBModel({
    @JsonKey(name: 'id', disallowNullValue: true) int? id,
    @JsonKey(name: 'cardId', required: true, disallowNullValue: true)
        String? cardId,
    @JsonKey(name: 'deckId', required: true, disallowNullValue: true)
        int? deckId,
  }) = _DeckCardsDBModel;

  factory DeckCardsDBModel.fromJson(Map<String, dynamic> json) =>
      _$DeckCardsDBModelFromJson(json);
}

class DeckCardsDFields {
  static const String id = 'id';
  static const String cardId = 'card_id';
  static const String deckId = 'deck_id';
}
