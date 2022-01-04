import 'package:flutter/material.dart';
import 'package:pokemon_deck_builder/data/models/set.dart';
import 'package:pokemon_deck_builder/data/utils/date_formatter.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';

class SetScreen extends StatelessWidget {
  final Datum set;

  const SetScreen({Key? key, required this.set}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).explore_screen_title),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children: [
            _SetTitleWidget(setName: set.name ?? '', imageUrl: set.images.logo),
            _SetDetailWidget(
              set: set,
            ),
          ],
        ),
      ),
    );
  }
}

class _SetTitleWidget extends StatelessWidget {
  final String setName;
  final String imageUrl;
  const _SetTitleWidget({
    Key? key,
    required this.setName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: SizedBox(
            height: 100,
            width: 350,
            child: Image.network(imageUrl),
          ),
        ),
        Text(
          setName,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class _SetDetailWidget extends StatelessWidget {
  final Datum set;

  const _SetDetailWidget({Key? key, required this.set}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        height: 80,
        width: 250,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _TotalCardsWidget(totalCards: set.total.toString()),
              const SizedBox(
                width: 15,
              ),
              _ReleaseDateWidget(releaseDate: set.releaseDate ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}

class _TotalCardsWidget extends StatelessWidget {
  final String totalCards;

  const _TotalCardsWidget({Key? key, required this.totalCards})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          S.of(context).setDetails_totalCards,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          totalCards,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          S.of(context).setDetails_ReleaseDate,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          DateFormatter.formatDate(releaseDate),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
