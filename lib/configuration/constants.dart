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

enum pokemonClasses {
  colorless,
  darkness,
  dragon,
  fairy,
  fighting,
  fire,
  grass,
  lightning,
  metal,
  psychic,
  water,
}
