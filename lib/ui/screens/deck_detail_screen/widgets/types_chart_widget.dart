import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../data/blocs/blocs.dart';

class TypesChartWidget extends StatelessWidget {
  const TypesChartWidget({Key? key}) : super(key: key);

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
