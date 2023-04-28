// Flutter imports:
import 'package:flutter/material.dart';

const _white = 0xffffffff;

const Color brand = Color(0xFFED5992);
const Color blue = Color(0xFF2F1767);

const Color gray = Color(0xFF8C8C8C);
const Color grayLight = Color(0xFFC4C4C4);
const Color grayDark = Color(0xFF4A4A4A);

const _swatch = <int, Color>{
  50: Color.fromRGBO(158, 158, 158, .1),
  100: Color.fromRGBO(158, 158, 158, .2),
  200: Color.fromRGBO(158, 158, 158, .3),
  300: Color.fromRGBO(158, 158, 158, .4),
  400: Color.fromRGBO(158, 158, 158, .5),
  500: Color.fromRGBO(158, 158, 158, .6),
  600: Color.fromRGBO(158, 158, 158, .7),
  700: Color.fromRGBO(158, 158, 158, .8),
  800: Color.fromRGBO(158, 158, 158, .9),
  900: Color.fromRGBO(158, 158, 158, 1),
};

const MaterialColor materialWhite = MaterialColor(_white, _swatch);
