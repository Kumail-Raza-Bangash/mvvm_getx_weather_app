import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/helper/global_variables.dart';
import 'package:mvvm_getx_weather_app/resourses/helper/theme_helper.dart';
import 'package:mvvm_getx_weather_app/resourses/utils/dimensions.dart';

class LoaderView extends StatelessWidget {
  const LoaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (GlobalVariables.showLoader.value)
          ? Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Dimensions.width30 * 2,
                    height: Dimensions.height30 * 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(
                            Dimensions.radius20 / 2)),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.height10),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          ThemeHelper.primaryColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}
