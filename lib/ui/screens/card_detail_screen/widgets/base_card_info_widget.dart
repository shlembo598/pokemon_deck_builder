import 'package:flutter/material.dart';

class BaseCardInfoWidget extends StatelessWidget {
  const BaseCardInfoWidget({
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
