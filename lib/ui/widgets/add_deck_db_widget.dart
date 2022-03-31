import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'create_rename_deck_dialog_widget.dart';

class AddDeckFBWidget extends StatelessWidget {
  const AddDeckFBWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => const CreateRenameDeckDialogWidget(),
        );
      },
      child: const Icon(FontAwesomeIcons.plus),
    );
  }
}
