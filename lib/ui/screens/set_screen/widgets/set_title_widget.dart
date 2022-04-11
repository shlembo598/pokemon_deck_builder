import 'package:flutter/material.dart';

import '../../../../data/utils/constants.dart';

class SetTitleWidget extends StatelessWidget {
  final String setName;
  final String imageUrl;

  const SetTitleWidget({
    Key? key,
    required this.setName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: SizedBox(
              height: 100,
              width: 350,
              child: Image.network(imageUrl),
            ),
          ),
          Text(setName, style: largeBoldText),
        ],
      ),
    );
  }
}
