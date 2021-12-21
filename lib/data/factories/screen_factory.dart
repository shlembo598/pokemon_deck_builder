import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/ui/screens/screens.dart';

class ScreenFactory {
  Widget makeMainScreen() {
    return const MainScreen();
  }

  Widget makeSearchScreen() {
    return const SearchScreen();
  }

  Widget makeExploreScreen() {
    return const ExploreScreen();
  }

  Widget makeDecksScreen() {
    return const DecksScreen();
  }
}
