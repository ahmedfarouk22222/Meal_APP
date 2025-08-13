import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:meal_app/App/modules/deatails/bindings/details_bindings.dart';
import 'package:meal_app/App/modules/deatails/view/details_view.dart';
import 'package:meal_app/App/modules/home/bindings/meals_bindings.dart';
import 'package:meal_app/App/modules/home/view/home_view.dart';
import 'package:meal_app/App/modules/search/bindings/search_bindinga.dart';
import 'package:meal_app/App/modules/search/view/search_view.dart';
import 'package:meal_app/App/modules/splash/bindings/splash_bindings.dart';
import 'package:meal_app/App/modules/splash/view/splash_view.dart';
import 'package:meal_app/App/routes/app_routes.dart';

class AppPage {
  static const initial = AppRoutes.splash;
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashView(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: MealsBindings(),
    ),
    GetPage(
      name: AppRoutes.detailsView,
      page: () => DetailsView(),
      binding: DetailsBindings(),
    ),
    GetPage(
      name: AppRoutes.searchView,
      page: () => SearchView(),
      binding: SearchBindings(),
    ),
  ];
}
