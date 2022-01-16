import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/models/search_card_container.dart';
import 'package:pokemon_deck_builder/ui/navigation/main_navigation.dart';

import 'loading_indicator_widget.dart';
import 'network_image_widget.dart';

class CardListWidget extends StatelessWidget {
  final CardListContainer? cardListContainer;
  final SearchCardContainer? searchCardContainer;
  final bool hasReachedMax;
  final bool showAsList;

  const CardListWidget({
    Key? key,
    this.cardListContainer,
    this.searchCardContainer,
    required this.hasReachedMax,
    required this.showAsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int itemCount = 0;
    List<CardDatum> cardDatum = [];
    if (cardListContainer != null) {
      itemCount = cardListContainer!.cards.length;
      cardDatum = cardListContainer!.cards;
    } else if (searchCardContainer != null) {
      itemCount = searchCardContainer!.cards.length;
      cardDatum = searchCardContainer!.cards;
    }

    return showAsList
        ? _ListWidget(
            cardDatum: cardDatum,
            itemCount: itemCount,
            hasReachedMax: hasReachedMax,
          )
        : _GridWidget(
            cardDatum: cardDatum,
            itemCount: itemCount,
            hasReachedMax: hasReachedMax,
          );
  }
}

class _GridWidget extends StatelessWidget {
  final List<CardDatum> cardDatum;
  final int itemCount;
  final bool hasReachedMax;

  const _GridWidget({
    Key? key,
    required this.cardDatum,
    required this.itemCount,
    required this.hasReachedMax,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
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
        },
        childCount: hasReachedMax ? itemCount : itemCount + 1,
      ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        childAspectRatio: 0.8 / 1,
        mainAxisSpacing: 8,
      ),
    );
  }
}

class _ListWidget extends StatelessWidget {
  final List<CardDatum> cardDatum;
  final int itemCount;
  final bool hasReachedMax;

  const _ListWidget({
    Key? key,
    required this.cardDatum,
    required this.itemCount,
    required this.hasReachedMax,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return index >= itemCount
              ? const LoadingIndicatorWidget()
              : GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      MainNavigationRouteNames.cardDetailScreen,
                      arguments: cardDatum[index],
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 5,
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      tileColor: Theme.of(context).cardColor,
                      title: Text(
                        cardDatum[index].name,
                        style: middleBoldText,
                      ),
                      subtitle: Text(cardDatum[index].rarity!),
                      leading: Text(
                        cardDatum[index].number.toString(),
                        style: middleText,
                      ),
                    ),
                  ),
                );
        },
        childCount: hasReachedMax ? itemCount : itemCount + 1,
      ),
    );
  }
}
