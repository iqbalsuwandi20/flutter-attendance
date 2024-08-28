import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Location'),
        centerTitle: true,
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {},
        onTap: (LatLng position) async {
          controller.setLocation(position);
        },
        initialCameraPosition: const CameraPosition(
          target: LatLng(-6.200000, 106.816666),
          zoom: 14,
        ),
      ),
    );
  }
}
