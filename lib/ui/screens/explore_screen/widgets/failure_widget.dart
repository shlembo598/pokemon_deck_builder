import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../../data/utils/constants.dart';
import '../../../../generated/l10n.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).message_error,
            style: smallText,
          ),
          ElevatedButton(
            onPressed: () =>
                context.read<SetsBloc>().add(const SetsEvent.create()),
            child: Text(
              S.of(context).explore_screen_errorButtonText,
              style: smallText,
            ),
          ),
        ],
      ),
    );
  }
}
