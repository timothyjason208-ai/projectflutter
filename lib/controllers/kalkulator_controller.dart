import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs; // untuk update hasil ke UI

  // Method Tambah
  void tambah(double angka1, double angka2) {
    double hasiltambah = angka1 + angka2;
    hasilHitung.value = hasiltambah;

    Get.snackbar(
      "Hasil Tambah",
      "Hasilnya = $hasiltambah",
    );
  }

  // Method Kurang
  void kurang(double angka1, double angka2) {
    double hasilkurang = angka1 - angka2;
    hasilHitung.value = hasilkurang;

    Get.snackbar(
      "Hasil Kurang",
      "Hasilnya = $hasilkurang",
    );
  }

  // Method Kali
  void kali(double angka1, double angka2) {
    double hasilkali = angka1 * angka2;
    hasilHitung.value = hasilkali;

    Get.snackbar(
      "Hasil Kali",
      "Hasilnya = $hasilkali",
    );
  }

  // Method Bagi
  void bagi(double angka1, double angka2) {
    // Cek angka 2 tidak boleh 0
    if (angka2 == 0) {
      Get.snackbar(
        "Warning",
        "Angka 2 tidak boleh 0 untuk pembagian",
      );
      return;
    }

    double hasilbagi = angka1 / angka2;
    hasilHitung.value = hasilbagi;

    Get.snackbar(
      "Hasil Bagi",
      "Hasilnya = $hasilbagi",
    );
  }
}