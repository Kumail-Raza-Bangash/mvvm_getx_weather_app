import 'package:get/get.dart';

class LocationViewModel extends GetxController {
  List<String> filteredLocationList = <String>[].obs;

  List<String> allLocationList = [
    'Rawalpindi, Pakistan',
    'Islamabad, Pakistan',
    'Lahore, Pakistan',
    'Karachi, Pakistan',
    'Peshawar, Pakistan',
    'Quetta, Pakistan',
    'Multan, Pakistan',
    'Kohat, Pakistan',
    'Sialkot, Pakistan',
    'Gilgit, Pakistan',
    'Kashmor, Pakistan',
    'Jacobabad, Pakistan',
    'Skardu, Pakistan',
    'Parachinar, Pakistan',
    'Mardan, Pakistan',
    'Abbottabad, Pakistan',
    'Murree, Pakistan',
    'Mianwali, Pakistan',
    'Gujrat, Pakistan',
    'Faisalabad, Pakistan',
    'Jhang, Pakistan',
    'Chitral, Pakistan',
  ];

  void onReady() {
    filteredLocationList.addAll(allLocationList);
    super.onReady();
  }

  onSearchLocation(String value) {
    filteredLocationList.clear();
    filteredLocationList.addAll(
      allLocationList.where(
        (element) => element.toLowerCase().contains(value.toLowerCase()),
      ),
    );
  }

  onLocationSelection(int index) {
    Get.back(result: filteredLocationList[index]);
  }
}
