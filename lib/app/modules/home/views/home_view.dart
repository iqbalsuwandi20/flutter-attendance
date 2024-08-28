import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status.

import '../controllers/home_controller.dart'; // Mengimpor widget tombol navigasi.
import 'navigation_button.dart'; // Mengimpor controller home.

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
            // Menggunakan widget NavigationButton untuk tombol "Mark Location".
            NavigationButton(
              label: 'Mark Location',
              onPressed: controller
                  .goToLocationView, // Aksi untuk navigasi ke tampilan lokasi.
            ),
            // Menggunakan widget NavigationButton untuk tombol "Record Attendance".
            NavigationButton(
              label: 'Record Attendance',
              onPressed: controller
                  .goToAttendanceView, // Aksi untuk navigasi ke tampilan kehadiran.
            ),
          ],
        ),
      ),
    );
  }
}
