import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/data/blocs/deck_bloc/deck_bloc.dart';
import 'package:pokemon_deck_builder/data/db/db_models/deck_db_model.dart';
import 'package:pokemon_deck_builder/data/db/pokemon_db.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/resources/app_images.dart';
import 'package:pokemon_deck_builder/ui/navigation/main_navigation.dart';
import 'package:pokemon_deck_builder/ui/theme/app_themes.dart';
import 'package:pokemon_deck_builder/ui/widgets/add_deck_db_widget.dart';

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
            ? Scrollbar(
                child: ListView.builder(
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
                        onTap: () {
                          final deck = DeckDBModel(
                            id: decksList[index].id,
                            name: decksList[index].name,
                          );
                          Navigator.pushNamed(
                            context,
                            MainNavigationRouteNames.deckDetailScreen,
                            arguments: deck,
                          );
                        },
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
                            final deckName = decksList[index].name ?? ' ';
                            showDialog(
                              context: context,
                              builder: (context) => _DeckDeleteWarningDialog(
                                deckId: id!,
                                deckName: deckName,
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              )
            : const EmptyDecksWidget(),
      ),
      floatingActionButton: state.when(
        initial: (decksList) => null,
        loaded: (decksList) => decksList != null && decksList.isEmpty
            ? null
            : const AddDeckFBWidget(),
      ),
    );
  }
}

class _DeckDeleteWarningDialog extends StatelessWidget {
  final int deckId;
  final String deckName;

  const _DeckDeleteWarningDialog({
    Key? key,
    required this.deckId,
    required this.deckName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        Theme.of(context).colorScheme.secondary,
      ),
    );

    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      contentPadding: const EdgeInsets.only(top: 10.0),
      content: SizedBox(
        width: 200,
        height: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.questionCircle,
              size: 50,
              color: iconColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${S.of(context).decksScreen_deleteDeckDialogTitle} $deckName',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<DeckBloc>().add(DeckEvent.delete(deckId));
                    Navigator.pop(context);
                  },
                  child: Text(S.of(context).yes),
                  style: buttonStyle,
                ),
                const SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(S.of(context).no),
                  style: buttonStyle,
                ),
              ],
            ),
          ],
        ),
      ),
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
          const AddDeckFBWidget(),
        ],
      ),
    );
  }
}
