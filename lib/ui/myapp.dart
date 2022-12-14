import 'package:firebasetest/ui/pages/firebasecentral.dart';
import 'package:firebasetest/ui/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirebaseCentral(),
    );
  }
}
