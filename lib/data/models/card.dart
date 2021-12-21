import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class Card with _$Card {
  @JsonSerializable(explicitToJson: true)
  const factory Card({
    required String id,
    required String name,
    required String supertype,
    required List<String> subtypes,
    required String hp,
    required List<String> types,
    required String evolvesFrom,
    required List<Ability> abilities,
    required List<Attack> attacks,
    required List<Weakness> weaknesses,
    required List<String> retreatCost,
    required int convertedRetreatCost,
    required Set cardSet,
    required String number,
    required String artist,
    required String rarity,
    required String flavorText,
    required List<int> nationalPokedexNumbers,
    required Legalities legalities,
    required CardImages images,
    required TcgPlayer tcgplayer,
    required CardMarket cardmarket,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}

@freezed
class Ability with _$Ability {
  const factory Ability({
    required String name,
    required String text,
    required String type,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}

@freezed
class Attack with _$Attack {
  const factory Attack({
    required String name,
    required List<String> cost,
    required int convertedEnergyCost,
    required String damage,
    required String text,
  }) = _Attack;

  factory Attack.fromJson(Map<String, dynamic> json) => _$AttackFromJson(json);
}

@freezed
class Set with _$Set {
  const factory Set({
    required String id,
    required String name,
    required String series,
    required int printedTotal,
    required int total,
    required Legalities legalities,
    required String ptcgoCode,
    required String releaseDate,
    required String updatedAt,
    required SetImages images,
  }) = _Set;

  factory Set.fromJson(Map<String, dynamic> json) => _$SetFromJson(json);
}

@freezed
class SetImages with _$SetImages {
  const factory SetImages({
    required String symbol,
    required String logo,
  }) = _SetImages;

  factory SetImages.fromJson(Map<String, dynamic> json) =>
      _$SetImagesFromJson(json);
}

@freezed
class Legalities with _$Legalities {
  const factory Legalities({
    required String unlimited,
    required String standard,
    required String expanded,
  }) = _Legalities;

  factory Legalities.fromJson(Map<String, dynamic> json) =>
      _$LegalitiesFromJson(json);
}

@freezed
class CardMarket with _$CardMarket {
  const factory CardMarket({
    required String url,
    required String updatedAt,
    required Map<String, double> prices,
  }) = _CardMarket;

  factory CardMarket.fromJson(Map<String, dynamic> json) =>
      _$CardMarketFromJson(json);
}

@freezed
class CardImages with _$CardImages {
  const factory CardImages({
    required String small,
    required String large,
  }) = _CardImages;

  factory CardImages.fromJson(Map<String, dynamic> json) =>
      _$CardImagesFromJson(json);
}

@freezed
class TcgPlayer with _$TcgPlayer {
  const factory TcgPlayer({
    required String url,
    required String updatedAt,
    required Prices prices,
  }) = _TcgPlayer;

  factory TcgPlayer.fromJson(Map<String, dynamic> json) =>
      _$TcgPlayerFromJson(json);
}

@freezed
class Prices with _$Prices {
  const factory Prices({
    required Normal normal,
    required Normal reverseHolofoil,
  }) = _Prices;

  factory Prices.fromJson(Map<String, dynamic> json) => _$PricesFromJson(json);
}

@freezed
class Normal with _$Normal {
  const factory Normal({
    required double low,
    required double mid,
    required double high,
    required double market,
    required double directLow,
  }) = _Normal;

  factory Normal.fromJson(Map<String, dynamic> json) => _$NormalFromJson(json);
}

@freezed
class Weakness with _$Weakness {
  const factory Weakness({
    required String type,
    required String value,
  }) = _Weakness;

  factory Weakness.fromJson(Map<String, dynamic> json) =>
      _$WeaknessFromJson(json);
}
