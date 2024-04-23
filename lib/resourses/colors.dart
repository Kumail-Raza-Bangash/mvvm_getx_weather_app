import 'package:flutter/material.dart';

class AppColor{
  static const Color blackColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);

  static const Color primaryColor = Color(0xFF01B1C9);

  static const Color primaryButtonColor = Color(0xFF01B1C9);
  static const Color secondaryButtonColor = Color(0xFFFC3F5B);
  
  static const Color redColor = Color(0xFFFC3F5B);

  static const Color primaryTextColor = Color(0xFF000000);
  static const Color secondaryTextColor = Color(0xFF444648);


   static BoxDecoration buildGradiantBoxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.white60,
          Colors.green,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      ),
    );
  }

  
}