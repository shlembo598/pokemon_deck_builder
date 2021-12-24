import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/sets_bloc/sets_bloc.dart';
import 'package:pokemon_deck_builder/data/models/sets.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

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
    context.read<SetsBloc>().add(const SetsEvent.fetch());
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
        initial: (data) => const Center(child: CircularProgressIndicator()),
        loaded: (setsList, max) {
          return setsList!.isEmpty
              ? Center(child: Text(S.of(context).message_noData))
              : _SetListWidget(
                  scrollController: _scrollController,
                  sets: setsList,
                  hasReachedMax: max,
                );
        },
        error: (data) => Center(child: Text(S.of(context).message_error)),
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
  final List<Datum> sets;
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
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: hasReachedMax ? sets.length : sets.length + 1,
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) {
          return index >= sets.length
              ? const LoadingIndicatorWidget()
              : _SetsListItem(
                  set: sets[index],
                );
        },
      ),
    );
  }

  Future<void> _refreshList(BuildContext context) async {
    context.read<SetsBloc>().add(const SetsEvent.initial());
  }
}

class _SetsListItem extends StatelessWidget {
  final Datum set;

  const _SetsListItem({
    Key? key,
    required this.set,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: SizedBox(
          height: 90,
          child: Container(
            color: Colors.white,
            child: Image.network(
              set.images.logo,
            ),
          ),
        ),
      ),
    );
  }
}

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
