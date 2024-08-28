import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../location/controllers/location_controller.dart';

class AttendanceController extends GetxController {
  final LocationController locationController;
  var isWithinRange = false.obs;

  AttendanceController({required this.locationController});

  Future<void> checkAttendance(LatLng currentLocation) async {
    final pinLocation = locationController.selectedLocation.value;
    if (pinLocation != null) {
      double distance = Geolocator.distanceBetween(
        pinLocation.latitude,
        pinLocation.longitude,
        currentLocation.latitude,
        currentLocation.longitude,
      );

      isWithinRange.value = distance <= 50;
    }
  }
}
