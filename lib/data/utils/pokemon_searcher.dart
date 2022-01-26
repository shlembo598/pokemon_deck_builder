import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pokemon_deck_builder/data/blocs/card_search_bloc/card_search_bloc.dart';
import 'package:pokemon_deck_builder/data/utils/constants.dart';

class PokemonSearcher {
  late GlobalKey<FormBuilderState> _key;
  late BuildContext _context;

  set key(GlobalKey<FormBuilderState> value) {
    _key = value;
  }

  set context(BuildContext value) {
    _context = value;
  }

  void searchCards() {
    FocusScope.of(_context).unfocus();
    _key.currentState?.save();

    String name = _searchByName(_key);
    String type = _searchByType(_key);
    String subtype = _searchBySubtype(_key);
    String supertype = _searchBySupertype(_key);
    String rarity = _searchByRarity(_key);
    String series = _searchBySeries(_key);
    String hp = _searchByHPRange(_key);
    String weakness = _searchByWeakness(_key);

    final String searchParameters = '$name $type $subtype $supertype $rarity'
        ' $hp $weakness  $series';

    _context.read<CardSearchBloc>().add(
          CardSearchEvent.find(searchParameters),
        );
  }

  String _searchByName(GlobalKey<FormBuilderState> key) {
    final String name =
        key.currentState!.fields[FormNames.searchByName.name]?.value ?? '';
    final String searchParameter = 'name:"*$name*"';

    return searchParameter;
  }

  String _searchByType(GlobalKey<FormBuilderState> key) {
    final String searchParameter = key
            .currentState?.fields[FormNames.searchByType.name]?.value
            .join(' ') ??
        '';

    return searchParameter;
  }

  String _searchBySubtype(GlobalKey<FormBuilderState> key) {
    final String searchParameter = key
            .currentState?.fields[FormNames.searchBySubtype.name]?.value
            .join(' ') ??
        '';

    return searchParameter;
  }

  String _searchBySupertype(GlobalKey<FormBuilderState> key) {
    final String searchParameter = key
            .currentState?.fields[FormNames.searchBySupertype.name]?.value
            .join(' ') ??
        '';

    return searchParameter;
  }

  String _searchByRarity(GlobalKey<FormBuilderState> key) {
    final String searchParameter =
        key.currentState?.fields[FormNames.rarity.name]?.value.join(' ') ?? '';

    return searchParameter;
  }

  String _searchBySeries(GlobalKey<FormBuilderState> key) {
    final String searchParameter =
        key.currentState?.fields[FormNames.pokemonSeries.name]?.value ?? '';

    return searchParameter;
  }

  String _searchByHPRange(GlobalKey<FormBuilderState> key) {
    final RangeValues? hpRange =
        key.currentState!.fields[FormNames.hpRange.name]?.value;
    final String searchParameter =
        hpRange != null ? 'hp:[${hpRange.start} TO ${hpRange.end}]' : '';

    return searchParameter;
  }

  String _searchByWeakness(GlobalKey<FormBuilderState> key) {
    final String searchParameter =
        key.currentState?.fields[FormNames.weaknesses.name]?.value.join(' ') ??
            '';

    return searchParameter;
  }
}
