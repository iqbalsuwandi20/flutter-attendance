import 'package:get/get.dart';

import '../../attendance/views/attendance_view.dart';
import '../../location/views/location_view.dart';

class HomeController extends GetxController {
  void goToLocationView() {
    Get.to(() => const LocationView());
  }

  void goToAttendanceView() {
    Get.to(() => const AttendanceView());
  }
}
