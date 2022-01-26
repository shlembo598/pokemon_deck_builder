import 'package:dio/dio.dart';
import 'package:pokemon_deck_builder/configuration/app_configuration.dart';
import 'package:pokemon_deck_builder/data/models/card_list.dart';
import 'package:pokemon_deck_builder/data/models/search_card_container.dart';
import 'package:pokemon_deck_builder/data/models/set_list.dart';
import 'package:pokemon_deck_builder/data/utils/constants.dart';

class CardsRepository {
  final AppConfiguration configuration = AppConfiguration();
  final Dio httpClient = Dio();

  Future<List<SetDatum>> getSets([
    int? page = 1,
    int? size = listSize,
  ]) async {
    List<SetDatum> setList = [];
    try {
      final response = await httpClient.get(
        '${AppConfiguration.host}/sets?page=$page&pageSize=$size&orderBy=-releaseDate',
        options: Options(
          headers: {
            'accept': 'application/json',
            'X-Api-Key': AppConfiguration.apiKey,
          },
          responseType: ResponseType.json,
        ),
      );
      if (response.statusCode == 200) {
        setList = SetList.fromJson(response.data).data.toList();
      }
    } on DioError catch (_) {
      rethrow;
    }

    return setList;
  }

  Future<List<CardDatum>> getCardsBySetId(
    String setId, [
    int? page = 1,
    int? size = listSize,
  ]) async {
    List<CardDatum> cardList = [];
    try {
      final response = await httpClient.get(
        '${AppConfiguration.host}/cards?q=set.id:$setId&page=$page&pageSize=$size&orderBy=number',
        options: Options(
          headers: {
            'accept': 'application/json',
            'X-Api-Key': AppConfiguration.apiKey,
          },
          responseType: ResponseType.json,
        ),
      );
      if (response.statusCode == 200) {
        cardList = CardList.fromJson(response.data).data.toList();
      }
    } on DioError catch (_) {
      rethrow;
    }

    return cardList;
  }

  Future<SearchCardContainer> searchCard(
    String parameter, [
    int? page = 1,
    int? size = listSize,
  ]) async {
    SearchCardContainer _container = const SearchCardContainer();
    try {
      final response = await httpClient.get(
        '${AppConfiguration.host}/cards?q=$parameter&page=$page&pageSize=$size',
        options: Options(
          headers: {
            'accept': 'application/json',
            'X-Api-Key': AppConfiguration.apiKey,
          },
          responseType: ResponseType.json,
        ),
      );
      if (response.statusCode == 200) {
        final cardList = CardList.fromJson(response.data).data.toList();
        final String totalCards =
            CardList.fromJson(response.data).totalCount.toString();
        _container = const SearchCardContainer()
            .copyWith(cards: cardList, totalCards: totalCards);
      }
    } on DioError catch (_) {
      rethrow;
    }

    return _container;
  }
}
