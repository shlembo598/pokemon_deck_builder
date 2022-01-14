import 'package:freezed_annotation/freezed_annotation.dart';

import 'card_list.dart';

part 'search_card_container.freezed.dart';

@freezed
class SearchCardContainer with _$SearchCardContainer {
  const factory SearchCardContainer({
    @Default([]) List<CardDatum> cards,
    @Default(1) int currentPage,
    @Default('') String searchParameter,
    @Default('0') String totalCards,
    @Default(false) bool showAsList,
  }) = _SearchCardContainer;
}
