import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../resources/app_images.dart';
import '../../../widgets/app_widgets.dart';

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
