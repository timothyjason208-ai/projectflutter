import 'package:kalkulator/components/custom_textfield.dart';
import 'package:kalkulator/controllers/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  // Mengecek apakah input kosong
  bool cekInput() {
    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
      Get.snackbar(
        "Warning",
        "Angka 1 dan Angka 2 harus diisi",
      );
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Kalkulator"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input angka 1
            CustomTextfield(
              myHint: "Input angka 1",
              txtController: txtangka1,
            ),

            const SizedBox(height: 10),

            // Input angka 2
            CustomTextfield(
              myHint: "Input angka 2",
              txtController: txtangka2,
            ),

            const SizedBox(height: 16),

            // Tombol Operasi Berwarna Menyamping (Wrap)
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                // Tombol Tambah (Biru)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (!cekInput()) return;

                    controller.tambah(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  },
                  child: const Text("Tambah"),
                ),

                // Tombol Kurang (Oranye)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (!cekInput()) return;

                    controller.kurang(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  },
                  child: const Text("Kurang"),
                ),

                // Tombol Kali (Ungu)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (!cekInput()) return;

                    controller.kali(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  },
                  child: const Text("Kali"),
                ),

                // Tombol Bagi (Hijau)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (!cekInput()) return;

                    controller.bagi(
                      double.parse(txtangka1.text),
                      double.parse(txtangka2.text),
                    );
                  },
                  child: const Text("Bagi"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Menampilkan hasil
            Obx(
              () => Text(
                "Hasil: ${controller.hasilHitung.value}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}