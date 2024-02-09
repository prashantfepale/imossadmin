import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/routes/app_routes.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: const Center(
        child: Text("Dashboard"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        onTap: (value) {
          if(value == 1) {
            Get.toNamed(AppRoutes.notifications);
          }
          if(value == 2) {
            Get.toNamed(AppRoutes.notifications);
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
