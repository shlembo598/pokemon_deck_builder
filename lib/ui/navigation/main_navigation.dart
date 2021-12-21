import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/factories/screen_factory.dart';

abstract class MainNavigationRouteNames {
  static const mainScreen = '/';
  static const searchScreen = '/search_screen';
  static const exploreScreen = '/explore_screen';
  static const decksScreen = '/decks_screen';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.mainScreen: (_) => _screenFactory.makeMainScreen(),
    MainNavigationRouteNames.searchScreen: (_) =>
        _screenFactory.makeSearchScreen(),
    MainNavigationRouteNames.exploreScreen: (_) =>
        _screenFactory.makeExploreScreen(),
    MainNavigationRouteNames.decksScreen: (_) =>
        _screenFactory.makeDecksScreen(),
  };
}
