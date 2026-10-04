import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  // Variabel yang diperlukan
  final String myHint;
  final TextEditingController txtController;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: txtController,

        // Hanya untuk input angka
        keyboardType: const TextInputType.numberWithOptions(
          decimal: true,
        ),

        // Membatasi input hanya angka dan titik
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp(r'^\d*\.?\d*'),
          ),
        ],

        decoration: InputDecoration(
          hintText: myHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}