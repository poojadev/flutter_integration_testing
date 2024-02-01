import 'dart:ui';

import 'package:flutter/material.dart';

Color backgroundColor=Colors.blueGrey.shade400;




//colorFromHex('7043f2');
Color colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}