import 'package:kalkulator/components/custom_textfield.dart';
import 'package:kalkulator/components/custom_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page")),
      body: Column(
        children: [
          Text(
            "Welcome to application " + statusLogin,
            style: TextStyle(
              fontSize: 30,
              color: const Color.fromARGB(255, 46, 9, 182),
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input username",
              txtController: txtUsername,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password",
              txtController: txtPassword,
            ),
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                // fungsinya untuk reload / refresh satu page full
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if (username == "admin" && password == "admin") {
                  statusLogin = "admin";
                  print("sukses login");
                } else {
                  statusLogin = "failed";
                  print("gagal login");
                }
              });
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                color: const Color.fromARGB(255, 30, 175, 44),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}