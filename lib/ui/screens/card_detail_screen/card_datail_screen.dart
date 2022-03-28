import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/models/card_with_offline_data.dart';
import 'package:pokemon_deck_builder/data/utils/date_formatter.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/widgets/network_image_widget.dart';

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
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
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
                      Row(
                        children: const [
                          Icon(Icons.arrow_back),
                          Spacer(),
                        ],
                      ),
                      _BaseCardInfoWidget(
                        rarity: rarity,
                        cardNumber: cardNumber,
                        cardsInSet: cardsInSet ?? ' ',
                      ),
                      SizedBox(
                        height: 550,
                        child: imageLarge != null
                            ? Image.memory(
                                imageLarge,
                                fit: BoxFit.fitHeight,
                              )
                            : NetworkImageWidget(
                                imageUrl: imageUrl!,
                              ),
                      ),
                      Text(
                        cardName ?? '',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      _MarketPriceWidget(card: card!.cardDatum!),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BaseCardInfoWidget extends StatelessWidget {
  const _BaseCardInfoWidget({
    Key? key,
    required this.rarity,
    required this.cardNumber,
    required this.cardsInSet,
  }) : super(key: key);

  final String? rarity;
  final String? cardNumber;
  final String cardsInSet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Text(
            rarity ?? '',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const Spacer(),
          Text(
            cardNumber ?? '',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            ' / $cardsInSet',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class _MarketPriceWidget extends StatelessWidget {
  final CardDatum card;

  const _MarketPriceWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? tcgPlayerNormalPrice =
        card.tcgplayer?.prices?.normal?.market.toString();
    final String? tcgPlayerHoloPrice =
        card.tcgplayer?.prices?.holofoil?.market.toString();
    final String? tcgPlayerDate =
        DateFormatter.formatDate(card.tcgplayer?.updatedAt);
    final String? cardMarketPrice =
        card.cardmarket?.prices?['averageSellPrice'].toString();
    final String? cardMarketDate =
        DateFormatter.formatDate(card.cardmarket?.updatedAt);
    final String? price = tcgPlayerNormalPrice ?? tcgPlayerHoloPrice;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          S.of(context).cardDetailScreen_pricingTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
        _MarketPriceItemWidget(
          marketName: 'TcgPlayer',
          normalPrice: price ?? ' ',
          date: tcgPlayerDate ?? ' ',
        ),
        _MarketPriceItemWidget(
          marketName: 'CardMarket',
          normalPrice: cardMarketPrice ?? ' ',
          date: cardMarketDate ?? ' ',
        ),
      ],
    );
  }
}

class _MarketPriceItemWidget extends StatelessWidget {
  final String marketName;
  final String normalPrice;
  final String date;

  const _MarketPriceItemWidget({
    Key? key,
    required this.marketName,
    required this.normalPrice,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).canvasColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                marketName,
                style: Theme.of(context).textTheme.headline6,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price: $normalPrice \uFF04',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    'Date: $date',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
