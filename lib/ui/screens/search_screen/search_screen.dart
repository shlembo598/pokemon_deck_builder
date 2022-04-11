import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/utils/pokemon_searcher.dart';

import 'widgets/search_screen_widgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
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
    PokemonSearcher pokemonSearcher = PokemonSearcher();

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => _refreshList(context),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: FormBuilder(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    QuickSearchWidget(),
                    AdvancedSearchWidget(),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(pinned: true, delegate: ListInfoDelegate()),
            const SearchResultsListWidget(),
          ],
        ),
      ),
      floatingActionButton:
          SearchFabWidget(pokemonSearcher: pokemonSearcher, formKey: _formKey),
    );
  }

  Future<void> _refreshList(BuildContext context) async {
    final state = context.read<CardSearchBloc>().state;
    String parameter = state.searchCardContainer!.searchParameter;
    context.read<CardSearchBloc>().add(CardSearchEvent.find(parameter));
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      context.read<CardSearchBloc>().add(const CardSearchEvent.fetch());
    }
  }
}
