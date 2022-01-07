import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_list.freezed.dart';
part 'card_list.g.dart';

@freezed
class CardList with _$CardList {
  @JsonSerializable(explicitToJson: true)
  const factory CardList({
    required List<CardDatum> data,
    required int page,
    required int pageSize,
    required int count,
    required int totalCount,
  }) = _CardList;

  factory CardList.fromJson(Map<String, dynamic> json) =>
      _$CardListFromJson(json);
}

@freezed
class CardDatum with _$CardDatum {
  const factory CardDatum({
    required String id,
    required String name,
    required String? supertype,
    required List<String>? subtypes,
    required String? hp,
    required List<String>? types,
    required List<String>? evolvesTo,
    required List<Attack>? attacks,
    required List<Weakness>? weaknesses,
    required List<String>? retreatCost,
    required int? convertedRetreatCost,
    required CardSet? set,
    required String? number,
    required String? artist,
    required String? rarity,
    required String? flavorText,
    required List<int>? nationalPokedexNumbers,
    required Legalities? legalities,
    required DatumImages? images,
    required TcgPlayer? tcgplayer,
    required CardMarket? cardmarket,
  }) = _CardDatum;
  factory CardDatum.fromJson(Map<String, dynamic> json) =>
      _$CardDatumFromJson(json);
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
class CardMarket with _$CardMarket {
  const factory CardMarket({
    required String url,
    required String updatedAt,
    required Map<String, double>? prices,
  }) = _CardMarket;

  factory CardMarket.fromJson(Map<String, dynamic> json) =>
      _$CardMarketFromJson(json);
}

@freezed
class CardSet with _$CardSet {
  const factory CardSet({
    required String id,
    required String name,
    required String series,
    required int printedTotal,
    required int total,
    required Legalities legalities,
    required String releaseDate,
    required String updatedAt,
    required SetImages images,
  }) = _CardSet;

  factory CardSet.fromJson(Map<String, dynamic> json) =>
      _$CardSetFromJson(json);
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
    required String? unlimited,
    required String? expanded,
  }) = _Legalities;

  factory Legalities.fromJson(Map<String, dynamic> json) =>
      _$LegalitiesFromJson(json);
}

@freezed
class DatumImages with _$DatumImages {
  const factory DatumImages({
    required String small,
    required String large,
  }) = _DatumImages;

  factory DatumImages.fromJson(Map<String, dynamic> json) =>
      _$DatumImagesFromJson(json);
}

@freezed
class TcgPlayer with _$TcgPlayer {
  const factory TcgPlayer({
    required String url,
    required String updatedAt,
    required Prices? prices,
  }) = _TcgPlayer;

  factory TcgPlayer.fromJson(Map<String, dynamic> json) =>
      _$TcgPlayerFromJson(json);
}

@freezed
class Prices with _$Prices {
  const factory Prices({
    required HoloFoil? normal,
    required HoloFoil? holofoil,
  }) = _Prices;

  factory Prices.fromJson(Map<String, dynamic> json) => _$PricesFromJson(json);
}

@freezed
class HoloFoil with _$HoloFoil {
  const factory HoloFoil({
    required double? low,
    required double? mid,
    required double? high,
    required double? market,
  }) = _HoloFoil;

  factory HoloFoil.fromJson(Map<String, dynamic> json) =>
      _$HoloFoilFromJson(json);
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
