import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../../data/db/db_models/card_db_model.dart';
import 'deck_detail_widgets.dart';

class DeckCardsWidget extends StatelessWidget {
  final List<CardDBModel> cardDbList;
  const DeckCardsWidget({
    Key? key,
    required this.deckId,
    required this.cardDbList,
  }) : super(key: key);

  final int deckId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CardToDeckBloc, CardToDeckState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => null,
          removed: () => context.read<DeckDetailBloc>()
            ..add(DeckDetailEvent.refresh(
              deckId,
            )),
        );
      },
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: DeckStatisticsWidget()),
          CardListWidget(
            deckId: deckId,
            cardDBList: cardDbList,
          ),
        ],
      ),
    );
  }
}
