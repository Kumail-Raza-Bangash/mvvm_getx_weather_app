// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_weather_app/resourses/utils/dimensions.dart';
import 'package:mvvm_getx_weather_app/resourses/widgets/custom_textfields.dart';
import 'package:mvvm_getx_weather_app/view_model/location/location_view_model.dart';

class LocationView extends StatelessWidget {
  LocationView({super.key});

  final LocationViewModel viewModel = Get.put(LocationViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location"),
      ),
      body: Padding(
        padding: EdgeInsets.all(Dimensions.height10),
        child: Column(
          children: [
            SizedBox(height: Dimensions.height10/2),
            CustomTextField(
              hint: 'Search Location...',
              prefixIcon: Icons.location_on,
              onChanged: (value) {
                viewModel.onSearchLocation(value);
              },
            ),
            Expanded(
              child: Obx(
                () => viewModel.filteredLocationList.isNotEmpty
                    ? ListView.separated(
                        padding: EdgeInsets.only(top: Dimensions.height20),
                        itemBuilder: (context, index) {
                          return ListViewItem(index);
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: Dimensions.height10/2);
                        },
                        itemCount: viewModel.filteredLocationList.length,
                      )
                    : const Center(
                        child: Text("No Location Found!"),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ListViewItem(int index) {
    return ListTile(
      tileColor: Colors.white.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.radius15/2),
      ),
      onTap: () {
        viewModel.onLocationSelection(index);
      },
      leading: Icon(Icons.location_on, color: Colors.white, size: Dimensions.height20),
      title: Text(
        viewModel.filteredLocationList[index],
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
