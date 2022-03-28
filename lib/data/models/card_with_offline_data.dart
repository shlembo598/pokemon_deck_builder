import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';

part 'card_with_offline_data.freezed.dart';

@freezed
class CardWithOfflineData with _$CardWithOfflineData {
  const factory CardWithOfflineData({
    CardDatum? cardDatum,
    Uint8List? imageLarge,
  }) = _CardWithOfflineData;
}
