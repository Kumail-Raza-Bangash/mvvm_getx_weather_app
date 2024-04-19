import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/view/location/location_view.dart';

AppBar appBar() {
    return AppBar(
      title: const Text(''),
      actions: [
        IconButton(
          onPressed: () {
            Get.to(() => const LocationView());
          },
          icon: const Icon(
            Icons.location_on_outlined,
          ),
        ),
      ],
    );
  }