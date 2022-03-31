import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';

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
