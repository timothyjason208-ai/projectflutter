import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kalkulator/controllers/login_controller.dart';
import 'package:get/get.dart';
class LoginPages extends StatelessWidget {
  LoginPages({super.key});

  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login api")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUsername,
              decoration: InputDecoration(label: Text("input username")),
            ),
            TextField(
              controller: controller.txtPassword,
              decoration: InputDecoration(label: Text("input password")),
            ),
            Obx(
              () => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : OutlinedButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text("login"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
