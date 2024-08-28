import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationController extends GetxController {
  var selectedLocation = Rxn<LatLng>();

  Future<void> setLocation(LatLng position) async {
    selectedLocation.value = position;
  }

  Future<LatLng?> getCurrentLocation() async {
    // Mengembalikan posisi dari selectedLocation atau null jika belum diset
    return selectedLocation.value;
  }
}
