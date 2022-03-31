import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/models/card_with_offline_data.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../data/utils/constants.dart';
import '../../navigation/main_navigation.dart';
import '../../widgets/create_rename_deck_dialog_widget.dart';

class DeckDetailScreen extends StatefulWidget {
  final String deckName;
  final int deckId;

  const DeckDetailScreen({
    Key? key,
    required this.deckName,
    required this.deckId,
  }) : super(key: key);

  @override
  _DeckDetailScreenState createState() => _DeckDetailScreenState();
}

class _DeckDetailScreenState extends State<DeckDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final deckDetailState = context.watch<DeckDetailBloc>().state;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => _showInfoDialog(context),
            icon: const Icon(Icons.info),
          ),
        ],
        title: _DeckTitleWidget(
          deckId: widget.deckId,
          deckName: widget.deckName,
        ),
      ),
      body: deckDetailState.maybeWhen(
        orElse: () => const _NoCardInDeckWidget(),
        loaded: (cardDBList) => cardDBList != null && cardDBList.isNotEmpty
            ? BlocListener<CardToDeckBloc, CardToDeckState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    removed: () => context.read<DeckDetailBloc>()
                      ..add(DeckDetailEvent.refresh(
                        widget.deckId,
                      )),
                  );
                },
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    const SliverToBoxAdapter(child: _DeckStatisticsWidget()),
                    _CardListWidget(
                      deckId: widget.deckId,
                      cardDBList: cardDBList,
                    ),
                  ],
                ),
              )
            : const _NoCardInDeckWidget(),
      ),
    );
  }

  void _showInfoDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(S.of(context).close),
            ),
          ],
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text(S.of(context).deckInfo_dialog_text),
              ],
            ),
          ),
        ),
      );
}

class _DeckTitleWidget extends StatelessWidget {
  final int deckId;
  final String deckName;
  const _DeckTitleWidget({
    Key? key,
    required this.deckId,
    required this.deckName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deckNameState = context.watch<DeckNameBloc>().state;
    final deckNameBloc = context.watch<DeckNameBloc>();

    return GestureDetector(
      onTap: () => _showRenameDeckDialog(context, deckId),
      child: BlocListener<DeckBloc, DeckState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            updated: (newDeckName) =>
                deckNameBloc.add(DeckNameEvent.update(newDeckName)),
          );
        },
        child: deckNameState.when(
          initial: () => _TitleTextWidget(deckName: deckName),
          updated: (newDeckName) => _TitleTextWidget(deckName: newDeckName),
        ),
      ),
    );
  }

  void _showRenameDeckDialog(BuildContext context, int deckId) => showDialog(
        context: context,
        builder: (context) => CreateRenameDeckDialogWidget(
          deckOldId: deckId,
        ),
      );
}

class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({
    Key? key,
    required this.deckName,
  }) : super(key: key);

  final String deckName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(deckName),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.edit,
          size: 15,
        ),
      ],
    );
  }
}

class _DeckStatisticsWidget extends StatelessWidget {
  const _DeckStatisticsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: ExpansionTile(
            iconColor: Theme.of(context).toggleableActiveColor,
            textColor: Theme.of(context).toggleableActiveColor,
            title: const Text(
              'Deck statistics',
              style: middleText,
            ),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  _SupertypeChartWidget(),
                  _TypesChartWidget(),
                  _DeckCostWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SupertypeChartWidget extends StatelessWidget {
  const _SupertypeChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statisticsState = context.watch<DeckStatisticsBloc>().state;

    return statisticsState.when(
      loaded: (typesData, superTypesData, totalCards, totalDeckPrice) =>
          SfCircularChart(
        title: ChartTitle(text: 'Deck Description'),
        legend: Legend(
          isVisible: true,
          toggleSeriesVisibility: false,
        ),
        series: <CircularSeries<TypesData, String>>[
          PieSeries<TypesData, String>(
            dataSource: typesData,
            xValueMapper: (TypesData sales, _) => sales.type,
            yValueMapper: (TypesData sales, _) => sales.count,
            dataLabelSettings: const DataLabelSettings(
              isVisible: true,
            ),
            legendIconType: LegendIconType.circle,
          ),
        ],
      ),
      initial: () => const SizedBox.shrink(),
      loading: () => const CircularProgressIndicator(),
    );
  }
}

class _TypesChartWidget extends StatelessWidget {
  const _TypesChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statisticsState = context.watch<DeckStatisticsBloc>().state;

