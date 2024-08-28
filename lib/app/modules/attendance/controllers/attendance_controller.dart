import 'package:geolocator/geolocator.dart'; // Paket untuk layanan geolokasi.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status.
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Paket untuk integrasi Google Maps.

import '../../location/controllers/location_controller.dart'; // Mengimpor controller lokasi untuk pengelolaan lokasi.

class AttendanceController extends GetxController {
  final LocationController
      locationController; // Controller untuk pengelolaan lokasi.
  var isWithinRange = false
      .obs; // Variabel observable untuk melacak apakah lokasi saat ini dalam jangkauan.

  AttendanceController({required this.locationController});

  /// Memeriksa apakah lokasi saat ini berada dalam jangkauan lokasi pin yang ditentukan.
  ///
  /// Parameter:
  /// - [currentLocation]: Koordinat lokasi saat ini (LatLng).
  Future<void> checkAttendance(LatLng currentLocation) async {
    final pinLocation = locationController
        .selectedLocation.value; // Mendapatkan lokasi pin yang dipilih.
    if (pinLocation != null) {
      // Menghitung jarak antara lokasi pin dan lokasi saat ini.
      double distance = Geolocator.distanceBetween(
        pinLocation.latitude,
        pinLocation.longitude,
        currentLocation.latitude,
        currentLocation.longitude,
      );

      // Menentukan apakah lokasi saat ini berada dalam 50 meter dari lokasi pin.
      isWithinRange.value = distance <= 50;
    }
  }
}
