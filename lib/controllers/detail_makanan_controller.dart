import 'package:get/get.dart';
import 'package:kalkulator/models/makanan_model.dart';

class DetailMakananController extends GetxController {
  late MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null && Get.arguments is MakananModel) {
      makanan = Get.arguments;
    }
  }
}