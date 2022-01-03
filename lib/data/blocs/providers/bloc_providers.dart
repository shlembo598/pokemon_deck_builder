import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';

final List<BlocProvider> providersList = [
  BlocProvider<CardBloc>(
    create: (context) {
      return CardBloc()..add(const CardEvent.initial());
    },
  ),
];
