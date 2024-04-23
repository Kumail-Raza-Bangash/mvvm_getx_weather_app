import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/image_assets.dart';
import 'package:mvvm_getx_weather_app/view_model/home/home_view_model.dart';

class WeatherImage extends StatelessWidget {
  WeatherImage({super.key});

  final HomeViewModel viewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    final iconUrl = viewModel.weatherModel.value.weather?.first.icon;

    if (iconUrl == null) {
      // Handle the case where iconUrl is null (e.g., show a default image)
      return Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage('assets/images/clouds.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return CachedNetworkImage(
      imageUrl: 'https://openweathermap.org/img/wn/$iconUrl@4x.png',
      height: 120,
      width: 120,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(ImageAssets.clouds), //clouds.png
        );
      },
      placeholder: (context, url) {
        return const Center(
          child: CircularProgressIndicator(
            strokeWidth: 3,
            color: Colors.white,
          ),
        );
      },
    );
  }
}



//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl: 'https://openweathermap.org/img/wn/${viewModel.weatherModel.value.weather?.first.icon}@2x.png',
//       height: 120,
//       width: 120,
//       imageBuilder: (context, imageProvider) {
//         return Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
//           ),
//         );
//       },
//       errorWidget: (context, url, error) {
//         return Container(
//           alignment: Alignment.center,
//           height: 50,
//           width: 50,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Image.asset('assets/images/clouds.png'),
//         );
//       },
//       placeholder: (context, url){
//         return const Center(
//           child: CircularProgressIndicator(
//             strokeWidth: 3,
//             color: Colors.white,
//           ),
//         );
//       },
//     );
//   }
// }
