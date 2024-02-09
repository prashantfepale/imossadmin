import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

BottomNavigationBar customBottomNavigation() {
  return BottomNavigationBar(
    elevation: 2,
    onTap: (value) {
      if (value == 1) {
        Get.toNamed(AppRoutes.notifications);
      }
      if (value == 2) {
        Get.toNamed(AppRoutes.notifications);
      }
      if (value == 0) {
        Get.offAllNamed(AppRoutes.dashboard);
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
  );
}
