import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/utils/pokemon_searcher.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
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
        child: SingleChildScrollView(
          controller: _scrollController,
          child: FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _QuickSearchFieldWidget(),
                _AdvancedSearch(),
                _SearchResultsList(),
              ],
            ),
          ),
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

class _AdvancedSearch extends StatelessWidget {
  const _AdvancedSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        ExpansionTile(
          iconColor: Theme.of(context).toggleableActiveColor,
          textColor: Theme.of(context).toggleableActiveColor,
          title: const Text(
            'Advanced search',
            style: middleText,
          ),
          children: [
            _FilterWidget(
              formName: FormNames.rarity.name,
              name: 'Rarities',
              filterParameters: rarities,
              searchKey: 'rarity',
            ),
            _FilterWidget(
              formName: FormNames.searchByType.name,
              name: 'Pokemon type',
              filterParameters: pokemonTypes,
              searchKey: 'types',
            ),
            _FilterWidget(
              formName: FormNames.searchBySubtype.name,
              name: 'Pokemon subtype',
              filterParameters: pokemonSubTypes,
              searchKey: 'subtypes',
            ),
            _FilterWidget(
              formName: FormNames.searchBySupertype.name,
              name: 'Pokemon supertype',
              filterParameters: pokemonSuperTypes,
              searchKey: 'supertype',
            ),
            _ChoiceFilterWidget(
              formName: FormNames.pokemonSeries.name,
              name: 'Series',
              filterParameters: pokemonSeries,
              searchKey: 'set.series',
            ),
            const _HPRangeWidget(),
            _FilterWidget(
              formName: FormNames.weaknesses.name,
              name: 'Weaknesses',
              filterParameters: pokemonTypes,
              searchKey: 'weaknesses.type',
            ),
          ],
        ),
      ],
    );
  }
}

class _FilterWidget extends StatelessWidget {
  final String name;
  final List<String> filterParameters;
  final String searchKey;
  final String formName;

  const _FilterWidget({
    Key? key,
    required this.name,
    required this.filterParameters,
    required this.searchKey,
    required this.formName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        ExpansionTile(
          iconColor: Theme.of(context).toggleableActiveColor,
          textColor: Theme.of(context).toggleableActiveColor,
          title: Text(name),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: FormBuilderFilterChip(
                checkmarkColor: Theme.of(context).toggleableActiveColor,
                name: formName,
                options: filterParameters
                    .map(
                      (parameter) => FormBuilderFieldOption(
                        value: '$searchKey:"$parameter"',
                        child: Text(
                          parameter,
                          style: smallText,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ChoiceFilterWidget extends StatelessWidget {
  final String name;
  final List<String> filterParameters;
  final String searchKey;
  final String formName;

  const _ChoiceFilterWidget({
    Key? key,
    required this.name,
    required this.filterParameters,
    required this.searchKey,
    required this.formName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        ExpansionTile(
          iconColor: Theme.of(context).toggleableActiveColor,
          textColor: Theme.of(context).toggleableActiveColor,
          title: Text(name),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: FormBuilderChoiceChip(
                // checkmarkColor: Theme.of(context).toggleableActiveColor,
                name: formName,
                options: filterParameters
                    .map(
                      (parameter) => FormBuilderFieldOption(
                        value: '$searchKey:$parameter',
                        child: Text(
                          parameter,
                          style: middleText,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _HPRangeWidget extends StatelessWidget {
  const _HPRangeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        ExpansionTile(
          iconColor: Theme.of(context).toggleableActiveColor,
          textColor: Theme.of(context).toggleableActiveColor,
          title: const Text('HP Range'),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FormBuilderRangeSlider(
                name: FormNames.hpRange.name,
                // onChanged: _onChanged,
                min: 0.0,
                max: 400.0,
                initialValue: const RangeValues(50, 200),
                divisions: 80,
                activeColor: Theme.of(context).toggleableActiveColor,
                inactiveColor: Theme.of(context).disabledColor,
                decoration: const InputDecoration(labelText: 'HP Range'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _QuickSearchFieldWidget extends StatelessWidget {
  const _QuickSearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 8.0, right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quick search',
            style: middleText,
          ),
          const Divider(
            thickness: 2,
          ),
          FormBuilderTextField(
            // validator: FormBuilderValidators.required(context),
            name: FormNames.searchByName.name,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).toggleableActiveColor,
              ),
              labelText: 'Search by name',
              labelStyle:
                  TextStyle(color: Theme.of(context).toggleableActiveColor),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).toggleableActiveColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).toggleableActiveColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: errorBorderColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: errorBorderColor,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            // icon: FaIcon(FontAwesomeIcons.search),
            // hintText: 'Search by Name',
          ),
        ],
      ),
    );
  }
}

class _SearchResultsList extends StatelessWidget {
  const _SearchResultsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardSearchBloc>().state;

    return state.when(
      initial: (data) => const NoDataTextWidget(),
      loading: (data) => const NoDataTextWidget(),
      loaded: (data, max) => data!.cards.isEmpty
          ? Center(
              child:
                  Text(S.of(context).searchScreen_noResults, style: smallText),
            )
          : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardsNumberAndDateWidget(
                      counterName: 'Total Cards',
                      length: data.totalCards,
                    ),
                    const _ToggleViewWidget(),
                  ],
                ),
                CardListWidget(
                  searchCardContainer: data,
                  hasReachedMax: max,
                  showAsList: data.showAsList,
                ),
              ],
            ),
      error: (data) =>
          Center(child: Text(S.of(context).message_noData, style: smallText)),
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
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
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
      ),
    );
  }
}
