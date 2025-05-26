import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.deepPurple,
      hintColor: Colors.white,
      textTheme: TextTheme(
        titleLarge: TextStyle(color: Colors.white, fontSize: 20),
        bodyMedium: TextStyle(color: Colors.white70),
      ),
    );
  }
}
