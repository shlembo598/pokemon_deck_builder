import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/sets_bloc/sets_bloc.dart';
import 'package:pokemon_deck_builder/ui/widgets/text_error_widget.dart';

import 'widgets/explore_screen_widgets.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SetsBloc>().state;

    return Scaffold(
      body: state.when(
        initial: (data) => const NoDataTextWidget(),
        loading: (data) => const Center(child: CircularProgressIndicator()),
        loaded: (setContainer, max) {
          return setContainer!.sets.isEmpty
              ? const NoDataTextWidget()
              : SetListWidget(
                  scrollController: _scrollController,
                  sets: setContainer.sets,
                  hasReachedMax: max,
                );
        },
        error: (data) => const FailureWidget(),
      ),
    );
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      context.read<SetsBloc>().add(const SetsEvent.fetch());
    }
  }
}
