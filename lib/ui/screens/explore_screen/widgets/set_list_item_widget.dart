import 'package:flutter/material.dart';

import '../../../../data/models/set_list.dart';
import '../../../../data/utils/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widgets/app_widgets.dart';

class SetListItemWidget extends StatelessWidget {
  final SetDatum set;

  const SetListItemWidget({
    Key? key,
    required this.set,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Stack(
        children: [
          ColoredBox(
            color: Theme.of(context).cardColor,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      _SymbolImageWidget(set: set),
                    ],
                  ),
                  _LogoImageWidget(set: set),
                  const SizedBox(
                    height: 10,
                  ),
                  _SeriesNameWidget(set: set),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () => Navigator.of(context).pushNamed(
                MainNavigationRouteNames.setScreen,
                arguments: set,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SeriesNameWidget extends StatelessWidget {
  const _SeriesNameWidget({
    Key? key,
    required this.set,
  }) : super(key: key);

  final SetDatum set;

  @override
  Widget build(BuildContext context) {
    return Text(
      set.series,
      style: smallBoldText,
    );
  }
}

class _LogoImageWidget extends StatelessWidget {
  const _LogoImageWidget({
    Key? key,
    required this.set,
  }) : super(key: key);

  final SetDatum set;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 190,
      child: NetworkImageWidget(
        imageUrl: set.images.logo,
      ),
    );
  }
}

class _SymbolImageWidget extends StatelessWidget {
  const _SymbolImageWidget({
    Key? key,
    required this.set,
  }) : super(key: key);

  final SetDatum set;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 20,
        height: 20,
        child: Image.network(set.images.symbol),
      ),
    );
  }
}
