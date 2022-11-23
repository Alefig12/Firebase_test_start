import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final _loggedUserId = "".obs;
  final _loggedUserEmail = "".obs;

  get loggedUserId => _loggedUserId;
  get loggedUserEmail => _loggedUserEmail;

  set loggedUserId(value) {
    _loggedUserId.value = value;
  }

  set loggedUsserEmail(value) {
    _loggedUserEmail.value = value;
  }

  final databaseRef = FirebaseDatabase.instance.ref();

  Future<void> createUser(email, uid) async {
    print("Creating user in realTime for $email and $uid");
    try {
      await databaseRef.child('userList').child(uid).set({'email': email});
    } catch (error) {
      print(error);
      return Future.error(error);
    }
  }

  Future<void> test() async {
    try {
      await databaseRef
          .child('userList')
          .child('123')
          .push()
          .set({'email': 'test'});
    } catch (error) {
      print(error);
      return Future.error(error);
    }
  }
}
