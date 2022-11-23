import 'package:firebasetest/ui/controllers/authcontroller.dart';
import 'package:firebasetest/ui/pages/firebasecentral.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebasetest/ui/pages/loginpage.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthenticationController authenticationController = Get.find();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            color: Colors.grey,
            child: Column(
              children: [
                const Text("E-Mail"),
                TextField(
                  controller: emailController,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const Text("Contraseña"),
                TextField(
                  controller: passwordController,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Implementar el signup con firebase

                    authenticationController.signup(
                        emailController.text, passwordController.text);
                    Get.back();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: const Text(
                    "Registrarse",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
