import 'package:flutter/material.dart';

import '../../../../data/db/db_models/deck_db_model.dart';
import 'decks_screen_widgets.dart';

class DeckListWidget extends StatelessWidget {
  final List<DeckDBModel> decksList;

  const DeckListWidget({
    Key? key,
    required this.decksList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: decksList.length,
        itemBuilder: (BuildContext context, int index) {
          final id = decksList[index].id;
          final deckName = decksList[index].name;

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5,
            ),
            child: DeckListTileWidget(
              name: deckName,
              id: id,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
