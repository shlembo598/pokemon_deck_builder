import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/theme/app_themes.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Search screen rebuild');

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).search_screen_title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<ThemeBloc>().add(ThemeEvent.change(appThemeDark));
              },
              child: const Text('Dark'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeBloc>().add(ThemeEvent.change(appThemeLight));
              },
              child: const Text('Light'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SetsBloc>().add(const SetsEvent.read());
              },
              child: const Text('Load Sets'),
            ),
          ],
        ),
      ),
    );
  }
}
