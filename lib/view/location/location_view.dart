import 'package:flutter/material.dart';
import 'package:mvvm_getx_weather_app/resourses/widgets/custom_textfields.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
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
              onChanged: (value) {},
            ),
            Expanded(
                child: ListView.separated(
              padding: const EdgeInsets.only(top: 20),
              itemBuilder: (context, index) {
                return ListViewItem(index);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 5);
              },
              itemCount: 5,
            ))
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
      onTap: (){},
      leading: const Icon(Icons.location_on, color: Colors.white, size: 22),
      title: const Text("City", style: TextStyle(color: Colors.white),),
    );
  }
}
