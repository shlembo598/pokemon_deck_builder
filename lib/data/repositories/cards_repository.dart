import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pokemon_deck_builder/configuration/app_configuration.dart';
import 'package:pokemon_deck_builder/configuration/constants.dart';
import 'package:pokemon_deck_builder/data/models/sets.dart';

class CardsRepository {
  final AppConfiguration configuration = AppConfiguration();
  final Dio httpClient = Dio();

  Future<List<Datum>> getSets([
    int? page = 1,
    int? size = listSize,
  ]) async {
    List<Datum> setList = [];
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
        setList = Sets.fromJson(response.data).data.toList();
      }
    } on DioError catch (error) {
      log(error.toString());
    }

    return setList;
  }
}
