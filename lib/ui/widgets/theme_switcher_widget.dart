import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/theme_bloc/theme_bloc.dart';
import 'package:pokemon_deck_builder/resources/app_images.dart';
import 'package:pokemon_deck_builder/ui/theme/app_themes.dart';

class ThemeSwitcherWidget extends StatefulWidget {
  const ThemeSwitcherWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ThemeSwitcherWidget> createState() => _ThemeSwitcherWidgetState();
}

class _ThemeSwitcherWidgetState extends State<ThemeSwitcherWidget> {
  bool _enabled = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: (bool value) {
        setState(() {
          _enabled = value;
        });
        if (value) {
          context.read<ThemeBloc>().add(ThemeEvent.change(appThemeDark));
        } else {
          context.read<ThemeBloc>().add(ThemeEvent.change(appThemeLight));
        }
      },
      value: _enabled,
      activeThumbImage: const AssetImage(
        AppImages.pokedex,
      ),
      inactiveThumbImage: const AssetImage(
        AppImages.pokedex,
      ),
    );
  }
}
