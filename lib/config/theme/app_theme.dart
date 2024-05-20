import 'package:flutter/material.dart';

const Color customColor = Color.fromARGB(255, 106, 31, 227);

const List<Color> colorThemes = [
  customColor,
  Colors.amberAccent,
  Colors.blueAccent,
  Colors.tealAccent,
  Colors.deepPurple,
  Colors.lightGreen,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= colorThemes.length - 1,
            'Colors must be between  0 and ${colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: colorThemes[selectedColor],
      //brightness: Brightness.dark
    );
  }
}
