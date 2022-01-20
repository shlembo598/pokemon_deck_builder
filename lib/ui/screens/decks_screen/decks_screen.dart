import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/data/db/db_models/deck_db_model.dart';
import 'package:pokemon_deck_builder/data/db/pokemon_db.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/resources/app_images.dart';

class DecksScreen extends StatefulWidget {
  const DecksScreen({Key? key}) : super(key: key);

  @override
  State<DecksScreen> createState() => _DecksScreenState();
}

class _DecksScreenState extends State<DecksScreen> {
  @override
  void initState() {
    super.initState();
    // refreshDecks();
  }

  @override
  void dispose() {
    PokemonDB.instance.close();
    super.dispose();
  }

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
            ElevatedButton(
              onPressed: () async {
                final decks = await PokemonDB.instance.readAllDecks();
                log('------------------- New Deck ID is ${decks.toString()}');
              },
              child: const Text('Read All Decks'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          const newDeck = DeckDBModel(name: 'Test');
          final id = await PokemonDB.instance.createDeck(newDeck);
          log('------------------- New Deck ID is $id');
        },
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
          style: Theme.of(context).textTheme.headline3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            S.of(context).decksScreen_noDecksMessage,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
