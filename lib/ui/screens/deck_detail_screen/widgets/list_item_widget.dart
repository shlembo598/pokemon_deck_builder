import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/blocs/blocs.dart';
import '../../../../data/utils/constants.dart';

class ListItemWidget extends StatelessWidget {
  final Uint8List image;
  final String name;
  final int deckId;
  final String cardId;
  final String type;
  final String supertype;

  const ListItemWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.deckId,
    required this.cardId,
    required this.type,
    required this.supertype,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: 150,
        child: Row(
          children: [
            Image.memory(
              image,
              scale: 2,
              height: 150,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: largeBoldText,
                    ),
                    Text(
                      supertype,
                      style: middleText,
                    ),
                    Text(
                      type,
                      style: middleText,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {
                  context.read<CardToDeckBloc>().add(
                        CardToDeckEvent.remove(
                          deckId: deckId,
                          cardId: cardId,
                        ),
                      );
                  context
                      .read<DeckStatisticsBloc>()
                      .add(DeckStatisticsEvent.create(deckId));
                },
                icon: const Icon(
                  Icons.delete,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
