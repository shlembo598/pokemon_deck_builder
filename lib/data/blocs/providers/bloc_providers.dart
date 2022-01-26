import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/card_to_deck_bloc/card_to_deck_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/deck_bloc/deck_bloc.dart';

final List<BlocProvider> providersList = [
  BlocProvider<DeckBloc>(
    create: (context) {
      return DeckBloc()..add(const DeckEvent.read());
    },
  ),
  BlocProvider<CardToDeckBloc>(
    create: (context) {
      return CardToDeckBloc();
    },
  ),
];
