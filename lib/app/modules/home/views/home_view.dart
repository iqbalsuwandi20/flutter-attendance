import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status.

import '../controllers/home_controller.dart'; // Mengimpor controller home.

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'), // Judul di AppBar.
        centerTitle: true, // Menyusun judul di tengah.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // Menyusun elemen secara vertikal di tengah.
          children: [
            ElevatedButton(
              onPressed: controller
                  .goToLocationView, // Aksi untuk navigasi ke tampilan lokasi.
              child: const Text('Mark Location'), // Teks tombol.
            ),
            ElevatedButton(
              onPressed: controller
                  .goToAttendanceView, // Aksi untuk navigasi ke tampilan kehadiran.
              child: const Text('Record Attendance'), // Teks tombol.
            ),
          ],
        ),
      ),
    );
  }
}
