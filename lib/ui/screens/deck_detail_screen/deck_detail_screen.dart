import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/blocs.dart';
import 'package:pokemon_deck_builder/data/blocs/card_to_deck_bloc/card_to_deck_bloc.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

class DeckDetailScreen extends StatefulWidget {
  final String deckName;
  final int deckId;

  const DeckDetailScreen({
    Key? key,
    required this.deckName,
    required this.deckId,
  }) : super(key: key);

  @override
  _DeckDetailScreenState createState() => _DeckDetailScreenState();
}

class _DeckDetailScreenState extends State<DeckDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<DeckDetailBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.deckName),
      ),
      body: state.maybeWhen(
        orElse: () => const _NoCardInDeckWidget(),
        loaded: (cardDBList) => cardDBList != null && cardDBList.isNotEmpty
            ? BlocListener<CardToDeckBloc, CardToDeckState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    removed: () => context.read<DeckDetailBloc>()
                      ..add(DeckDetailEvent.refresh(
                        widget.deckId,
                      )),
                  );
                },
                child: ListView.builder(
                  itemExtent: 150,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: cardDBList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 5,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        height: 150,
                        child: Row(
                          children: [
                            Image.memory(
                              cardDBList[index].imageSmall,
                              scale: 2,
                              height: 150,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(cardDBList[index].name ?? ' '),
                                  // Text(_getCardData(cardDBList[index].cardData!)),
                                  ElevatedButton(
                                    onPressed: () {
                                      context.read<CardToDeckBloc>().add(
                                            CardToDeckEvent.remove(
                                              deckId: widget.deckId,
                                              cardId: _getCardData(
                                                cardDBList[index].cardData!,
                                              ).id,
                                            ),
                                          );
                                    },
                                    child: Text(S
                                        .of(context)
                                        .deckDetailScreen_removeCardButtonText),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            : const _NoCardInDeckWidget(),
      ),
    );
  }

  CardDatum _getCardData(String data) {
    final jsonData = jsonDecode(data);
    final card = CardDatum.fromJson(jsonData);

    return card;
  }
}

class _NoCardInDeckWidget extends StatelessWidget {
  const _NoCardInDeckWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(S.of(context).deckDetailScreen_emptyDeck));
  }
}
