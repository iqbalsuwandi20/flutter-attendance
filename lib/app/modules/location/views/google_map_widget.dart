import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Paket untuk integrasi Google Maps.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status.

import '../controllers/location_controller.dart'; // Mengimpor controller lokasi.

/// Widget untuk menampilkan Google Maps.
class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final locationController = Get.find<LocationController>();

    return GoogleMap(
      onMapCreated: (GoogleMapController controller) {
        // Fungsi ini dipanggil ketika peta Google Maps telah dibuat.
        // Saat ini, fungsi ini tidak melakukan tindakan apa pun.
      },
      onTap: (LatLng position) async {
        // Fungsi ini dipanggil ketika peta diketuk.
        // Menetapkan lokasi yang dipilih menggunakan controller.
        locationController.setLocation(position);
      },
      initialCameraPosition: const CameraPosition(
        target: LatLng(-6.200000, 106.816666), // Posisi awal kamera pada peta.
        zoom: 14, // Zoom level awal pada peta.
      ),
    );
  }
}
