import 'package:flutter/material.dart';

class MarketPriceItemWidget extends StatelessWidget {
  final String marketName;
  final String normalPrice;
  final String date;

  const MarketPriceItemWidget({
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
