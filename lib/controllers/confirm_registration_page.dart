import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalkulator/controllers/confrim_registration_controller.dart';


class ConfirmRegistrationPage extends GetView<ConfirmRegistrationController> {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Inisialisasi controller
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: const Text("Konfirmasi Registrasi")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Data Pendaftaran Anda:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Card Nama Lengkap (Kuning)
            Card(
              color: Colors.yellow[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Nama Lengkap:\n${controller.namaLengkap}", 
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 10),

            // Card Email (Merah)
            Card(
              color: Colors.red[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Email:\n${controller.email}", 
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 10),

            // Card No WhatsApp (Hijau)
            Card(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("No WhatsApp:\n${controller.noWa}", 
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 10),

            // Card Jenis Kelamin (Biru jika Laki-laki, Pink jika Perempuan)
            Card(
              color: controller.jenisKelamin == "Laki-laki" 
                  ? Colors.blue[100] 
                  : Colors.pink[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Jenis Kelamin:\n${controller.jenisKelamin}", 
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(height: 30),

            // Tombol Kembali
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text("Kembali / Edit"),
            ),
          ],
        ),
      ),
    );
  }
}