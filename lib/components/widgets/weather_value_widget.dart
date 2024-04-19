import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_getx_weather_app/components/widgets/detail_item_widget.dart';

class WeatherValueWidget extends StatelessWidget {
  const WeatherValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DetailItemsWidgets(title: 'Minimum', value: '', icon: CupertinoIcons.down_arrow, unit: ''),
            const SizedBox(width: 10,),
            DetailItemsWidgets(title: 'Maximum', value: '', icon: CupertinoIcons.up_arrow, unit: ''),
        
          ],
        ),
        Row(
          children: [
            DetailItemsWidgets(title: 'Wind', value: '', icon: Icons.wind_power, unit: ''),
            const SizedBox(width: 10,),
            DetailItemsWidgets(title: 'Feel Like', value: '', icon: Icons.cloudy_snowing, unit: ''),
        
          ],
        ),
        Row(
          children: [
            DetailItemsWidgets(title: 'Pressure', value: '', icon: Icons.thermostat, unit: ''),
            const SizedBox(width: 10,),
            DetailItemsWidgets(title: 'Humidity', value: '', icon: Icons.water_drop_outlined, unit: ''),
        
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            DetailItemsWidgets(title: 'Sun Rise', value: '', icon: Icons.sunny, unit: ''),
            const SizedBox(width: 10,),
            DetailItemsWidgets(title: 'Sun Set', value: '', icon: Icons.sunny_snowing, unit: ''),
        
          ],
        ),
        Row(
          children: [
            DetailItemsWidgets(title: 'Latitude', value: '', icon: Icons.location_on, unit: ''),
            const SizedBox(width: 10,),
            DetailItemsWidgets(title: 'Longitude', value: '', icon: Icons.location_on, unit: ''),
        
          ],
        ),
      ],
    );
  }
}