import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class InfoButtonWidget extends StatelessWidget {
  const InfoButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => _showInfoDialog(context),
      icon: const Icon(Icons.info),
    );
  }

  void _showInfoDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(S.of(context).close),
            ),
          ],
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text(S.of(context).deckInfo_dialog_text),
              ],
            ),
          ),
        ),
      );
}
