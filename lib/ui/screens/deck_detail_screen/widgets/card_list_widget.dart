import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../data/models/card_list.dart';
import '../../../../data/models/card_with_offline_data.dart';
import '../../../navigation/main_navigation.dart';
import 'deck_detail_widgets.dart';

class CardListWidget extends StatelessWidget {
  final int deckId;
  final List cardDBList;

  const CardListWidget({
    Key? key,
    required this.deckId,
    required this.cardDBList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final cardId = _getCardData(
            cardDBList[index].cardData!,
          ).id;
          final supertype = _getCardData(
            cardDBList[index].cardData!,
          ).supertype.toString();
          final type = _getCardData(
                    cardDBList[index].cardData!,
                  ).types.toString() ==
                  'null'
              ? ' '
              : _getCardData(
                  cardDBList[index].cardData!,
                ).types.toString();
          final CardDatum cardDatum = _getCardData(cardDBList[index].cardData!);

          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                MainNavigationRouteNames.cardDetailScreen,
                arguments: CardWithOfflineData(
                  cardDatum: cardDatum,
                  imageLarge: cardDBList[index].imageLarge,
                ),
              );
            },
            child: ListItemWidget(
              image: cardDBList[index].imageSmall,
              name: cardDBList[index].name,
              deckId: deckId,
              cardId: cardId,
              type: type,
              supertype: supertype,
            ),
          );
        },
        childCount: cardDBList.length,
      ),
    );
  }

  CardDatum _getCardData(String data) {
    final jsonData = jsonDecode(data);
    final card = CardDatum.fromJson(jsonData);

    return card;
  }
}
