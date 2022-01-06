import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/resources/app_images.dart';

class DecksScreen extends StatelessWidget {
  const DecksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Sets screen rebuild');

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => const EmptyDecksDialogWidget(),
                );
              },
              child: const Text('Test'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(FontAwesomeIcons.plus),
      ),
    );
  }
}

class EmptyDecksDialogWidget extends StatelessWidget {
  const EmptyDecksDialogWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _DialogDetailsWidget(),
              FloatingActionButton(
                onPressed: () => Navigator.pop(context),
                child: const Icon(FontAwesomeIcons.plus),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DialogDetailsWidget extends StatelessWidget {
  const _DialogDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Image.asset(AppImages.cardDeck),
        ),
        Text(
          S.of(context).decks_screen_title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: dialogTextColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            S.of(context).decksScreen_noDecksMessage,
            style: const TextStyle(
              fontSize: 18,
              color: dialogTextColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
