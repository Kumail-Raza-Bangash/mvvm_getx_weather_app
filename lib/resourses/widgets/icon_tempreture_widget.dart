import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/utils/dimensions.dart';
import 'package:mvvm_getx_weather_app/resourses/widgets/weather_image.dart';
import 'package:mvvm_getx_weather_app/view_model/home/home_view_model.dart';

class IconAndTempreture extends StatelessWidget {
  IconAndTempreture({super.key});

  final HomeViewModel viewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height30*10,
      width: double.maxFinite,
      child: Column(
        children: [
          WeatherImage(), //this is custom widget
          Text(
            viewModel.getCurrentDate(),
            style: TextStyle(
              fontSize: Dimensions.font20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Wrap(
            children: [
              Obx(
                () => Text(
                  (viewModel.weatherModel.value.main?.temp ?? 00)
                      .toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: Dimensions.font16*3,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Text(
                ' o ',
                style: TextStyle(
                  fontSize: Dimensions.font20,
                  color: Colors.white,
                  fontFeatures: const [FontFeature.superscripts()],
                ),
              ),
            ],
          ),

          Obx(
            () => Text(
              viewModel.weatherModel.value.weather?.first.main ?? 'N/A',
              style: TextStyle(
                fontSize: Dimensions.font20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
