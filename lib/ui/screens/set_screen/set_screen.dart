import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/card_list_bloc/card_list_bloc.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

import 'widgets/set_screen_widgets.dart';

class SetScreen extends StatefulWidget {
  final SetDatum set;

  const SetScreen({Key? key, required this.set}) : super(key: key);

  @override
  State<SetScreen> createState() => _SetScreenState();
}

class _SetScreenState extends State<SetScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(
      _onScroll,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).explore_screen_title),
        centerTitle: false,
      ),
      body: RefreshIndicator(
        onRefresh: () => _refreshList(context),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SetTitleWidget(
              setName: widget.set.name,
              imageUrl: widget.set.images.logo,
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: ListInfoDelegate(
                releaseDate: widget.set.releaseDate ?? '',
                totalCards: widget.set.total,
              ),
            ),
            const SetCardListWidget(),
          ],
        ),
      ),
    );
  }

  Future<void> _refreshList(BuildContext context) async {
    final state = context.read<CardListBloc>().state;
    String setId = state.cardListContainer!.setId;
    context.read<CardListBloc>().add(CardListEvent.create(setId));
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      context.read<CardListBloc>().add(const CardListEvent.fetch());
    }
  }
}
