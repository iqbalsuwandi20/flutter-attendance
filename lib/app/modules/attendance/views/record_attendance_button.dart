import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status.

import '../controllers/attendance_controller.dart'; // Mengimpor controller absensi.

/// Tombol untuk mencatat kehadiran.
class RecordAttendanceButton extends StatelessWidget {
  const RecordAttendanceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Mendapatkan lokasi saat ini.
        final currentLocation = await Get.find<AttendanceController>()
            .locationController
            .getCurrentLocation();

        if (currentLocation != null) {
          // Memeriksa kehadiran berdasarkan lokasi saat ini.
          await Get.find<AttendanceController>()
              .checkAttendance(currentLocation);

          if (Get.find<AttendanceController>().isWithinRange.value) {
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
    );
  }
}
