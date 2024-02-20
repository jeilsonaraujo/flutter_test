import 'package:flutter/material.dart';
import 'package:restaurantour/core/rt_colors.dart';

class RTThemeData {
  static final themeData = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.light(
      primary: RTColors.primaryFill,
      onSurface: RTColors.secondaryText,
      background: RTColors.background,
    ),
  );
}
