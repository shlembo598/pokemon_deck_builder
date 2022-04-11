import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../../generated/l10n.dart';
import '../../../theme/app_themes.dart';

class DeckDeleteWarningDialogWidget extends StatelessWidget {
  final int deckId;
  final String deckName;

  const DeckDeleteWarningDialogWidget({
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
