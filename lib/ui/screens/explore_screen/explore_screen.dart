import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/sets_bloc/sets_bloc.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Explore screen rebuild');
    final state = context.watch<SetsBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).explore_screen_title),
      ),
      body: state.when(
        initial: () => const Center(child: CircularProgressIndicator()),
        loaded: (setsList) => ListView.builder(
          itemCount: setsList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: SizedBox(
                  height: 90,
                  child: Container(
                    color: Colors.white,
                    child: Image.network(setsList[index].images.logo),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
