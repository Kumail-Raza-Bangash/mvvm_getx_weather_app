// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'dart:async';

import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/routes/routes_name.dart';

class SplashServices {
  void isSuccess() {
    Timer(
      const Duration(seconds: 3),
      () => Get.toNamed(RoutesName.initialRoute),
    );
  }

}