import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

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
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        return loadingProgress == null
            ? child
            : const Center(child: CircularProgressIndicator());
      },
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Center(
          child: SizedBox(
            width: 80,
            child: Text(
              S.of(context).message_error,
            ),
          ),
        );
      },
    );
  }
}
