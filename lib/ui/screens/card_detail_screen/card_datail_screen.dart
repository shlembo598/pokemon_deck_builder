import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/models/card_with_offline_data.dart';
import 'package:pokemon_deck_builder/ui/screens/card_detail_screen/widgets/card_detail_widgets.dart';

class CardDetailScreen extends StatelessWidget {
  final CardWithOfflineData? card;

  const CardDetailScreen({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? cardsInSet = card?.cardDatum?.set?.total.toString();
    final String? rarity = card?.cardDatum?.rarity;
    final String? cardNumber = card?.cardDatum?.number.toString();
    final String? imageUrl = card?.cardDatum?.images?.large;
    final Uint8List? imageLarge = card?.imageLarge;
    final String? cardName = card?.cardDatum?.name;

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).cardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BackArrowWidget(),
                    BaseCardInfoWidget(
                      rarity: rarity,
                      cardNumber: cardNumber,
                      cardsInSet: cardsInSet ?? ' ',
                    ),
                    CardFaceWidget(imageLarge: imageLarge, imageUrl: imageUrl),
                    CardNameWidget(cardName: cardName),
                    MarketPriceWidget(card: card!.cardDatum!),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
