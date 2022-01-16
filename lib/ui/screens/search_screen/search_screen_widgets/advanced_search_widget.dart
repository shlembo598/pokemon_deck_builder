import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';

class AdvancedSearchWidget extends StatelessWidget {
  const AdvancedSearchWidget({
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
