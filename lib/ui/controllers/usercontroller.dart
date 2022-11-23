import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final databaseRef = FirebaseDatabase.instance.ref();

  Future<void> createUser(email, id) async {
    try {
      await databaseRef
          .child('userList')
          .child(id)
          .set({'email': email, 'test': '123456'});
    } catch (e) {
      return Future.error(e);
    }
  }
}
