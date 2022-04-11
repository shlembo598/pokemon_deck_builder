import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/ui/screens/set_screen/widgets/set_screen_widgets.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../widgets/app_widgets.dart';

class SetCardListWidget extends StatefulWidget {
  const SetCardListWidget({Key? key}) : super(key: key);

  @override
  State<SetCardListWidget> createState() => _SetCardListWidgetState();
}

class _SetCardListWidgetState extends State<SetCardListWidget> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardListBloc>().state;

    return state.when(
      initial: (data) => const SliverToBoxAdapter(child: NoDataTextWidget()),
      loading: (data) => const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (data) => const SliverToBoxAdapter(child: FailureWidget()),
      loaded: (data, max) => CardListWidget(
        cardListContainer: data,
        hasReachedMax: max,
        showAsList: data!.showAsList,
      ),
    );
  }
}
