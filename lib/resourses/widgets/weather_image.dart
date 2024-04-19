import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class WeatherImage extends StatelessWidget {
  const WeatherImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: '',
      height: 120,
      width: 120,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        );
      },
      placeholder: (context, url) {
        return Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset('assets/images/clouds.png'),
        );
      },
      errorWidget: (context, url, error){
        return const Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.white,
          ),
        );
      },
    );
  }
}
