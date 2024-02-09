import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    Future.delayed(const Duration(milliseconds: 10000), () {
      Get.toNamed(AppRoutes.LOGIN);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Loading..."),
    );
  }
}
