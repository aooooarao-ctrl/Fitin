import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: const Color(0xFF6366F1),
      scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF6366F1),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}
