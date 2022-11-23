import 'package:firebasetest/ui/controllers/authcontroller.dart';
import 'package:firebasetest/ui/controllers/usercontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebasetest/ui/pages/loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AuthenticationController authenticationController = Get.find();
    UserController userController = Get.find();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userController.test();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                // Implementar el logout con firebase
                authenticationController.logout();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(5),
            elevation: 10,
            child: ListTile(
              title:
                  Obx(() => Text("Email: ${userController.loggedUserEmail}")),
              subtitle: Obx(() => Text("ID: ${userController.loggedUserId}")),
            ),
          )
        ],
      )),
    );
  }
}
