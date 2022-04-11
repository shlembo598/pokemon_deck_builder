import 'package:flutter/material.dart';

import '../../../../data/utils/constants.dart';
import '../../../../generated/l10n.dart';
import 'deck_detail_widgets.dart';

class DeckStatisticsWidget extends StatelessWidget {
  const DeckStatisticsWidget({
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
            title: Text(
              S.of(context).deckDetailScreen_statistics_title,
              style: middleText,
            ),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SupertypeChartWidget(),
                  TypesChartWidget(),
                  DeckCostWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
