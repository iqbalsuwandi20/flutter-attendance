import 'package:get/get.dart';

import '../controllers/attendance_controller.dart';
import '../../location/controllers/location_controller.dart';

class AttendanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationController>(() => LocationController());
    Get.lazyPut<AttendanceController>(
      () => AttendanceController(
          locationController: Get.find<LocationController>()),
    );
  }
}
