import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/ui/navigation/main_navigation.dart';

import 'loading_indicator_widget.dart';
import 'network_image_widget.dart';

class CardsListWidget extends StatelessWidget {
  final CardListContainer? cardListContainer;
  final SearchCardContainer? searchCardContainer;
  final bool hasReachedMax;
  final ScrollController scrollController;
  const CardsListWidget({
    Key? key,
    this.cardListContainer,
    this.searchCardContainer,
    required this.hasReachedMax,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int itemCount;
    List<CardDatum> cardDatum;
    if (cardListContainer != null) {
      itemCount = cardListContainer!.cards.length;
      cardDatum = cardListContainer!.cards;
    } else {
      itemCount = searchCardContainer!.cards.length;
      cardDatum = searchCardContainer!.cards;
    }

    return GridView.builder(
      controller: scrollController,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        childAspectRatio: 0.8 / 1,
        mainAxisSpacing: 8,
      ),
      itemCount: hasReachedMax ? itemCount : itemCount + 1,
      itemBuilder: (BuildContext context, int index) {
        return index >= itemCount
            ? const LoadingIndicatorWidget()
            : GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    MainNavigationRouteNames.cardDetailScreen,
                    arguments: cardDatum[index],
                  );
                },
                child: NetworkImageWidget(
                  imageUrl: cardDatum[index].images!.small,
                ),
              );
        // FadeInImage.assetNetwork(
        //   placeholder: AppImages.loading,
        //   image: data.cards[index].images!.small,
        // );
      },
    );
  }
}
