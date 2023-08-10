import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.red
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
       appBarTheme: const AppBarTheme(
        backgroundColor: Colors.red
       ),
       scaffoldBackgroundColor: Colors.black,
       textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: Colors.white, 
          fontSize: 40,
          fontWeight: FontWeight.bold, 
          fontFamily: 'Helvetica'),
        bodyMedium: TextStyle(
          color: Colors.white, 
          fontSize: 14,
          fontWeight: FontWeight.bold, 
          fontFamily: 'Helvetica'),
          
       )
       );
  }
}
