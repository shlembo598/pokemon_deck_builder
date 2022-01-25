import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/observers/app_bloc_observer.dart';
import 'package:pokemon_deck_builder/ui/pokemon_app.dart';

void main() => BlocOverrides.runZoned(
      () {
        runApp(const PokemonApp());
        WidgetsFlutterBinding.ensureInitialized();
      },
      blocObserver: AppBlocObserver.instance(),
      eventTransformer: bloc_concurrency.sequential<Object?>(),
    );
