import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

class DecksScreen extends StatelessWidget {
  const DecksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Sets screen rebuild');

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).decks_screen_title),
      ),
    );
  }
}
