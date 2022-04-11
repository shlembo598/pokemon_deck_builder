import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/ui/screens/set_screen/widgets/set_screen_widgets.dart';

import '../../../../generated/l10n.dart';
import '../../../widgets/app_widgets.dart';

class ListInfoDelegate extends SliverPersistentHeaderDelegate {
  final double height = 95;
  final int? totalCards;
  final String releaseDate;

  ListInfoDelegate({required this.totalCards, required this.releaseDate});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor.withOpacity(0.8),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardsNumberAndDateWidget(
              counterName: S.of(context).setDetails_totalCards,
              length: totalCards != null ? totalCards.toString() : ' ',
              releaseDate: releaseDate,
            ),
            const ToggleViewWidget(),
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
