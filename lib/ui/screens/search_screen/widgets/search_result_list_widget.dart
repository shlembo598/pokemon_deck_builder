import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../../data/utils/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../widgets/app_widgets.dart';
import '../../../widgets/text_error_widget.dart';

class SearchResultsListWidget extends StatelessWidget {
  const SearchResultsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardSearchBloc>().state;

    return state.when(
      initial: (data) => const SliverToBoxAdapter(child: NoDataTextWidget()),
      loading: (data) => const SliverToBoxAdapter(child: NoDataTextWidget()),
      loaded: (data, max) => data!.cards.isEmpty
          ? SliverToBoxAdapter(
              child: Center(
                child: Text(
                  S.of(context).searchScreen_noResults,
                  style: smallText,
                ),
              ),
            )
          : CardListWidget(
              searchCardContainer: data,
              hasReachedMax: max,
              showAsList: data.showAsList,
            ),
      error: (data) => SliverToBoxAdapter(
        child:
            Center(child: Text(S.of(context).message_error, style: smallText)),
      ),
    );
  }
}
