import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/widgets/cards_list_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/cards_number_and_date_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    log('Search screen rebuild');

    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'searchByName',
                    initialValue: 'Pikachu',
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final String pokemonName = _formKey
                              .currentState!.fields['searchByName']!.value ??
                          '';
                      FocusScope.of(context).unfocus();
                      context
                          .read<CardSearchBloc>()
                          .add(CardSearchEvent.find('name:*$pokemonName*'));
                    },
                    child: Text('Search'),
                  ),
                  const _SearchCardNumberWidget(),
                ],
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => _refreshList(context),
                child: const _SearchDataList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _refreshList(BuildContext context) async {
    final state = context.read<CardSearchBloc>().state;
    String parameter = state.searchCardContainer!.searchParameter;
    context.read<CardSearchBloc>().add(CardSearchEvent.find(parameter));
  }
}

class _SearchDataList extends StatefulWidget {
  const _SearchDataList({Key? key}) : super(key: key);

  @override
  _SearchDataListState createState() => _SearchDataListState();
}

class _SearchDataListState extends State<_SearchDataList> {
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
    final state = context.watch<CardSearchBloc>().state;

    return state.when(
      initial: (data) => Center(child: Text(S.of(context).message_noData)),
      loading: (data) => const Center(child: CircularProgressIndicator()),
      loaded: (data, max) => data!.cards.isEmpty
          ? Center(child: Text(S.of(context).searchScreen_noResults))
          : CardsListWidget(
              searchCardContainer: data,
              hasReachedMax: max,
              scrollController: _scrollController,
            ),
      error: (data) => Center(child: Text(S.of(context).message_noData)),
    );
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      context.read<CardSearchBloc>().add(const CardSearchEvent.fetch());
    }
  }
}

class _SearchCardNumberWidget extends StatelessWidget {
  const _SearchCardNumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardSearchBloc>().state;

    return state.when(
      initial: (data) => const SizedBox.shrink(),
      loading: (data) => const SizedBox.shrink(),
      loaded: (data, max) => CardsNumberAndDateWidget(
        counterName: 'Cards on screen',
        length: state.searchCardContainer!.cards.length.toString(),
      ),
      error: (data) => const SizedBox.shrink(),
    );
  }
}
