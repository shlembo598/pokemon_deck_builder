import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/data/blocs/deck_bloc/deck_bloc.dart';
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
    final state = context.watch<DeckBloc>().state;

    return Scaffold(
      body: state.when(
        initial: (decksList) => const CircularProgressIndicator(),
        loaded: (decksList) => decksList != null && decksList.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: decksList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 5,
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      tileColor: Theme.of(context).cardColor,
                      title: Text(decksList[index].name ?? ' '),
                      leading: Text((index + 1).toString()),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          final id = decksList[index].id;
                          context.read<DeckBloc>().add(DeckEvent.delete(id!));
                        },
                      ),
                    ),
                  );
                },
              )
            : const EmptyDecksWidget(),
      ),
      floatingActionButton: state.when(
        initial: (decksList) => null,
        loaded: (decksList) =>
            decksList != null && decksList.isEmpty ? null : const _AddDeckFB(),
      ),
    );
  }
}

class _AddDeckFB extends StatelessWidget {
  const _AddDeckFB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        context.read<DeckBloc>().add(const DeckEvent.create('Deck'));
      },
      child: const Icon(FontAwesomeIcons.plus),
    );
  }
}

class EmptyDecksWidget extends StatelessWidget {
  const EmptyDecksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          _AddDeckFB(),
        ],
      ),
    );
  }
}
