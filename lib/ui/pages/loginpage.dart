import 'package:firebasetest/ui/controllers/authcontroller.dart';
import 'package:firebasetest/ui/pages/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebasetest/ui/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            padding: EdgeInsets.all(10),
            height: 250,
            color: Colors.grey,
            child: Column(
              children: [
                Text("E-Mail"),
                TextField(
                  controller: emailController,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                Text("Contraseña"),
                TextField(
                  controller: passwordController,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Implementar el login con firebase
                    authenticationController.login(
                        emailController.text, passwordController.text);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: const Text(
                    "Iniciar Sesion",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => SignupPage());
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
