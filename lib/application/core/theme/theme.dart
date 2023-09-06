import 'package:flutter/material.dart';

class HilolTestTheme {
  static ThemeData get lightMode => _ligthMode;
  static ThemeData get darkMode => _darkMode;

  static final ThemeData _ligthMode = ThemeData(
    // scaffoldBackgroundColor: Colors.white.withOpacity(0.1),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      actionsIconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white.withOpacity(0.1),
        titleTextStyle: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
    textTheme: const TextTheme(
      displaySmall: TextStyle(color: Colors.black),
      displayLarge: TextStyle(color: Color.fromRGBO(96, 125, 139, 1)),
      bodyLarge: TextStyle(color: Colors.black),
    ),
  );

  static final ThemeData _darkMode = ThemeData(
      brightness: Brightness.dark,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey.shade800)),
      scaffoldBackgroundColor: Colors.blueGrey.shade900,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blueGrey.shade900,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.blueGrey.shade900,
      ),
      appBarTheme: AppBarTheme(
      actionsIconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blueGrey.shade900.withOpacity(0.8),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
      textTheme: TextTheme(
          displaySmall: const TextStyle(color: Colors.white),
          displayLarge: TextStyle(color: Colors.white70.withOpacity(0.7)),
          bodyLarge: const TextStyle(color: Colors.white)));
}
