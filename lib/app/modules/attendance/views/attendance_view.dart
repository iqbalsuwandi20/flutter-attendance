import 'package:flutter/material.dart'; // Paket untuk widget dan elemen UI Flutter.
import 'package:get/get.dart'; // Paket GetX untuk manajemen status.

import '../controllers/attendance_controller.dart'; // Mengimpor widget tombol kehadiran.
import 'record_attendance_button.dart'; // Mengimpor controller absensi.

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'), // Judul di AppBar.
        centerTitle: true, // Menyusun judul di tengah.
      ),
      body: const Center(
        // Menggunakan widget RecordAttendanceButton untuk tombol kehadiran.
        child: RecordAttendanceButton(),
      ),
    );
  }
}
