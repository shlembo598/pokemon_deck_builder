import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/sets_bloc/sets_bloc.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/navigation/main_navigation.dart';
import 'package:pokemon_deck_builder/ui/widgets/loading_indicator_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/network_image_widget.dart';

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
    log('Explore screen rebuild');
    final state = context.watch<SetsBloc>().state;

    return Scaffold(
      body: state.when(
        initial: (data) => Center(child: Text(S.of(context).message_noData)),
        loading: (data) => const Center(child: CircularProgressIndicator()),
        loaded: (setContainer, max) {
          return setContainer!.sets.isEmpty
              ? Center(child: Text(S.of(context).message_noData))
              : _SetListWidget(
                  scrollController: _scrollController,
                  sets: setContainer.sets,
                  hasReachedMax: max,
                );
        },
        error: (data) => const _FailureWidget(),
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

class _SetListWidget extends StatelessWidget {
  final List<SetDatum> sets;
  final bool hasReachedMax;

  const _SetListWidget({
    Key? key,
    required ScrollController scrollController,
    required this.sets,
    required this.hasReachedMax,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _refreshList(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scrollbar(
          controller: _scrollController,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.5 / 1,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: hasReachedMax ? sets.length : sets.length + 1,
            controller: _scrollController,
            itemBuilder: (BuildContext context, int index) {
              return index >= sets.length
                  ? const LoadingIndicatorWidget()
                  : _SetListItem(
                      set: sets[index],
                    );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _refreshList(BuildContext context) async {
    context.read<SetsBloc>().add(const SetsEvent.create());
  }
}

class _SetListItem extends StatelessWidget {
  final SetDatum set;

  const _SetListItem({
    Key? key,
    required this.set,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Stack(
        children: [
          ColoredBox(
            color: Theme.of(context).cardColor,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 80,
                    width: 190,
                    child: NetworkImageWidget(
                      imageUrl: set.images.logo,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    set.series,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () => Navigator.of(context).pushNamed(
                MainNavigationRouteNames.setScreen,
                arguments: set,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FailureWidget extends StatelessWidget {
  const _FailureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(S.of(context).message_error),
          ElevatedButton(
            onPressed: () =>
                context.read<SetsBloc>().add(const SetsEvent.create()),
            child: Text(S.of(context).explore_screen_errorButtonText),
          ),
        ],
      ),
    );
  }
}
