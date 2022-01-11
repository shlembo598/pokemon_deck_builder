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
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => _refreshList(context),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Quick search',
                        style: smallText,
                      ),
                      Divider(),
                    ],
                  ),
                ),
                const _QuickSearchFieldWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Advanced search',
                        style: smallText,
                      ),
                      Divider(),
                    ],
                  ),
                ),
                const _ClassesFilterWidget(),
                const Divider(),
                const _SearchDataList(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'searchFAB',
        child: const FaIcon(FontAwesomeIcons.search),
        onPressed: () {
          PokemonSearcher.searchCards(_formKey, context);
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

class _ClassesFilterWidget extends StatelessWidget {
  const _ClassesFilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: FormBuilderFilterChip(
        checkmarkColor: Theme.of(context).toggleableActiveColor,
        name: 'searchByType',
        options: [
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.colorless.name}',
            child: Text(
              pokemonClasses.colorless.name,
              style: middleText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.darkness.name}',
            child: Text(
              pokemonClasses.darkness.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.dragon.name}',
            child: Text(
              pokemonClasses.dragon.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.fairy.name}',
            child: Text(
              pokemonClasses.fairy.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.fighting.name}',
            child: Text(
              pokemonClasses.fighting.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.fire.name}',
            child: Text(
              pokemonClasses.fire.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.grass.name}',
            child: Text(
              pokemonClasses.grass.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.lightning.name}',
            child: Text(
              pokemonClasses.lightning.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.metal.name}',
            child: Text(
              pokemonClasses.metal.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.psychic.name}',
            child: Text(
              pokemonClasses.psychic.name,
              style: smallText,
            ),
          ),
          FormBuilderFieldOption(
            value: 'types:${pokemonClasses.water.name}',
            child: Text(
              pokemonClasses.water.name,
              style: smallText,
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickSearchFieldWidget extends StatelessWidget {
  const _QuickSearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FormBuilderTextField(
              // validator: FormBuilderValidators.required(context),
              name: 'searchByName',
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,
                    color: Theme.of(context).toggleableActiveColor),
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
          ),
        ),
      ],
    );
  }
}

class _SearchDataList extends StatelessWidget {
  const _SearchDataList({Key? key}) : super(key: key);

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
                CardsNumberAndDateWidget(
                    counterName: 'Total Cards',
                    length: state.searchCardContainer!.totalCards),
                CardsListWidget(
                  searchCardContainer: data,
                  hasReachedMax: max,
                ),
              ],
            ),
      error: (data) =>
          Center(child: Text(S.of(context).message_noData, style: smallText)),
    );
  }
}
