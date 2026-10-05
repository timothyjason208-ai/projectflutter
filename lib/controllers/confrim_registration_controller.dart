import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  String namaLengkap = '';
  String email = '';
  String noWa = '';
  String jenisKelamin = '';

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    
    if (arguments != null && arguments is Map) {
      namaLengkap = arguments['nama_lengkap']?.toString() ?? '';
      email = arguments['email']?.toString() ?? '';
      noWa = arguments['no_wa']?.toString() ?? '';
      jenisKelamin = arguments['jenis_kelamin']?.toString() ?? '';
    }
  }
}