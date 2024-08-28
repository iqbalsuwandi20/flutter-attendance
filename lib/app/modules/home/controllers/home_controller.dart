import 'package:get/get.dart'; // Paket GetX untuk manajemen status dan navigasi.

import '../../attendance/views/attendance_view.dart'; // Mengimpor tampilan absensi.
import '../../location/views/location_view.dart'; // Mengimpor tampilan lokasi.

class HomeController extends GetxController {
  /// Menavigasi ke tampilan lokasi.
  void goToLocationView() {
    // Menggunakan GetX untuk menavigasi ke tampilan LocationView.
    Get.to(() => const LocationView());
  }

  /// Menavigasi ke tampilan kehadiran.
  void goToAttendanceView() {
    // Menggunakan GetX untuk menavigasi ke tampilan AttendanceView.
    Get.to(() => const AttendanceView());
  }
}
