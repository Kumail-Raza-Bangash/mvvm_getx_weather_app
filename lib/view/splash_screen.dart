
import 'package:flutter/material.dart';
import 'package:mvvm_getx_weather_app/resourses/colors.dart';
import 'package:mvvm_getx_weather_app/resourses/image_assets.dart';
import 'package:mvvm_getx_weather_app/resourses/utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController controller;

    @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this, 
      duration: const Duration(seconds: 4))..forward();
    
    animation = CurvedAnimation(
      parent: controller, 
      curve: Curves.linear);

      

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColor.buildGradiantBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: ScaleTransition(
            scale: animation,
            child: Center(
              child: Image.asset(
                ImageAssets.clouds,
                width: Dimensions.splashImg,
              ),
            ),
          ),
        ),
      ),
    );
  }
}