// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search_screen_title {
    return Intl.message(
      'Search',
      name: 'search_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get explore_screen_title {
    return Intl.message(
      'Explore',
      name: 'explore_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get explore_screen_errorButtonText {
    return Intl.message(
      'Try Again',
      name: 'explore_screen_errorButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Decks`
  String get decks_screen_title {
    return Intl.message(
      'Decks',
      name: 'decks_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get message_error {
    return Intl.message(
      'Something went wrong',
      name: 'message_error',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get message_noData {
    return Intl.message(
      'No data',
      name: 'message_noData',
      desc: '',
      args: [],
    );
  }

  /// `Total Cards`
  String get setDetails_totalCards {
    return Intl.message(
      'Total Cards',
      name: 'setDetails_totalCards',
      desc: '',
      args: [],
    );
  }

  /// `Release date`
  String get setDetails_ReleaseDate {
    return Intl.message(
      'Release date',
      name: 'setDetails_ReleaseDate',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any decks created yet, would you like to create one?`
  String get decksScreen_noDecksMessage {
    return Intl.message(
      'You don\'t have any decks created yet, would you like to create one?',
      name: 'decksScreen_noDecksMessage',
      desc: '',
      args: [],
    );
  }

  /// `Pricing`
  String get cardDetailScreen_pricingTitle {
    return Intl.message(
      'Pricing',
      name: 'cardDetailScreen_pricingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nothing found`
  String get searchScreen_noResults {
    return Intl.message(
      'Nothing found',
      name: 'searchScreen_noResults',
      desc: '',
      args: [],
    );
  }

  /// `Cards on screen`
  String get searchScreen_cardCounterName {
    return Intl.message(
      'Cards on screen',
      name: 'searchScreen_cardCounterName',
      desc: '',
      args: [],
    );
  }

  /// `Remove card`
  String get deckDetailScreen_removeCardButtonText {
    return Intl.message(
      'Remove card',
      name: 'deckDetailScreen_removeCardButtonText',
      desc: '',
      args: [],
    );
  }

  /// `You haven't added any cards yet`
  String get deckDetailScreen_emptyDeck {
    return Intl.message(
      'You haven\'t added any cards yet',
      name: 'deckDetailScreen_emptyDeck',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to delete deck with name:`
  String get decksScreen_deleteDeckDialogTitle {
    return Intl.message(
      'Do you really want to delete deck with name:',
      name: 'decksScreen_deleteDeckDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any decks yet, do you want to create one?`
  String get decksScreen_emptyDecksText {
    return Intl.message(
      'You don\'t have any decks yet, do you want to create one?',
      name: 'decksScreen_emptyDecksText',
      desc: '',
      args: [],
    );
  }

  /// `To create a deck, please enter a name`
  String get decksScreen_addDeckDialogTitle {
    return Intl.message(
      'To create a deck, please enter a name',
      name: 'decksScreen_addDeckDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `You cannot add more than 4 identical cards or more than 60 to the deck`
  String get addCard_overflowWarningSnackBarMessage {
    return Intl.message(
      'You cannot add more than 4 identical cards or more than 60 to the deck',
      name: 'addCard_overflowWarningSnackBarMessage',
      desc: '',
      args: [],
    );
  }

  /// `Deck Building\nWhen building most decks, you’ll need to follow a few rules. One of the most important rules is that your deck must be exactly 60 cards; it can’t be\nany more or less, even 59 or 61 cards!\nAlso, except for basic Energy, you can only have 4 cards with the same name in your deck. This means you can have only 4 cards called “Pignite” in\nyour deck, even if they all have different attacks. Finally, your deck must have at least one Basic Pokémon in it.\nBuilding your own deck can be challenging, but also a lot of fun. A League Leader at a Pokémon League can help you with some ideas. Another\ngood idea is to find a V Battle Deck you like and try modifying it. Remember to keep it at exactly 60 cards! If you’re starting a whole new deck,\nthough, try these guidelines for starters:\n• Pick one or two Energy types at most. Remember, most Normal Pokémon can use any Energy for attacks, so they can go in nearly any deck!\n• To make sure you have enough Energy cards, try between 12 and 15 in your 60-card deck.\n• Trainer cards are important, too. Cards like Quick Ball and Poké Kid can help you find exactly the cards you need! Around 20 to 25 Trainer\ncards is a good start.\n• Of course, you need Pokémon! The rest of your deck will be Pokémon. Remember, you need at least one Basic Pokémon in your deck.\n Collect your favorite Pokémon so you can have 4 copies of them in your deck to make sure you draw them as much as possible.\n And, if that Pokémon evolves, try to get 4 of each Pokémon in its Evolution chain as well!\nEvery deck is different and will fit your personality and personal strategy. Over time you’ll find the numbers of Pokémon, Trainer, and Energy cards\nyou like the best.`
  String get deckInfo_dialog_text {
    return Intl.message(
      'Deck Building\nWhen building most decks, you’ll need to follow a few rules. One of the most important rules is that your deck must be exactly 60 cards; it can’t be\nany more or less, even 59 or 61 cards!\nAlso, except for basic Energy, you can only have 4 cards with the same name in your deck. This means you can have only 4 cards called “Pignite” in\nyour deck, even if they all have different attacks. Finally, your deck must have at least one Basic Pokémon in it.\nBuilding your own deck can be challenging, but also a lot of fun. A League Leader at a Pokémon League can help you with some ideas. Another\ngood idea is to find a V Battle Deck you like and try modifying it. Remember to keep it at exactly 60 cards! If you’re starting a whole new deck,\nthough, try these guidelines for starters:\n• Pick one or two Energy types at most. Remember, most Normal Pokémon can use any Energy for attacks, so they can go in nearly any deck!\n• To make sure you have enough Energy cards, try between 12 and 15 in your 60-card deck.\n• Trainer cards are important, too. Cards like Quick Ball and Poké Kid can help you find exactly the cards you need! Around 20 to 25 Trainer\ncards is a good start.\n• Of course, you need Pokémon! The rest of your deck will be Pokémon. Remember, you need at least one Basic Pokémon in your deck.\n Collect your favorite Pokémon so you can have 4 copies of them in your deck to make sure you draw them as much as possible.\n And, if that Pokémon evolves, try to get 4 of each Pokémon in its Evolution chain as well!\nEvery deck is different and will fit your personality and personal strategy. Over time you’ll find the numbers of Pokémon, Trainer, and Energy cards\nyou like the best.',
      name: 'deckInfo_dialog_text',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Deck statistics`
  String get deckDetailScreen_statistics_title {
    return Intl.message(
      'Deck statistics',
      name: 'deckDetailScreen_statistics_title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
