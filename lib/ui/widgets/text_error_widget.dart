import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

class NoDataTextWidget extends StatelessWidget {
  const NoDataTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).message_noData,
        style: smallText,
      ),
    );
  }
}
