import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/resources/app_images.dart';
import 'package:pokemon_deck_builder/ui/widgets/network_image_widget.dart';

class CardDetailScreen extends StatelessWidget {
  final CardDatum card;

  const CardDetailScreen({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.pokedex)),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Hero(
                tag: card.id,
                child: NetworkImageWidget(
                  imageUrl: card.images!.large,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
