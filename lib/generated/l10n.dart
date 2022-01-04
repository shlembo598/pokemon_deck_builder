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
