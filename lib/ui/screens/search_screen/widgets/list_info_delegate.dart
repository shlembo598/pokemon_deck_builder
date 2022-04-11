import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../widgets/cards_number_and_date_widget.dart';
import 'toggle_view_widget.dart';

class ListInfoDelegate extends SliverPersistentHeaderDelegate {
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
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: CardsNumberAndDateWidget(
                counterName: 'Total Cards',
                length: totalCards,
              ),
            ),
            state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              loaded: (data, max) => const Expanded(child: ToggleViewWidget()),
            ),
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
