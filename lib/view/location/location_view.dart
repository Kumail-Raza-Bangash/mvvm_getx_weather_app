// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 5),
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
                        padding: const EdgeInsets.only(top: 20),
                        itemBuilder: (context, index) {
                          return ListViewItem(index);
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 5);
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
        borderRadius: BorderRadius.circular(8.0),
      ),
      onTap: () {
        viewModel.onLocationSelection(index);
      },
      leading: const Icon(Icons.location_on, color: Colors.white, size: 22),
      title: Text(
        viewModel.filteredLocationList[index],
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
