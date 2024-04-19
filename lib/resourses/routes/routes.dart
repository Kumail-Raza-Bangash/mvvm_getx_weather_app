import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/routes/routes_name.dart';
import 'package:mvvm_getx_weather_app/view/home/home_view.dart';
import 'package:mvvm_getx_weather_app/view/location/location_view.dart';

class AppRoutes {
  static appRoute() => [
        GetPage(
          name: RoutesName.initialRoute,
          page: () => const LocationView(), //HomeView
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 250),
        ),

        GetPage(
          name: RoutesName.locationRoute,
          page: () => const LocationView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 250),
        ),

      ];
}