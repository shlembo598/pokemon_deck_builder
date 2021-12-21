import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/card_bloc/card_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/sets_bloc/sets_bloc.dart';

final List<BlocProvider> providersList = [
  BlocProvider<CardBloc>(
    create: (context) {
      return CardBloc()..add(const CardEvent.initial());
    },
  ),
  BlocProvider<SetsBloc>(create: (context) {
    return SetsBloc()..add(const SetsEvent.initial());
  }),
];
