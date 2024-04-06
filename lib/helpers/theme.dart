import 'package:flutter/material.dart';

ColorScheme colorSchemeBlue = ColorScheme.fromSeed(seedColor: Colors.indigo);

final ColorScheme colorScheme = colorSchemeBlue.copyWith(
    primaryContainer: colorSchemeBlue.onPrimaryContainer,
    onPrimaryContainer: colorSchemeBlue.primaryContainer);

var theme = ThemeData(
  colorScheme: colorScheme,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: colorScheme.primaryContainer,
    foregroundColor: colorScheme.onPrimaryContainer,
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: colorScheme.primaryContainer,
    indicatorColor: colorScheme.primary,
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
    labelTextStyle: MaterialStateProperty.resolveWith((state) {
      return TextStyle(color: colorScheme.onPrimary);
    }),
    iconTheme: MaterialStateProperty.resolveWith((state) {
      // if (state.contains(MaterialState.selected)) {
      //   return IconThemeData(color: colorScheme.onPrimary);
      // }
      return IconThemeData(color: colorScheme.onPrimary);
    }),
  ),
);
