import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/routes/routes_name.dart';
import 'package:mvvm_getx_weather_app/view/home/home_view.dart';
import 'package:mvvm_getx_weather_app/view/location/location_view.dart';
import 'package:mvvm_getx_weather_app/view/splash_screen.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
          name: RoutesName.initialRoute,
          page: () => const SplashScreen(), //HomeView LocationView
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 250),
        ),

        GetPage(
          name: RoutesName.homeRoute,
          page: () => HomeView(), //HomeView LocationView
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 250),
        ),

        GetPage(
          name: RoutesName.locationRoute,
          page: () => LocationView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 250),
        ),

      ];
}