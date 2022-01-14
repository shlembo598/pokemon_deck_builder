import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/data/blocs/card_list_bloc/card_list_bloc.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/widgets/cards_list_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/cards_number_and_date_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/text_error_widget.dart';

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
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              _SetTitleWidget(
                setName: widget.set.name,
                imageUrl: widget.set.images.logo,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardsNumberAndDateWidget(
                    counterName: S.of(context).setDetails_totalCards,
                    length: widget.set.total.toString(),
                    releaseDate: widget.set.releaseDate,
                  ),
                  const _ToggleViewWidget(),
                ],
              ),
              const _CardListFromSetWidget(),
            ],
          ),
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
        Text(setName, style: largeBoldText),
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
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardListBloc>().state;

    return state.when(
      initial: (data) => const NoDataTextWidget(),
      loading: (data) => const Center(child: CircularProgressIndicator()),
      error: (data) => const _FailureWidget(),
      loaded: (data, max) => CardListWidget(
        cardListContainer: data,
        hasReachedMax: max,
        showAsList: data!.showAsList,
      ),
    );
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

class _ToggleViewWidget extends StatelessWidget {
  const _ToggleViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardListBloc>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: IconButton(
          icon: state.cardListContainer?.showAsList == true
              ? const FaIcon(FontAwesomeIcons.images)
              : const FaIcon(FontAwesomeIcons.list),
          onPressed: () {
            bool asList =
                state.cardListContainer?.showAsList == true ? false : true;
            context.read<CardListBloc>().add(CardListEvent.showAsList(asList));
          },
        ),
      ),
    );
  }
}
