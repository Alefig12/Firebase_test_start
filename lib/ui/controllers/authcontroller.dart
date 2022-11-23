import 'package:firebasetest/ui/controllers/usercontroller.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class AuthenticationController extends GetxController {
  UserController userController = Get.find();

  Future<void> login(email, password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Future.error("Usuario no encontado");
      } else if (e.code == 'wrong-password') {
        return Future.error("Wrong password");
      }
    }
  }

  Future<void> registrarse(email, password) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      logout(); //Esto es porque cuando creamos un usuario, enseguida Firebase inicia sesión. Y es un comportamiento que no deseamos.

      userController.createUser(email, user.user!.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Future.error("weak password");
      } else if (e.code == 'email-already-in-use') {
        return Future.error("Email already in use");
      }
    }
  }

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      return Future.error("Error cerrando sesión");
    }
  }
}
