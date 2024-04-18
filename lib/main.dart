import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mvvm_getx_weather_app/components/helper/theme_helper.dart';
import 'package:mvvm_getx_weather_app/view/home/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVVM Getx Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper.light,
      home: const HomeView(),
    );
  }
}

