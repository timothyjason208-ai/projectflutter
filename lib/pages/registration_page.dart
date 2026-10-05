import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalkulator/components/my_textfield.dart';

import '../routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController txtNamaLengkap = TextEditingController();
    final TextEditingController txtEmail = TextEditingController();
    final TextEditingController txtNoWa = TextEditingController();
    
    // Variabel RxnString untuk dropdown jenis kelamin
    final RxnString selectedJenisKelamin = RxnString();

    return Scaffold(
      appBar: AppBar(title: const Text("Registration")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. Nama Lengkap (Background Kuning)
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow[100], // Kuning lembut
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyTextfield(
                myHint: "Masukkan nama lengkap", 
                txtController: txtNamaLengkap, 
                radius: 10,
              ),
            ),
            const SizedBox(height: 12),

            // 2. Email (Background Merah)
            Container(
              decoration: BoxDecoration(
                color: Colors.red[100], // Merah lembut
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyTextfield(
                myHint: "Masukkan email", 
                txtController: txtEmail, 
                radius: 10,
              ),
            ),
            const SizedBox(height: 12),

            // 3. Nomor WhatsApp (Background Hijau)
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100], // Hijau lembut
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyTextfield(
                myHint: "Masukkan nomor WhatsApp", 
                txtController: txtNoWa, 
                radius: 10,
              ),
            ),
            const SizedBox(height: 12),

            // 4. Jenis Kelamin (Dropdown dengan warna dinamis: Biru untuk Laki-laki, Pink untuk Perempuan)
            Obx(() => Container(
              decoration: BoxDecoration(
                // Berubah warna otomatis sesuai pilihan jenis kelamin
                color: selectedJenisKelamin.value == "Laki-laki" 
                    ? Colors.blue[100] 
                    : selectedJenisKelamin.value == "Perempuan" 
                        ? Colors.pink[100] 
                        : Colors.grey[200], // Abu-abu jika belum dipilih
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonFormField<String>(
                value: selectedJenisKelamin.value,
                hint: const Text("Jenis Kelamin"),
                dropdownColor: selectedJenisKelamin.value == "Laki-laki" 
                    ? Colors.blue[50] 
                    : Colors.pink[50], // Warna menu dropdown saat dibuka
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                ),
                items: ["Laki-laki", "Perempuan"]
                    .map((String gender) => DropdownMenuItem<String>(
                          value: gender,
                          child: Text(gender),
                        ))
                    .toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    selectedJenisKelamin.value = newValue;
                  }
                },
              ),
            )),
            const SizedBox(height: 24),

            // Tombol Kirim
            ElevatedButton(
              onPressed: () {
                // Validasi: Cek apakah jenis kelamin sudah dipilih
                if (selectedJenisKelamin.value == null) {
                  Get.snackbar(
                    "Peringatan", 
                    "Silakan pilih jenis kelamin terlebih dahulu",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                  return; 
                }

                // Pindah halaman dan kirim data
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    'nama_lengkap': txtNamaLengkap.text.toString(),
                    'email': txtEmail.text.toString(),
                    'no_wa': txtNoWa.text.toString(),
                    'jenis_kelamin': selectedJenisKelamin.value!,
                  },
                );
              },
              child: const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}