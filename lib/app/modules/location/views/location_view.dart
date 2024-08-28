import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status dan navigasi.
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Paket untuk integrasi Google Maps.

import '../controllers/location_controller.dart'; // Mengimpor controller lokasi.

class LocationView extends GetView<LocationController> {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Location'), // Judul di AppBar.
        centerTitle: true, // Menyusun judul di tengah.
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          // Fungsi ini dipanggil ketika peta Google Maps telah dibuat.
          // Saat ini, fungsi ini tidak melakukan tindakan apa pun.
        },
        onTap: (LatLng position) async {
          // Fungsi ini dipanggil ketika peta diketuk.
          // Menetapkan lokasi yang dipilih menggunakan controller.
          controller.setLocation(position);
        },
        initialCameraPosition: const CameraPosition(
          target:
              LatLng(-6.200000, 106.816666), // Posisi awal kamera pada peta.
          zoom: 14, // Zoom level awal pada peta.
        ),
      ),
    );
  }
}
