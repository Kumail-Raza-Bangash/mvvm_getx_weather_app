import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mvvm_getx_weather_app/model/weather_model.dart';
import 'package:mvvm_getx_weather_app/resourses/helper/getx_helper.dart';
import 'package:mvvm_getx_weather_app/resourses/helper/global_variables.dart';
import 'package:http/http.dart' as http;

class HomeViewModel extends GetxController {
  Rx<WeatherModel> weatherModel = WeatherModel().obs;
  RxString location = "Islamabad, Pakistan".obs;

  void onReady(){
    getLastLocationAndUpdate();
    super.onReady();
  }

  getLastLocationAndUpdate() {
    //Get Last Selected Location 
    location.value = GetStorage().read('lastLocation') ?? 'Islamabad, Pakistan';

    //Get Local Data
    var data = GetStorage().read(location.value) ?? <String, dynamic> {};
    weatherModel.value = WeatherModel.fromJson(data);

    //Get Lastest Data
    getWeatherUpdate();
  }

  getWeatherUpdate () async {
    try {
      Map<String, String> header = {
        'Counter-Type' : 'application/json',
        'Accept' : 'application/json'
      };

      String url = 'https://api.openweathermap.org/data/2.5/weather';
      Map<String, String> params = {
        'appid': '3d30c57a037dc01fb7e2feda92e83723',
        'q': location.value,
        'units': 'metric',
      };
      Uri uriValue = Uri.parse(url).replace(queryParameters: params);

      GlobalVariables.showLoader.value;
      http.Response response = await http.get(uriValue,headers: header);
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      GlobalVariables.showLoader.value = false;

      if(parsedJson['cod'] == 200){
        weatherModel.value = WeatherModel.fromJson(parsedJson);

        //Store Data Locally
        GetStorage().write(location.value, parsedJson);
        GetxHelper.showSnackbar(message: 'Weather Updated Successfully');
      }
      else{
        GetxHelper.showSnackbar(message: 'Something went wrong');
      }

    }
    catch (e){
      GetxHelper.showSnackbar(message: e.toString());
    }
  }

}