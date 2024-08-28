import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: controller.goToLocationView,
              child: const Text('Mark Location'),
            ),
            ElevatedButton(
              onPressed: controller.goToAttendanceView,
              child: const Text('Record Attendance'),
            ),
          ],
        ),
      ),
    );
  }
}
