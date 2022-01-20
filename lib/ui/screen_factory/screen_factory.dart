import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/blocs/card_list_bloc/card_list_bloc.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/data/repositories/cards_repository.dart';
import 'package:pokemon_deck_builder/ui/screens/card_detail_screen/card_datail_screen.dart';
import 'package:pokemon_deck_builder/ui/screens/screens.dart';
import 'package:pokemon_deck_builder/ui/screens/set_screen/set_screen.dart';

class ScreenFactory {
  final CardsRepository cardsRepository = CardsRepository();

  Widget makeMainScreen() {
    return const MainScreen();
  }

  Widget makeSearchScreen() {
    return BlocProvider<CardSearchBloc>(
      create: (context) => CardSearchBloc(cardsRepository),
      child: SearchScreen(),
    );
  }

  Widget makeExploreScreen() {
    return BlocProvider<SetsBloc>(
      create: (context) =>
          SetsBloc(cardsRepository)..add(const SetsEvent.create()),
      child: const ExploreScreen(),
    );
  }

  Widget makeSetScreen(SetDatum set) {
    return BlocProvider<CardListBloc>(
      create: (context) =>
          CardListBloc(cardsRepository)..add(CardListEvent.create(set.id)),
      child: SetScreen(
        set: set,
      ),
    );
  }

  Widget makeCardDetailScreen(CardDatum card) {
    return CardDetailScreen(
      card: card,
    );
  }

  Widget makeDecksScreen() {
    return const DecksScreen();
  }
}
