import 'package:flutter/material.dart';

import '../../../../data/models/card_list.dart';
import '../../../../data/utils/date_formatter.dart';
import '../../../../generated/l10n.dart';
import 'card_detail_widgets.dart';

class MarketPriceWidget extends StatelessWidget {
  final CardDatum card;

  const MarketPriceWidget({Key? key, required this.card}) : super(key: key);

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
        MarketPriceItemWidget(
          marketName: 'TcgPlayer',
          normalPrice: price ?? ' ',
          date: tcgPlayerDate ?? ' ',
        ),
        MarketPriceItemWidget(
          marketName: 'CardMarket',
          normalPrice: cardMarketPrice ?? ' ',
          date: cardMarketDate ?? ' ',
        ),
      ],
    );
  }
}
