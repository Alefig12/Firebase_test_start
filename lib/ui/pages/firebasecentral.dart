import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetest/ui/pages/homepage.dart';
import 'package:firebasetest/ui/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirebaseCentral extends StatelessWidget {
  const FirebaseCentral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const LoginPage();
          }
        });
  }
}
