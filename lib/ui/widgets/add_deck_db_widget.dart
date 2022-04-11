import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';

import 'create_rename_deck_dialog_widget.dart';

class AddDeckFBWidget extends StatelessWidget {
  const AddDeckFBWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DeckBloc>().state;

    return state.maybeWhen(
      orElse: () => const SizedBox.shrink(),
      loaded: (decksList) => decksList != null && decksList.isEmpty
          ? const SizedBox.shrink()
          : FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const CreateRenameDeckDialogWidget(),
                );
              },
              child: const Icon(FontAwesomeIcons.plus),
            ),
    );
  }
}
