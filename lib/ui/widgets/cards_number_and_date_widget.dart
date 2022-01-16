import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/data/utils/date_formatter.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

class CardsNumberAndDateWidget extends StatelessWidget {
  final String? length;
  final String? releaseDate;
  final String? counterName;

  const CardsNumberAndDateWidget(
      {Key? key, this.length, this.releaseDate, this.counterName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _TotalCardsWidget(
              counterName: counterName ?? ' ',
              totalCards: length ?? ' ',
            ),
            const SizedBox(
              width: 15,
            ),
            _ReleaseDateWidget(releaseDate: releaseDate ?? ''),
          ],
        ),
      ),
    );
  }
}

class _TotalCardsWidget extends StatelessWidget {
  final String totalCards;
  final String counterName;

  const _TotalCardsWidget({
    Key? key,
    required this.totalCards,
    required this.counterName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(counterName, style: middleText),
        const SizedBox(
          height: 5,
        ),
        Text(totalCards, style: middleBoldText),
      ],
    );
  }
}

class _ReleaseDateWidget extends StatelessWidget {
  final String releaseDate;

  const _ReleaseDateWidget({Key? key, required this.releaseDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (releaseDate == '') {
      return const SizedBox.shrink();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          S.of(context).setDetails_ReleaseDate,
          style: middleText,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(DateFormatter.formatDate(releaseDate), style: middleBoldText),
      ],
    );
  }
}
