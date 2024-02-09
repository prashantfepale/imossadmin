import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/routes/app_routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _AppState();
}

class _AppState extends State<Login> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1000), () {
      Get.toNamed(AppRoutes.LOGIN);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Login..."),
    );
  }
}