    return statisticsState.when(
      loaded: (typesData, superTypesData, totalCards, totalDeckPrice) =>
          SfCartesianChart(
        title: ChartTitle(text: 'Type Description'),
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(),
        series: <ColumnSeries<TypesData, String>>[
          ColumnSeries<TypesData, String>(
            dataSource: superTypesData!,
            xValueMapper: (TypesData sales, _) => sales.type,
            yValueMapper: (TypesData sales, _) => sales.count,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
          ),
        ],
      ),
      initial: () => const SizedBox.shrink(),
      loading: () => const CircularProgressIndicator(),
    );
  }
}

class _DeckCostWidget extends StatelessWidget {
  const _DeckCostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statisticsState = context.watch<DeckStatisticsBloc>().state;

    return statisticsState.when(
      loaded: (typesData, superTypesData, totalCards, totalDeckPrice) =>
          Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Text('Total cards'),
                Text(
                  totalCards.toString(),
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Total deck cost: ',
                  style: middleText,
                ),
                Text(
                  '${totalDeckPrice?.toStringAsFixed(2)} \uFF04',
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      initial: () => const SizedBox.shrink(),
      loading: () => const CircularProgressIndicator(),
    );
  }
}

class _CardListWidget extends StatelessWidget {
  final int deckId;
  final List cardDBList;

  const _CardListWidget({
    Key? key,
    required this.deckId,
    required this.cardDBList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final cardId = _getCardData(
            cardDBList[index].cardData!,
          ).id;
          final supertype = _getCardData(
            cardDBList[index].cardData!,
          ).supertype.toString();
          final type = _getCardData(
                    cardDBList[index].cardData!,
                  ).types.toString() ==
                  'null'
              ? ' '
              : _getCardData(
                  cardDBList[index].cardData!,
                ).types.toString();
          final CardDatum cardDatum = _getCardData(cardDBList[index].cardData!);

          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                MainNavigationRouteNames.cardDetailScreen,
                arguments: CardWithOfflineData(
                  cardDatum: cardDatum,
                  imageLarge: cardDBList[index].imageLarge,
                ),
              );
            },
            child: _ListItemWidget(
              image: cardDBList[index].imageSmall,
              name: cardDBList[index].name,
              deckId: deckId,
              cardId: cardId,
              type: type,
              supertype: supertype,
            ),
          );
        },
        childCount: cardDBList.length,
      ),
    );
  }

  CardDatum _getCardData(String data) {
    final jsonData = jsonDecode(data);
    final card = CardDatum.fromJson(jsonData);

    return card;
  }
}

class _ListItemWidget extends StatelessWidget {
  final Uint8List image;
  final String name;
  final int deckId;
  final String cardId;
  final String type;
  final String supertype;

  const _ListItemWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.deckId,
    required this.cardId,
    required this.type,
    required this.supertype,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: 150,
        child: Row(
          children: [
            Image.memory(
              image,
              scale: 2,
              height: 150,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: largeBoldText,
                    ),
                    Text(
                      supertype,
                      style: middleText,
                    ),
                    Text(
                      type,
                      style: middleText,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {
                  context.read<CardToDeckBloc>().add(
                        CardToDeckEvent.remove(
                          deckId: deckId,
                          cardId: cardId,
                        ),
                      );
                  context
                      .read<DeckStatisticsBloc>()
                      .add(DeckStatisticsEvent.create(deckId));
                },
                icon: const Icon(
                  Icons.delete,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NoCardInDeckWidget extends StatelessWidget {
  const _NoCardInDeckWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(S.of(context).deckDetailScreen_emptyDeck));
  }
}
