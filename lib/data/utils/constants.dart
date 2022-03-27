import 'package:flutter/material.dart';

const listSize = 15;

const Color dialogTextColor = Colors.white;
const Color errorBorderColor = Colors.red;

const double fontSizeTheSmallest = 12.0;
const double fontSizeSmall = 14.0;
const double fontSizeMiddle = 16.0;
const double fontSizeLarge = 18.0;

const TextStyle smallText = TextStyle(fontSize: fontSizeSmall);
const TextStyle smallBoldText =
    TextStyle(fontSize: fontSizeSmall, fontWeight: FontWeight.w600);
const TextStyle middleText = TextStyle(fontSize: fontSizeMiddle);
const TextStyle middleBoldText =
    TextStyle(fontSize: fontSizeMiddle, fontWeight: FontWeight.w600);
const TextStyle largeText = TextStyle(fontSize: fontSizeLarge);
const TextStyle largeBoldText =
    TextStyle(fontSize: fontSizeLarge, fontWeight: FontWeight.w600);

enum FormNames {
  searchByType,
  searchByName,
  searchBySubtype,
  searchBySupertype,
  rarity,
  pokemonSeries,
  hpRange,
  weaknesses,
}

const List<String> pokemonTypes = [
  'colorless',
  'darkness',
  'dragon',
  'fairy',
  'fighting',
  'fire',
  'grass',
  'lightning',
  'metal',
  'psychic',
  'water',
];

const List<String> pokemonSuperTypes = [
  'energy',
  'pokémon',
  'trainer',
];

const List<String> weaknesses = [
  'energy',
  'pokemon',
  'trainer',
];

const List<String> pokemonSeries = [
  'Sword & Shield',
  'Sun & Soon',
  'XY',
  'Black & White',
  'HeartGold & SoulSilver',
  'Platinum',
  'POP',
  'Diamond & Pearl',
  'EX',
  'e-Card',
  'Neo',
  'Gym',
  'Base',
  'Other',
];

const List<String> rarities = [
  "Amazing Rare",
  "Common",
  "LEGEND",
  "Promo",
  "Rare",
  "Rare ACE",
  "Rare BREAK",
  "Rare Holo",
  "Rare Holo EX",
  "Rare Holo GX",
  "Rare Holo LV.X",
  "Rare Holo Star",
  "Rare Holo V",
  "Rare Holo VMAX",
  "Rare Prime",
  "Rare Prism Star",
  "Rare Rainbow",
  "Rare Secret",
  "Rare Shining",
  "Rare Shiny",
  "Rare Shiny GX",
  "Rare Ultra",
  "Uncommon",
];

const List<String> pokemonSubTypes = [
  "BREAK",
  "Baby",
  "Basic",
  "EX",
  "GX",
  "Goldenrod Game Corner",
  "Item",
  "LEGEND",
  "Level-Up",
  "MEGA",
  "Pokémon Tool",
  "Pokémon Tool F",
  "Rapid Strike",
  "Restored",
  "Rocket's Secret Machine",
  "Single Strike",
  "Special",
  "Stadium",
  "Stage 1",
  "Stage 2",
  "Supporter",
  "TAG TEAM",
  "Technical Machine",
  "V",
  "VMAX",
];
