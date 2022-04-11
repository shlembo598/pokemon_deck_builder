import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../../data/models/set_list.dart';
import '../../../widgets/loading_indicator_widget.dart';
import 'explore_screen_widgets.dart';

class SetListWidget extends StatelessWidget {
  final List<SetDatum> sets;
  final bool hasReachedMax;

  const SetListWidget({
    Key? key,
    required ScrollController scrollController,
    required this.sets,
    required this.hasReachedMax,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _refreshList(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scrollbar(
          controller: _scrollController,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.3 / 1,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: hasReachedMax ? sets.length : sets.length + 1,
            controller: _scrollController,
            itemBuilder: (BuildContext context, int index) {
              return index >= sets.length
                  ? const LoadingIndicatorWidget()
                  : SetListItemWidget(
                      set: sets[index],
                    );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _refreshList(BuildContext context) async {
    context.read<SetsBloc>().add(const SetsEvent.create());
  }
}
