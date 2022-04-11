import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';

import 'widgets/deck_detail_widgets.dart';

class DeckDetailScreen extends StatefulWidget {
  final String deckName;
  final int deckId;

  const DeckDetailScreen({
    Key? key,
    required this.deckName,
    required this.deckId,
  }) : super(key: key);

  @override
  _DeckDetailScreenState createState() => _DeckDetailScreenState();
}

class _DeckDetailScreenState extends State<DeckDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final deckDetailState = context.watch<DeckDetailBloc>().state;
    final int deckId = widget.deckId;
    final String deckName = widget.deckName;

    return Scaffold(
      appBar: AppBar(
        actions: const [
          InfoButtonWidget(),
        ],
        title: DeckTitleWidget(
          deckId: deckId,
          deckName: deckName,
        ),
      ),
      body: deckDetailState.maybeWhen(
        orElse: () => const NoCardInDeckWidget(),
        loaded: (cardDBList) => cardDBList != null && cardDBList.isNotEmpty
            ? DeckCardsWidget(
                deckId: deckId,
                cardDbList: cardDBList,
              )
            : const NoCardInDeckWidget(),
      ),
    );
  }
}
