# Pokemon   Deck Builder App

Application developed solely for educational purposes


## Getting Started

In order to run the first build of the application, use the Makefile for code generation or run command:

```
flutter pub run build_runner build --delete-conflicting-outputs
```
Also, you need to add code below to your additional run args.

```
--dart-define API_KEY={API_Key}

You can get an API key by registering at https://docs.pokemontcg.io/
```

## Built with

* [Pokémon TCG API](https://docs.pokemontcg.io/)
* [Flutter](https://flutter.dev/)
* [flutter_bloc](https://pub.dev/packages/flutter_bloc)
* [freezed](https://pub.dev/packages/freezed)
* [flutter_form_builder](https://pub.dev/packages/flutter_form_builder)
* [sqflite](https://pub.dev/packages/sqflite)
* [json_serializable](https://pub.dev/packages/json_serializable)
* [dart_code_metrics](https://pub.dev/packages/dart_code_metrics)


## Authors

* **Dmitry Munitsyn**
