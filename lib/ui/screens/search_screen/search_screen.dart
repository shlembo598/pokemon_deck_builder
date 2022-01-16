import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/utils/pokemon_searcher.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/screens/search_screen/search_screen_widgets/advanced_search_widget.dart';
import 'package:pokemon_deck_builder/ui/screens/search_screen/search_screen_widgets/quick_search_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/cards_list_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/cards_number_and_date_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/text_error_widget.dart';

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
            SliverPersistentHeader(pinned: true, delegate: _ListInfoDelegate()),
            const _SearchResultsList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'searchFAB',
        child: const FaIcon(FontAwesomeIcons.search),
        onPressed: () {
          pokemonSearcher.context = context;
          pokemonSearcher.key = _formKey;
          pokemonSearcher.searchCards();
          // _searchCards(_formKey, context);
        },
      ),
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

class _ListInfoDelegate extends SliverPersistentHeaderDelegate {
  final double height = 95;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final state = context.watch<CardSearchBloc>().state;
    final String? totalCards = state.searchCardContainer?.totalCards ?? '0';

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor.withOpacity(0.8),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardsNumberAndDateWidget(
              counterName: 'Total Cards',
              length: totalCards,
            ),
            const _ToggleViewWidget(),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _SearchResultsList extends StatelessWidget {
  const _SearchResultsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardSearchBloc>().state;

    return state.when(
      initial: (data) => const SliverToBoxAdapter(child: NoDataTextWidget()),
      loading: (data) => const SliverToBoxAdapter(child: NoDataTextWidget()),
      loaded: (data, max) => data!.cards.isEmpty
          ? SliverToBoxAdapter(
              child: Center(
                child: Text(
                  S.of(context).searchScreen_noResults,
                  style: smallText,
                ),
              ),
            )
          : CardListWidget(
              searchCardContainer: data,
              hasReachedMax: max,
              showAsList: data.showAsList,
            ),
      error: (data) => SliverToBoxAdapter(
        child:
            Center(child: Text(S.of(context).message_error, style: smallText)),
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
    final state = context.watch<CardSearchBloc>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: IconButton(
        icon: state.searchCardContainer?.showAsList == true
            ? const FaIcon(FontAwesomeIcons.images)
            : const FaIcon(FontAwesomeIcons.list),
        onPressed: () {
          bool asList =
              state.searchCardContainer?.showAsList == true ? false : true;
          context
              .read<CardSearchBloc>()
              .add(CardSearchEvent.showAsList(asList));
        },
      ),
    );
  }
}
