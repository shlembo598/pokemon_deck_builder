import 'package:flutter/material.dart';

class CardNameWidget extends StatelessWidget {
  const CardNameWidget({
    Key? key,
    required this.cardName,
  }) : super(key: key);

  final String? cardName;

  @override
  Widget build(BuildContext context) {
    return Text(
      cardName ?? '',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
