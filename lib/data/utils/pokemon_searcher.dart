import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/data/blocs/card_search_bloc/card_search_bloc.dart';

class PokemonSearcher {
  static void searchCards(
    GlobalKey<FormBuilderState> key,
    BuildContext context,
  ) {
    FocusScope.of(context).unfocus();
    key.currentState?.save();

    final String pokemonName =
        key.currentState!.fields[FormNames.searchByName.name]?.value ?? '';
    final String quickSearchParameter = 'name:"*$pokemonName*"';

    final String typesParameter = key
            .currentState?.fields[FormNames.searchByType.name]?.value
            .join(' ') ??
        '';
    final String subtypesParameter = key
            .currentState?.fields[FormNames.searchBySubtype.name]?.value
            .join(' ') ??
        '';
    final String supertypesParameter = key
            .currentState?.fields[FormNames.searchBySupertype.name]?.value
            .join(' ') ??
        '';
    final String rarityParameter =
        key.currentState?.fields[FormNames.rarity.name]?.value.join(' ') ?? '';
    final String seriesParameter =
        key.currentState?.fields[FormNames.pokemonSeries.name]?.value ?? '';
    final RangeValues? hpRange =
        key.currentState!.fields[FormNames.hpRange.name]?.value ?? '';
    final String hpRangeParameter =
        hpRange != null ? 'hp:[${hpRange.start} TO ${hpRange.end}]' : '';
    final String searchParameters =
        '$quickSearchParameter $typesParameter $subtypesParameter $supertypesParameter $rarityParameter $hpRangeParameter  $seriesParameter';
    context.read<CardSearchBloc>().add(
          CardSearchEvent.find(searchParameters),
        );
  }
}
