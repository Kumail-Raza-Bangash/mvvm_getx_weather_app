import 'package:flutter/material.dart';
import 'package:mvvm_getx_weather_app/components/widgets/weather_image.dart';

class IconAndTempreture extends StatelessWidget {
  const IconAndTempreture({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        children: [
          WeatherImage(), //this is custom widget
          Text(
            "Current Data",
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
