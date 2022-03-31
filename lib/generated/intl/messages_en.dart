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
                "You cannot add more than 4 identical cards or more than 60 to the deck"),
        "cardDetailScreen_pricingTitle":
            MessageLookupByLibrary.simpleMessage("Pricing"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "deckDetailScreen_emptyDeck": MessageLookupByLibrary.simpleMessage(
            "You haven\'t added any cards yet"),
        "deckDetailScreen_removeCardButtonText":
            MessageLookupByLibrary.simpleMessage("Remove card"),
        "deckInfo_dialog_text": MessageLookupByLibrary.simpleMessage(
            "Deck Building\nWhen building most decks, you’ll need to follow a few rules. One of the most important rules is that your deck must be exactly 60 cards; it can’t be\nany more or less, even 59 or 61 cards!\nAlso, except for basic Energy, you can only have 4 cards with the same name in your deck. This means you can have only 4 cards called “Pignite” in\nyour deck, even if they all have different attacks. Finally, your deck must have at least one Basic Pokémon in it.\nBuilding your own deck can be challenging, but also a lot of fun. A League Leader at a Pokémon League can help you with some ideas. Another\ngood idea is to find a V Battle Deck you like and try modifying it. Remember to keep it at exactly 60 cards! If you’re starting a whole new deck,\nthough, try these guidelines for starters:\n• Pick one or two Energy types at most. Remember, most Normal Pokémon can use any Energy for attacks, so they can go in nearly any deck!\n• To make sure you have enough Energy cards, try between 12 and 15 in your 60-card deck.\n• Trainer cards are important, too. Cards like Quick Ball and Poké Kid can help you find exactly the cards you need! Around 20 to 25 Trainer\ncards is a good start.\n• Of course, you need Pokémon! The rest of your deck will be Pokémon. Remember, you need at least one Basic Pokémon in your deck.\n Collect your favorite Pokémon so you can have 4 copies of them in your deck to make sure you draw them as much as possible.\n And, if that Pokémon evolves, try to get 4 of each Pokémon in its Evolution chain as well!\nEvery deck is different and will fit your personality and personal strategy. Over time you’ll find the numbers of Pokémon, Trainer, and Energy cards\nyou like the best."),
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
