import 'package:flutter/material.dart';
import 'package:imossadmin/shared/widget/bottom_navigation.dart';

class AppNotifications extends StatelessWidget {
  const AppNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: const Center(
        child: Text("Notification!!"),
      ),
      bottomNavigationBar: customBottomNavigation(),
    );
  }
}
