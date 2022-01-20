import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/deck_bloc/deck_bloc.dart';

final List<BlocProvider> providersList = [
  BlocProvider<DeckBloc>(
    create: (context) {
      return DeckBloc()..add(const DeckEvent.read());
    },
  ),
];
