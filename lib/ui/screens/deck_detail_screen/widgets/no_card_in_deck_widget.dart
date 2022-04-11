import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class NoCardInDeckWidget extends StatelessWidget {
  const NoCardInDeckWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(S.of(context).deckDetailScreen_emptyDeck));
  }
}
