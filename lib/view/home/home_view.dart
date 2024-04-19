import 'package:flutter/material.dart';
import 'package:mvvm_getx_weather_app/components/widgets/appbar_widget.dart';
import 'package:mvvm_getx_weather_app/components/widgets/icon_tempreture_widget.dart';
import 'package:mvvm_getx_weather_app/components/widgets/loader_view.dart';
import 'package:mvvm_getx_weather_app/components/widgets/weather_value_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF000000),
              Color.fromARGB(255, 35, 35, 35),
              Color(0xFF000000),
              Color.fromARGB(255, 35, 35, 35),
              Color(0xFF000000),
            ],
            //stops: [0.25, 0.87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    IconAndTempreture(), 
                    SizedBox(
                      height: 20,
                    ),
                    WeatherValueWidget(),
                  ],
                ),
              ),
            ),
            LoaderView(),
          ],
        ),
      ),
    );
  }
}
