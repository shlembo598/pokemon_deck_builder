import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  const NetworkImageWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (
        BuildContext ctx,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        return loadingProgress == null
            ? child
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
