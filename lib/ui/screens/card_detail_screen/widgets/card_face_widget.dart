import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../../widgets/app_widgets.dart';

class CardFaceWidget extends StatelessWidget {
  const CardFaceWidget({
    Key? key,
    required this.imageLarge,
    required this.imageUrl,
  }) : super(key: key);

  final Uint8List? imageLarge;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: imageLarge != null
          ? Image.memory(
              imageLarge!,
              fit: BoxFit.fitHeight,
            )
          : NetworkImageWidget(
              imageUrl: imageUrl!,
            ),
    );
  }
}
