import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/factories/screen_factory.dart';
import 'package:pokemon_deck_builder/data/models/set.dart';

abstract class MainNavigationRouteNames {
  static const mainScreen = '/';
  static const searchScreen = '/search_screen';
  static const exploreScreen = '/explore_screen';
  static const decksScreen = '/decks_screen';
  static const setScreen = '/explore_screen/set_screen';
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

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.setScreen:
        final set = settings.arguments as Datum;
        return MaterialPageRoute(
          builder: (_) => _screenFactory.makeSetScreen(set),
        );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (_) => widget);
    }
  }
}
