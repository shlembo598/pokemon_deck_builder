import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/utils/pokemon_searcher.dart';

class SearchFabWidget extends StatelessWidget {
  const SearchFabWidget({
    Key? key,
    required this.pokemonSearcher,
    required GlobalKey<FormBuilderState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final PokemonSearcher pokemonSearcher;
  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'searchFAB',
      child: const FaIcon(FontAwesomeIcons.search),
      onPressed: () {
        pokemonSearcher.context = context;
        pokemonSearcher.key = _formKey;
        pokemonSearcher.searchCards();
      },
    );
  }
}
