import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widget/bottom_navigation.dart';
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
      bottomNavigationBar: customBottomNavigation(),
    );
  }
}
