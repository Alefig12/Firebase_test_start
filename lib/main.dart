import 'package:firebasetest/ui/controllers/authcontroller.dart';
import 'package:firebasetest/ui/controllers/usercontroller.dart';
import 'package:firebasetest/ui/myapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(UserController());
  Get.put(AuthenticationController());

  runApp(const MyApp());
}
