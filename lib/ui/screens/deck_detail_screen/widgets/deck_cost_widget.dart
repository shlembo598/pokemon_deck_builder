import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../../data/utils/constants.dart';

class DeckCostWidget extends StatelessWidget {
  const DeckCostWidget({Key? key}) : super(key: key);

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
