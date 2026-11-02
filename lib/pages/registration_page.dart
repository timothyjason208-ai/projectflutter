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
    
    final RxnString selectedJenisKelamin = RxnString();

    return Scaffold(
      appBar: AppBar(title: const Text("Registration")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              decoration: BoxDecoration(
                color: Colors.yellow[100], 
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyTextfield(
                myHint: "Masukkan nama lengkap", 
                txtController: txtNamaLengkap, 
                radius: 10,
              ),
            ),
            const SizedBox(height: 12),

            Container(
              decoration: BoxDecoration(
                color: Colors.red[100], 
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyTextfield(
                myHint: "Masukkan email", 
                txtController: txtEmail, 
                radius: 10,
              ),
            ),
            const SizedBox(height: 12),

            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyTextfield(
                myHint: "Masukkan nomor WhatsApp", 
                txtController: txtNoWa, 
                radius: 10,
              ),
            ),
            const SizedBox(height: 12),

            Obx(() => Container(
              decoration: BoxDecoration(
                
                color: selectedJenisKelamin.value == "Laki-laki" 
                     ? Colors.blue[100] 
                    : selectedJenisKelamin.value == "Perempuan" 
                        ? Colors.pink[100] 
                        : Colors.grey[200], 
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonFormField<String>(
                value: selectedJenisKelamin.value,
                hint: const Text("Jenis Kelamin"),
                dropdownColor: selectedJenisKelamin.value == "Laki-laki" 
                    ? Colors.blue[50] 
                    : Colors.pink[50], 
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


            ElevatedButton(
              onPressed: () {

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