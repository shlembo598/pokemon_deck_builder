import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    Key? key,
    required this.deckName,
  }) : super(key: key);

  final String deckName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(deckName),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.edit,
          size: 15,
        ),
      ],
    );
  }
}
