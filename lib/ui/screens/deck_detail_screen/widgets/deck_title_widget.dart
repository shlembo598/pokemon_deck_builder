import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../widgets/create_rename_deck_dialog_widget.dart';
import 'deck_detail_widgets.dart';

class DeckTitleWidget extends StatelessWidget {
  final int deckId;
  final String deckName;

  const DeckTitleWidget({
    Key? key,
    required this.deckId,
    required this.deckName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deckNameState = context.watch<DeckNameBloc>().state;
    final deckNameBloc = context.watch<DeckNameBloc>();

    return GestureDetector(
      onTap: () => _showRenameDeckDialog(context, deckId),
      child: BlocListener<DeckBloc, DeckState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            updated: (newDeckName) =>
                deckNameBloc.add(DeckNameEvent.update(newDeckName)),
          );
        },
        child: deckNameState.when(
          initial: () => TitleTextWidget(deckName: deckName),
          updated: (newDeckName) => TitleTextWidget(deckName: newDeckName),
        ),
      ),
    );
  }

  void _showRenameDeckDialog(BuildContext context, int deckId) => showDialog(
        context: context,
        builder: (context) => CreateRenameDeckDialogWidget(
          deckOldId: deckId,
        ),
      );
}
