import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/observers/custom_bloc_observer.dart';
import 'package:pokemon_deck_builder/ui/pokemon_app.dart';

void main() => BlocOverrides.runZoned(
      () {
        runApp(const PokemonApp());
        WidgetsFlutterBinding.ensureInitialized();
      },
      blocObserver: CustomBlocObserver(),
    );
