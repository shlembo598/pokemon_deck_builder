import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pokemon_deck_builder/configuration/app_configuration.dart';

class CardsRepository {
  final AppConfiguration configuration = AppConfiguration();
  final Dio httpClient = Dio();

  Future<Response<dynamic>?> getSets() async {
    Response? response;
    try {
      response = await httpClient.get(
        '${AppConfiguration.host}/sets?page=1&pageSize=250&orderBy=-releaseDate',
        options: Options(
          headers: {
            'accept': 'application/json',
            'X-Api-Key': AppConfiguration.apiKey,
          },
          responseType: ResponseType.json,
        ),
      );
    } on DioError catch (error) {
      log(error.toString());
    }

    return response;
  }
}
