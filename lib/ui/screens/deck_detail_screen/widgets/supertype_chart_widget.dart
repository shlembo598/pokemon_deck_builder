import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../data/blocs/deck_statistics_bloc/deck_statistics_bloc.dart';
import '../../../../generated/l10n.dart';

class SupertypeChartWidget extends StatelessWidget {
  const SupertypeChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statisticsState = context.watch<DeckStatisticsBloc>().state;

    return statisticsState.when(
      loaded: (typesData, superTypesData, totalCards, totalDeckPrice) =>
          SfCircularChart(
        title:
            ChartTitle(text: S.of(context).deckDetailScreen_statistics_title),
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
