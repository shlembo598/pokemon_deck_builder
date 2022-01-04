import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/models/set.dart';
import 'package:pokemon_deck_builder/ui/screens/screens.dart';
import 'package:pokemon_deck_builder/ui/screens/set_screen/set_screen.dart';

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

  Widget makeSetScreen(Datum set) {
    return BlocProvider<SetsBloc>(
      create: (context) => SetsBloc()..add(SetsEvent.initial()),
      child: SetScreen(
        set: set,
      ),
    );
  }

  Widget makeDecksScreen() {
    return const DecksScreen();
  }
}
