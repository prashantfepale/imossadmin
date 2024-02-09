import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imossadmin/shared/routes/app_routes.dart';

class LoginController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  RxString errorString = "".obs;

  login() {
    String uname = username.text;
    String passwd = password.text;
    if (uname == "" || passwd == "") {
      errorString.value = "Please enter username/password!";
      return;
    } else if (uname != "admin" || passwd != "admin") {
      errorString.value = "Please enter username/password!";
    } else {
      Get.offAndToNamed(AppRoutes.dashboard);
    }
  }
}
