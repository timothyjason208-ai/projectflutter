import 'package:get/get.dart';
import 'package:kalkulator/controllers/confirm_registration_page.dart';
import 'package:kalkulator/pages/registration_page.dart';
// Tambahkan import ini di atas routes.dart
class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  // dll

  // kita masukkan ke dalam myPages array
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    // dll
  ];
}