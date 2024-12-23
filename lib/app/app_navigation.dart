// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:grape_platinum_card/app/presentation/add_points/add_points_page.dart';
import 'package:grape_platinum_card/app/presentation/home/home_page.dart';
import 'package:grape_platinum_card/app/presentation/splash/splash_page.dart';

abstract class Routes {
  static const ADD_POINTS = '/add-points';
  static const HOME = '/home';
  static const SPLASH = '/';
}

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.ADD_POINTS,
      page: () => const AddPointsPage(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      transition: Transition.zoom,
    ),
  ];
}
