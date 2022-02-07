import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/db/db_models/deck_db_model.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/ui/screen_factory/screen_factory.dart';

abstract class MainNavigationRouteNames {
  static const mainScreen = '/';
  static const searchScreen = '/search_screen';
  static const exploreScreen = '/explore_screen';
  static const decksScreen = '/decks_screen';
  static const deckDetailScreen = '/decks_screen/deck_detail_screen';
  static const setScreen = '/explore_screen/set_screen';
  static const cardDetailScreen =
      '/explore_screen/set_screen/card_detail_screen';
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
        final set = settings.arguments as SetDatum;
        return MaterialPageRoute(
          builder: (_) => _screenFactory.makeSetScreen(set),
        );
      case MainNavigationRouteNames.cardDetailScreen:
        final card = settings.arguments as CardDatum;
        return MaterialPageRoute(
          builder: (_) => _screenFactory.makeCardDetailScreen(card),
        );
      case MainNavigationRouteNames.deckDetailScreen:
        final deck = settings.arguments as DeckDBModel;
        return MaterialPageRoute(
          builder: (_) => _screenFactory.makeDeckDetailScreen(deck),
        );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (_) => widget);
    }
  }
}
