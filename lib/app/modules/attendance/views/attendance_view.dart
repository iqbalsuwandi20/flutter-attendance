import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/attendance_controller.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final currentLocation =
                await controller.locationController.getCurrentLocation();

            if (currentLocation != null) {
              await controller.checkAttendance(currentLocation);
              if (controller.isWithinRange.value) {
                Get.snackbar('Success', 'Attendance recorded successfully');
              } else {
                Get.snackbar('Failed', 'You are not within the required range');
              }
            } else {
              Get.snackbar('Error', 'Failed to get current location');
            }
          },
          child: const Text('Record Attendance'),
        ),
      ),
    );
  }
}
