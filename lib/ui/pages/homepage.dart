import 'package:firebasetest/ui/controllers/authcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebasetest/ui/pages/loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthenticationController authenticationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Hacer algo
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                authenticationController.logout();
                // Implementar el logout con firebase
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: const [
          Card(
            margin: EdgeInsets.all(5),
            elevation: 10,
            child: ListTile(
              title: Text("Test"),
              subtitle: Text("Flutter"),
            ),
          )
        ],
      )),
    );
  }
}
