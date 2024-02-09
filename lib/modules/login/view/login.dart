import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imossadmin/modules/login/controller/login_controller.dart';
import 'package:imossadmin/shared/style/app_colors.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppColors.body,
        body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: AppColors.boxShadowColor,
                blurRadius: 3.0,
                spreadRadius: 3.0,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primary1,
                ),
              ),
              const SizedBox(height: 15),
              Text(controller.errorString.value),
              const SizedBox(height: 15),
              usernamePasswordInput("USERNAME"),
              const SizedBox(height: 15),
              usernamePasswordInput("PASSWORD"),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  usernamePasswordInput(type) {
    return TextField(
      controller:
          (type == "USERNAME") ? controller.username : controller.password,
      obscureText: false,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        labelText: (type == "USERNAME") ? 'Username' : "Password",
        labelStyle: const TextStyle(color: AppColors.primary1),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
