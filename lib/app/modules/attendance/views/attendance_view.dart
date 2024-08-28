import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status.

import '../controllers/attendance_controller.dart'; // Mengimpor controller absensi.

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'), // Judul di AppBar.
        centerTitle: true, // Menyusun judul di tengah.
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Mendapatkan lokasi saat ini.
            final currentLocation =
                await controller.locationController.getCurrentLocation();

            if (currentLocation != null) {
              // Memeriksa kehadiran berdasarkan lokasi saat ini.
              await controller.checkAttendance(currentLocation);

              if (controller.isWithinRange.value) {
                // Menampilkan snackbar jika kehadiran berhasil dicatat.
                Get.snackbar('Success', 'Attendance recorded successfully');
              } else {
                // Menampilkan snackbar jika lokasi tidak dalam jangkauan.
                Get.snackbar('Failed', 'You are not within the required range');
              }
            } else {
              // Menampilkan snackbar jika gagal mendapatkan lokasi saat ini.
              Get.snackbar('Error', 'Failed to get current location');
            }
          },
          child: const Text('Record Attendance'), // Teks tombol.
        ),
      ),
    );
  }
}
