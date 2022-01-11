import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pokemon_deck_builder/data/blocs/card_search_bloc/card_search_bloc.dart';

class PokemonSearcher {
  static void searchCards(
      GlobalKey<FormBuilderState> key, BuildContext context) {
    FocusScope.of(context).unfocus();
    key.currentState?.save();
    final String pokemonName =
        key.currentState!.fields['searchByName']?.value ?? '';
    final String quickSearchParameter = 'name:"*$pokemonName*"';
    final String classesParameter =
        key.currentState?.fields['searchByType']?.value.join(' ') ?? '';
    final String searchParameters = '$quickSearchParameter $classesParameter';
    context.read<CardSearchBloc>().add(
          CardSearchEvent.find(searchParameters),
        );
  }
}
