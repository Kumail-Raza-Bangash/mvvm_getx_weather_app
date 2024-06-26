import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/utils/dimensions.dart';
import 'package:mvvm_getx_weather_app/resourses/widgets/icon_tempreture_widget.dart';
import 'package:mvvm_getx_weather_app/resourses/widgets/loader_view.dart';
import 'package:mvvm_getx_weather_app/resourses/widgets/weather_value_widget.dart';
import 'package:mvvm_getx_weather_app/view_model/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeViewModel viewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF000000),
              Color.fromARGB(255, 35, 35, 35),
              Color(0xFF000000),
            ],
            //stops: [0.25, 0.87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width15,
                    vertical: Dimensions.height20),
                child: Column(
                  children: [
                    IconAndTempreture(),
                    SizedBox(height: Dimensions.height20),
                    WeatherValueWidget(),
                  ],
                ),
              ),
            ),
            const LoaderView(),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Obx(() => Text(viewModel.location.value)),
      actions: [
        IconButton(
          onPressed: () {
            viewModel.changeLocation();
          },
          icon: const Icon(Icons.location_on_outlined),
        ),
      ],
    );
  }
}
