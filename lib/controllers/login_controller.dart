import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  void Login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar('error', 'username dan password harus terisi');
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse('https://api.example.com/login');

        final response = await http.post(
          url,
          body: {
            'username': txtUsername.text.toString(),
            'password': txtPassword.text.toString(),
          },
        );
        isLoading.value = false;
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar('Berhasil', data['message']);
          } else {
            Get.snackbar('gagal', data['message']);
          }
        } else {
          Get.snackbar('gagal', "cek koneksi internet anda");
        }
      } catch (e) {
        Get.snackbar("gagal", e.toString());
        print("error nya " + e.toString());
      }
    }
  }
}
