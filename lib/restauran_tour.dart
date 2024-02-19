import 'package:flutter/material.dart';
import 'package:restaurantour/core/rt_colors.dart';
import 'package:restaurantour/features/restaurants/restaurants_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RestauranTour extends StatelessWidget {
  const RestauranTour({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: const ColorScheme.light(
          primary: RTColors.primaryFill,
          onSurface: RTColors.secondaryText,
          background: RTColors.background,
        ),
      ),
      home: RestaurantsScreen.create(),
    );
  }
}
