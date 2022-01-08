import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/card_list_bloc/card_list_bloc.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/widgets/cards_list_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/cards_number_and_date_widget.dart';

class SetScreen extends StatefulWidget {
  final SetDatum set;

  const SetScreen({Key? key, required this.set}) : super(key: key);

  @override
  State<SetScreen> createState() => _SetScreenState();
}

class _SetScreenState extends State<SetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).explore_screen_title),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                _SetTitleWidget(
                  setName: widget.set.name,
                  imageUrl: widget.set.images.logo,
                ),
                CardsNumberAndDateWidget(
                  counterName: S.of(context).setDetails_totalCards,
                  length: widget.set.total.toString(),
                  releaseDate: widget.set.releaseDate,
                ),
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => _refreshList(context),
              child: const _CardListFromSetWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _refreshList(BuildContext context) async {
    final state = context.read<CardListBloc>().state;
    String setId = state.cardListContainer!.setId;
    context.read<CardListBloc>().add(CardListEvent.create(setId));
  }
}

class _SetTitleWidget extends StatelessWidget {
  final String setName;
  final String imageUrl;

  const _SetTitleWidget({
    Key? key,
    required this.setName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: SizedBox(
            height: 100,
            width: 350,
            child: Image.network(imageUrl),
          ),
        ),
        Text(
          setName,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class _CardListFromSetWidget extends StatefulWidget {
  const _CardListFromSetWidget({Key? key}) : super(key: key);

  @override
  State<_CardListFromSetWidget> createState() => _CardListFromSetWidgetState();
}

class _CardListFromSetWidgetState extends State<_CardListFromSetWidget> {
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
    final state = context.watch<CardListBloc>().state;

    return state.when(
      initial: (data) => Center(child: Text(S.of(context).message_noData)),
      loading: (data) => const Center(child: CircularProgressIndicator()),
      error: (data) => const _FailureWidget(),
      loaded: (data, max) => CardsListWidget(
        cardListContainer: data,
        hasReachedMax: max,
        scrollController: _scrollController,
      ),
    );
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      context.read<CardListBloc>().add(const CardListEvent.fetch());
    }
  }
}

class _FailureWidget extends StatelessWidget {
  const _FailureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<CardListBloc>().state;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(S.of(context).message_error),
          ElevatedButton(
            onPressed: () {
              String setId = state.cardListContainer!.setId;
              context.read<CardListBloc>().add(CardListEvent.create(setId));
            },
            child: Text(S.of(context).explore_screen_errorButtonText),
          ),
        ],
      ),
    );
  }
}
