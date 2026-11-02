import 'package:get/get.dart';
import 'package:kalkulator/controllers/confirm_registration_page.dart';
import 'package:kalkulator/pages/detail_makanan_page.dart';
import 'package:kalkulator/pages/list_makanan_page.dart';
import 'package:kalkulator/pages/registration_page.dart';


class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detailMakanan = "/detail-makanan";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detailMakanan, page: () => DetailMakananPage()),
  ];
}