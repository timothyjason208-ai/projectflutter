import 'package:get/get.dart';

class ProfileController extends GetxController {
  final RxString name = "kholil".obs;
  final RxString email = "".obs;
  final RxString memberStatus = "Gold Member".obs;
  final RxInt orders = 14.obs;
  final RxInt vouchers = 5.obs;
  final RxInt points = 2450.obs;
}