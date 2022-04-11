import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../../generated/l10n.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<CardListBloc>().state;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(S.of(context).message_error),
          ElevatedButton(
            onPressed: () {
              String setId = state.cardListContainer!.setId;
              context.read<CardListBloc>().add(CardListEvent.create(setId));
            },
            child: Text(S.of(context).explore_screen_errorButtonText),
          ),
        ],
      ),
    );
  }
}
