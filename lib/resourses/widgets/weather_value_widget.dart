import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/utils/dimensions.dart';
import 'package:mvvm_getx_weather_app/resourses/widgets/detail_item_widget.dart';
import 'package:mvvm_getx_weather_app/view_model/home/home_view_model.dart';

class WeatherValueWidget extends StatelessWidget {
  WeatherValueWidget({super.key});

  final HomeViewModel viewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Obx(
              () => DetailItemsWidgets(
                title: 'Minimum',
                value: '${viewModel.weatherModel.value.main?.tempMin ?? 'N/A'}',
                icon: CupertinoIcons.down_arrow,
                unit: '',
              ),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            Obx(
              () => DetailItemsWidgets(
                title: 'Maximum',
                value: '${viewModel.weatherModel.value.main?.tempMax ?? 'N/A'}',
                icon: CupertinoIcons.up_arrow,
                unit: '',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Obx(
              () => DetailItemsWidgets(
                title: 'Wind',
                value: '${viewModel.weatherModel.value.wind?.speed ?? 'N/A'}',
                icon: Icons.wind_power,
                unit: 'm/s',
              ),
            ),
            SizedBox(width: Dimensions.width10),
            Obx(
              () => DetailItemsWidgets(
                title: 'Feel Like',
                value:
                    '${viewModel.weatherModel.value.main?.feelsLike ?? 'N/A'}',
                icon: Icons.cloudy_snowing,
                unit: '',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Obx(
              () => DetailItemsWidgets(
                title: 'Pressure',
                value:
                    '${viewModel.weatherModel.value.main?.pressure ?? 'N/A'}',
                icon: Icons.thermostat,
                unit: '',
              ),
            ),
            SizedBox(width: Dimensions.width10),
            Obx(
              () => DetailItemsWidgets(
                title: 'Humidity',
                value:
                    '${viewModel.weatherModel.value.main?.humidity ?? 'N/A'}',
                icon: Icons.water_drop_outlined,
                unit: '',
              ),
            ),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          children: [
            Obx(
              () => DetailItemsWidgets(
                title: 'Sun Rise',
                value: viewModel.convertTimeStampToTime(
                    viewModel.weatherModel.value.sys?.sunrise),
                icon: Icons.sunny,
                unit: '',
              ),
            ),
            SizedBox(width: Dimensions.width10),
            Obx(
              () => DetailItemsWidgets(
                title: 'Sun Set',
                value: viewModel.convertTimeStampToTime(
                    viewModel.weatherModel.value.sys?.sunset),
                icon: Icons.sunny_snowing,
                unit: '',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Obx(
              () => DetailItemsWidgets(
                title: 'Latitude',
                value: '${viewModel.weatherModel.value.coord?.lat ?? 'N/A'}',
                icon: Icons.location_on,
                unit: '',
              ),
            ),
            SizedBox(width: Dimensions.width10),
            Obx(
              () => DetailItemsWidgets(
                title: 'Longitude',
                value: '${viewModel.weatherModel.value.coord?.lon ?? 'N/A'}',
                icon: Icons.location_on,
                unit: '',
              ),
            )
          ],
        ),
      ],
    );
  }
}
