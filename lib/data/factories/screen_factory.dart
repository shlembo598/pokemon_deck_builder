import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/ui/screens/screens.dart';

class ScreenFactory {
  Widget makeMainScreen() {
    return const MainScreen();
  }

  Widget makeSearchScreen() {
    return const SearchScreen();
  }

  Widget makeExploreScreen() {
    return BlocProvider<SetsBloc>(
      create: (context) => SetsBloc()..add(const SetsEvent.initial()),
      child: const ExploreScreen(),
    );
  }

  Widget makeDecksScreen() {
    return const DecksScreen();
  }
}
