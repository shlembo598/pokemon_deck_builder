import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/blocs/blocs.dart';

class ToggleViewWidget extends StatelessWidget {
  const ToggleViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardSearchBloc>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: IconButton(
        icon: state.searchCardContainer?.showAsList == true
            ? const FaIcon(FontAwesomeIcons.images)
            : const FaIcon(FontAwesomeIcons.list),
        onPressed: () {
          bool asList =
              state.searchCardContainer?.showAsList == true ? false : true;
          context
              .read<CardSearchBloc>()
              .add(CardSearchEvent.showAsList(asList));
        },
      ),
    );
  }
}
