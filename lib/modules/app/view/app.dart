import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imossadmin/shared/style/app_colors.dart';

import '../../../shared/routes/app_routes.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 5000), () {
      Get.offAllNamed(AppRoutes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary1,
        ),
      ),
    );
  }
}
