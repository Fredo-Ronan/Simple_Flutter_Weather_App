
import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE2E9F4),
  100: Color(0xFFB6C8E3),
  200: Color(0xFF86A3D0),
  300: Color(0xFF567EBD),
  400: Color(0xFF3163AF),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF0B4099),
  700: Color(0xFF09378F),
  800: Color(0xFF072F85),
  900: Color(0xFF032074),
});
const int _primaryPrimaryValue = 0xFF0D47A1;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFA2B4FF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF3C61FF),
  700: Color(0xFF234CFF),
});
const int _primaryAccentValue = 0xFF6F8AFF;