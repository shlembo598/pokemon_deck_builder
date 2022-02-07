// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addCard_overflowWarningSnackBarMessage":
            MessageLookupByLibrary.simpleMessage(
                "You cannot add more than 4 identical cards to the deck"),
        "cardDetailScreen_pricingTitle":
            MessageLookupByLibrary.simpleMessage("Pricing"),
        "deckDetailScreen_emptyDeck": MessageLookupByLibrary.simpleMessage(
            "You haven\'t added any cards yet"),
        "deckDetailScreen_removeCardButtonText":
            MessageLookupByLibrary.simpleMessage("Remove card"),
        "decksScreen_addDeckDialogTitle": MessageLookupByLibrary.simpleMessage(
            "To create a deck, please enter a name"),
        "decksScreen_deleteDeckDialogTitle":
            MessageLookupByLibrary.simpleMessage(
                "Do you really want to delete deck with name:"),
        "decksScreen_emptyDecksText": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any decks yet, do you want to create one?"),
        "decksScreen_noDecksMessage": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any decks created yet, would you like to create one?"),
        "decks_screen_title": MessageLookupByLibrary.simpleMessage("Decks"),
        "explore_screen_errorButtonText":
            MessageLookupByLibrary.simpleMessage("Try Again"),
        "explore_screen_title": MessageLookupByLibrary.simpleMessage("Explore"),
        "message_error":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "message_noData": MessageLookupByLibrary.simpleMessage("No data"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "searchScreen_cardCounterName":
            MessageLookupByLibrary.simpleMessage("Cards on screen"),
        "searchScreen_noResults":
            MessageLookupByLibrary.simpleMessage("Nothing found"),
        "search_screen_title": MessageLookupByLibrary.simpleMessage("Search"),
        "setDetails_ReleaseDate":
            MessageLookupByLibrary.simpleMessage("Release date"),
        "setDetails_totalCards":
            MessageLookupByLibrary.simpleMessage("Total Cards"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
