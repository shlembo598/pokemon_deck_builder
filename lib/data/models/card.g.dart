// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Card _$$_CardFromJson(Map<String, dynamic> json) => _$_Card(
      id: json['id'] as String,
      name: json['name'] as String,
      supertype: json['supertype'] as String,
      subtypes:
          (json['subtypes'] as List<dynamic>).map((e) => e as String).toList(),
      hp: json['hp'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      evolvesFrom: json['evolvesFrom'] as String,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      attacks: (json['attacks'] as List<dynamic>)
          .map((e) => Attack.fromJson(e as Map<String, dynamic>))
          .toList(),
      weaknesses: (json['weaknesses'] as List<dynamic>)
          .map((e) => Weakness.fromJson(e as Map<String, dynamic>))
          .toList(),
      retreatCost: (json['retreatCost'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      convertedRetreatCost: json['convertedRetreatCost'] as int,
      cardSet: Set.fromJson(json['cardSet'] as Map<String, dynamic>),
      number: json['number'] as String,
      artist: json['artist'] as String,
      rarity: json['rarity'] as String,
      flavorText: json['flavorText'] as String,
      nationalPokedexNumbers: (json['nationalPokedexNumbers'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      legalities:
          Legalities.fromJson(json['legalities'] as Map<String, dynamic>),
      images: CardImages.fromJson(json['images'] as Map<String, dynamic>),
      tcgplayer: TcgPlayer.fromJson(json['tcgplayer'] as Map<String, dynamic>),
      cardmarket:
          CardMarket.fromJson(json['cardmarket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CardToJson(_$_Card instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'supertype': instance.supertype,
      'subtypes': instance.subtypes,
      'hp': instance.hp,
      'types': instance.types,
      'evolvesFrom': instance.evolvesFrom,
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'attacks': instance.attacks.map((e) => e.toJson()).toList(),
      'weaknesses': instance.weaknesses.map((e) => e.toJson()).toList(),
      'retreatCost': instance.retreatCost,
      'convertedRetreatCost': instance.convertedRetreatCost,
      'cardSet': instance.cardSet.toJson(),
      'number': instance.number,
      'artist': instance.artist,
      'rarity': instance.rarity,
      'flavorText': instance.flavorText,
      'nationalPokedexNumbers': instance.nationalPokedexNumbers,
      'legalities': instance.legalities.toJson(),
      'images': instance.images.toJson(),
      'tcgplayer': instance.tcgplayer.toJson(),
      'cardmarket': instance.cardmarket.toJson(),
    };

_$_Ability _$$_AbilityFromJson(Map<String, dynamic> json) => _$_Ability(
      name: json['name'] as String,
      text: json['text'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_AbilityToJson(_$_Ability instance) =>
    <String, dynamic>{
      'name': instance.name,
      'text': instance.text,
      'type': instance.type,
    };

_$_Attack _$$_AttackFromJson(Map<String, dynamic> json) => _$_Attack(
      name: json['name'] as String,
      cost: (json['cost'] as List<dynamic>).map((e) => e as String).toList(),
      convertedEnergyCost: json['convertedEnergyCost'] as int,
      damage: json['damage'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_AttackToJson(_$_Attack instance) => <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
      'convertedEnergyCost': instance.convertedEnergyCost,
      'damage': instance.damage,
      'text': instance.text,
    };

_$_Set _$$_SetFromJson(Map<String, dynamic> json) => _$_Set(
      id: json['id'] as String,
      name: json['name'] as String,
      series: json['series'] as String,
      printedTotal: json['printedTotal'] as int,
      total: json['total'] as int,
      legalities:
          Legalities.fromJson(json['legalities'] as Map<String, dynamic>),
      ptcgoCode: json['ptcgoCode'] as String,
      releaseDate: json['releaseDate'] as String,
      updatedAt: json['updatedAt'] as String,
      images: SetImages.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SetToJson(_$_Set instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'series': instance.series,
      'printedTotal': instance.printedTotal,
      'total': instance.total,
      'legalities': instance.legalities,
      'ptcgoCode': instance.ptcgoCode,
      'releaseDate': instance.releaseDate,
      'updatedAt': instance.updatedAt,
      'images': instance.images,
    };

_$_SetImages _$$_SetImagesFromJson(Map<String, dynamic> json) => _$_SetImages(
      symbol: json['symbol'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$_SetImagesToJson(_$_SetImages instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'logo': instance.logo,
    };

_$_Legalities _$$_LegalitiesFromJson(Map<String, dynamic> json) =>
    _$_Legalities(
      unlimited: json['unlimited'] as String,
      standard: json['standard'] as String,
      expanded: json['expanded'] as String,
    );

Map<String, dynamic> _$$_LegalitiesToJson(_$_Legalities instance) =>
    <String, dynamic>{
      'unlimited': instance.unlimited,
      'standard': instance.standard,
      'expanded': instance.expanded,
    };

_$_CardMarket _$$_CardMarketFromJson(Map<String, dynamic> json) =>
    _$_CardMarket(
      url: json['url'] as String,
      updatedAt: json['updatedAt'] as String,
      prices: (json['prices'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$_CardMarketToJson(_$_CardMarket instance) =>
    <String, dynamic>{
      'url': instance.url,
      'updatedAt': instance.updatedAt,
      'prices': instance.prices,
    };

_$_CardImages _$$_CardImagesFromJson(Map<String, dynamic> json) =>
    _$_CardImages(
      small: json['small'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$_CardImagesToJson(_$_CardImages instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

_$_TcgPlayer _$$_TcgPlayerFromJson(Map<String, dynamic> json) => _$_TcgPlayer(
      url: json['url'] as String,
      updatedAt: json['updatedAt'] as String,
      prices: Prices.fromJson(json['prices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TcgPlayerToJson(_$_TcgPlayer instance) =>
    <String, dynamic>{
      'url': instance.url,
      'updatedAt': instance.updatedAt,
      'prices': instance.prices,
    };

_$_Prices _$$_PricesFromJson(Map<String, dynamic> json) => _$_Prices(
      normal: Normal.fromJson(json['normal'] as Map<String, dynamic>),
      reverseHolofoil:
          Normal.fromJson(json['reverseHolofoil'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PricesToJson(_$_Prices instance) => <String, dynamic>{
      'normal': instance.normal,
      'reverseHolofoil': instance.reverseHolofoil,
    };

_$_Normal _$$_NormalFromJson(Map<String, dynamic> json) => _$_Normal(
      low: (json['low'] as num).toDouble(),
      mid: (json['mid'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      market: (json['market'] as num).toDouble(),
      directLow: (json['directLow'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NormalToJson(_$_Normal instance) => <String, dynamic>{
      'low': instance.low,
      'mid': instance.mid,
      'high': instance.high,
      'market': instance.market,
      'directLow': instance.directLow,
    };

_$_Weakness _$$_WeaknessFromJson(Map<String, dynamic> json) => _$_Weakness(
      type: json['type'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_WeaknessToJson(_$_Weakness instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
