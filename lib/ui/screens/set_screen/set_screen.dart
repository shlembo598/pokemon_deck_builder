import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_deck_builder/data/blocs/card_list_bloc/card_list_bloc.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/data/utils/date_formatter.dart';
import 'package:pokemon_deck_builder/generated/l10n.dart';
import 'package:pokemon_deck_builder/ui/navigation/main_navigation.dart';
import 'package:pokemon_deck_builder/ui/widgets/loading_indicator_widget.dart';
import 'package:pokemon_deck_builder/ui/widgets/network_image_widget.dart';

class SetScreen extends StatefulWidget {
  final SetDatum set;

  const SetScreen({Key? key, required this.set}) : super(key: key);

  @override
  State<SetScreen> createState() => _SetScreenState();
}

class _SetScreenState extends State<SetScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(
      _onScroll,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).explore_screen_title),
        centerTitle: false,
      ),
      body: RefreshIndicator(
        onRefresh: () => _refreshList(context),
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Column(
            children: [
              _SetTitleWidget(
                setName: widget.set.name,
                imageUrl: widget.set.images.logo,
              ),
              _SetDetailWidget(
                set: widget.set,
              ),
              const _CardListWidget(),
            ],
          ),
        ),
      ),
    );
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      context.read<CardListBloc>().add(const CardListEvent.fetch());
    }
  }

  Future<void> _refreshList(BuildContext context) async {
    final state = context.read<CardListBloc>().state;
    String setId = state.cardListContainer!.setId;
    context.read<CardListBloc>().add(CardListEvent.create(setId));
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
  final SetDatum set;

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

class _CardListWidget extends StatelessWidget {
  const _CardListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardListBloc>().state;

    return state.when(
      initial: (data) => Center(child: Text(S.of(context).message_noData)),
      loading: (data) => const Center(child: CircularProgressIndicator()),
      error: (data) => const _FailureWidget(),
      loaded: (data, max) => GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 1 / 1,
          mainAxisSpacing: 8,
        ),
        itemCount: max ? data!.cards.length : data!.cards.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return index >= data.cards.length
              ? const LoadingIndicatorWidget()
              : GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      MainNavigationRouteNames.cardDetailScreen,
                      arguments: data.cards[index],
                    );
                  },
                  child: Hero(
                    tag: data.cards[index].id,
                    child: NetworkImageWidget(
                      imageUrl: data.cards[index].images!.small,
                    ),
                  ),
                );
          // FadeInImage.assetNetwork(
          //   placeholder: AppImages.loading,
          //   image: data.cards[index].images!.small,
          // );
        },
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

class _FailureWidget extends StatelessWidget {
  const _FailureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<CardListBloc>().state;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(S.of(context).message_error),
          ElevatedButton(
            onPressed: () {
              String setId = state.cardListContainer!.setId;
              context.read<CardListBloc>().add(CardListEvent.create(setId));
            },
            child: Text(S.of(context).explore_screen_errorButtonText),
          ),
        ],
      ),
    );
  }
}
