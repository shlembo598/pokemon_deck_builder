import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/blocs/card_to_deck_bloc/card_to_deck_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/deck_bloc/deck_bloc.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/models/search_card_container.dart';
import 'package:pokemon_deck_builder/data/utils/constants.dart';
import 'package:pokemon_deck_builder/ui/navigation/main_navigation.dart';

import 'add_deck_db_widget.dart';
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
              : Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          MainNavigationRouteNames.cardDetailScreen,
                          arguments: cardDatum[index],
                        );
                      },
                      child: NetworkImageWidget(
                        imageUrl: cardDatum[index].images!.small,
                      ),
                    ),
                    _AddRemoveCardWidget(
                      cardDatum: cardDatum[index],
                    ),
                  ],
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

class _AddRemoveCardWidget extends StatelessWidget {
  final CardDatum cardDatum;

  const _AddRemoveCardWidget({Key? key, required this.cardDatum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CardToDeckBloc>(
      create: (context) => CardToDeckBloc(),
      child: BlocBuilder<CardToDeckBloc, CardToDeckState>(
        builder: (context, state) {
          final cardToDeckBloc = context.read<CardToDeckBloc>();

          return state.when(
            added: () => _AddRemoveToggleWidget(
              cardToDeckBloc: cardToDeckBloc,
              cardDatum: cardDatum,
              nameState: 'remove',
            ),
            removed: () => _AddRemoveToggleWidget(
              cardToDeckBloc: cardToDeckBloc,
              cardDatum: cardDatum,
              nameState: 'add',
            ),
          );
        },
      ),
    );
  }
}

class _AddRemoveToggleWidget extends StatelessWidget {
  final CardToDeckBloc cardToDeckBloc;
  final CardDatum cardDatum;
  final String nameState;

  const _AddRemoveToggleWidget({
    Key? key,
    required this.nameState,
    required this.cardDatum,
    required this.cardToDeckBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget = const SizedBox.shrink();
    switch (nameState) {
      case 'add':
        widget = Positioned(
          right: 14,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return _BottomSheetDeckList(
                    cardToDeckBloc: cardToDeckBloc,
                    cardDatum: cardDatum,
                  );
                },
              );
              // context
              //     .read<CardToDeckBloc>()
              //     .add(CardToDeckEvent.add(cardDatum: cardDatum));
              log('Add');
            },
            child: const _ToggleIconWidget(
              color: Colors.grey,
            ),
          ),
        );
        break;
      case 'remove':
        widget = Positioned(
          right: 14,
          child: GestureDetector(
            onTap: () {
              context
                  .read<CardToDeckBloc>()
                  .add(CardToDeckEvent.remove(cardDatum: cardDatum));
              log('Remove');
            },
            child: const _ToggleIconWidget(
              color: Colors.green,
            ),
          ),
        );
        break;
    }

    return widget;
  }
}

class _BottomSheetDeckList extends StatefulWidget {
  final CardDatum cardDatum;
  final CardToDeckBloc cardToDeckBloc;

  const _BottomSheetDeckList({
    Key? key,
    required this.cardDatum,
    required this.cardToDeckBloc,
  }) : super(key: key);

  @override
  _BottomSheetDeckListState createState() => _BottomSheetDeckListState();
}

class _BottomSheetDeckListState extends State<_BottomSheetDeckList> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<DeckBloc>().state;

    return state.when(
      initial: (decksList) => const CircularProgressIndicator(),
      loaded: (decksList) => decksList != null && decksList.isNotEmpty
          ? Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.caretDown),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: decksList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5,
                        ),
                        child: ListTile(
                          onTap: () {
                            // final deckId = decksList[index].id;
                            // widget.cardToDeckBloc.add(
                            //   CardToDeckEvent.add(
                            //     cardDatum: widget.cardDatum,
                            //     deckId: deckId,
                            //   ),
                            // );
                            Navigator.of(context).pop();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          tileColor: Theme.of(context).cardColor,
                          title: Text(decksList[index].name ?? ' '),
                          leading: Text((index + 1).toString()),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "You don't have any decks yet, do you want to create one?",
                    ),
                  ),
                  AddDeckFBWidget(),
                ],
              ),
            ),
    );
  }
}

class _ToggleIconWidget extends StatelessWidget {
  final Color color;

  const _ToggleIconWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.solidCheckCircle,
          color: color,
        ),
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
