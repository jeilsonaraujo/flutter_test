import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:restaurantour/core/rt_colors.dart';
import 'package:restaurantour/core/inject.dart';
import 'package:restaurantour/core/text_style.dart';
import 'package:restaurantour/features/restaurants_list/pages/favorites/favorites_page.dart';
import 'package:restaurantour/features/restaurants_list/pages/all_restaurants/all_restaurants_page.dart';
import 'package:restaurantour/features/restaurants_list/restaurant_view_model.dart';
import 'package:restaurantour/repositories/yelp_repository.dart';

class RestaurantsListScreen extends StatefulWidget {
  const RestaurantsListScreen({super.key});

  static Widget create() => ChangeNotifierProvider(
        create: (context) => RestaurantListViewModel(yelpRepo: inject<YelpRepository>()),
        child: const RestaurantsListScreen(),
      );

  @override
  State<RestaurantsListScreen> createState() => _RestaurantsListScreenState();
}

class _RestaurantsListScreenState extends State<RestaurantsListScreen> {
  RestaurantListViewModel? model;

  @override
  void initState() {
    super.initState();
    model = context.read();
    WidgetsBinding.instance.addPostFrameCallback((_) async => await model!.load());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.restaurantListRestauranTour,
              style: RTTextStyle.headingH6(color: RTColors.defaultText),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    AppLocalizations.of(context)!.restaurantListAllRestaurantsTab,
                    style: RTTextStyle.button(),
                  ),
                ),
                Tab(
                  child: Text(
                    AppLocalizations.of(context)!.restaurantListMyFavoritesTab,
                    style: RTTextStyle.button(),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Placeholder(),
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}