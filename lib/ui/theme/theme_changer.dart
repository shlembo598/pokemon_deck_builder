import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/theme_bloc/theme_bloc.dart';

class ThemeChanger {
  static ThemeData changeTheme(BuildContext context) {
    final state = context.watch<ThemeBloc>().state;
    ThemeData themeData = ThemeData.light();
    state.when(
      initial: () => themeData,
      changed: (theme) => themeData = theme,
    );

    return themeData;
  }
}
