import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/deck_bloc/deck_bloc.dart';

import 'widgets/decks_screen_widgets.dart';

class DecksScreen extends StatelessWidget {
  const DecksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DeckBloc>().state;

    return Scaffold(
      body: state.when(
        initial: (decksList) => const CircularProgressIndicator(),
        loaded: (decksList) => decksList != null && decksList.isNotEmpty
            ? DeckListWidget(
                decksList: decksList,
              )
            : const EmptyDecksWidget(),
        updated: (_) => const SizedBox.shrink(),
      ),
      floatingActionButton: const AddDeckWidget(),
    );
  }
}
