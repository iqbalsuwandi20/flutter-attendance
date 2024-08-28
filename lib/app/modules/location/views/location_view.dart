import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status dan navigasi.

import '../controllers/location_controller.dart'; // Mengimpor controller lokasi.
import 'google_map_widget.dart'; // Mengimpor widget Google Maps.

class LocationView extends GetView<LocationController> {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Location'), // Judul di AppBar.
        centerTitle: true, // Menyusun judul di tengah.
      ),
      body:
          const GoogleMapWidget(), // Menggunakan widget GoogleMapWidget untuk peta.
    );
  }
}
