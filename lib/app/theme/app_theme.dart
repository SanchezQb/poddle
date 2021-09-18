import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Colors.black,
  colorScheme: const ColorScheme.dark().copyWith(secondary: Colors.blue),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
  ),
  cardColor: Colors.grey[900],
);
