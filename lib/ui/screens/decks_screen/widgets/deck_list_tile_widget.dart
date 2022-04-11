import 'package:flutter/material.dart';

import '../../../../data/db/db_models/deck_db_model.dart';
import '../../../navigation/main_navigation.dart';
import 'deck_delete_warning_dialog_widget.dart';

class DeckListTileWidget extends StatelessWidget {
  final int? id;
  final int index;
  final String? name;

  const DeckListTileWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        final deck = DeckDBModel(
          id: id,
          name: name,
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
      title: Text(name ?? ' '),
      leading: Text((index + 1).toString()),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => DeckDeleteWarningDialogWidget(
              deckId: id!,
              deckName: name ?? '',
            ),
          );
        },
      ),
    );
  }
}
