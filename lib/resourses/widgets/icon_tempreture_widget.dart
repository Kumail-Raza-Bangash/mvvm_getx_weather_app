import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/widgets/weather_image.dart';
import 'package:mvvm_getx_weather_app/view_model/home/home_view_model.dart';

class IconAndTempreture extends StatelessWidget {
  IconAndTempreture({super.key});

  final HomeViewModel viewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.maxFinite,
      child: Column(
        children: [
          WeatherImage(), //this is custom widget
          Text(
            viewModel.getCurrentDate(),
            style: TextStyle(
              fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
            ),
          ),
          Wrap(
            children: [
              Text(
                '17',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                ' o ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFeatures: [FontFeature.superscripts()],
                ),
              ),
            ],
      
            
          ),
      
          Text(
                'Conditions',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
        ],
      ),
    );
  }
}
