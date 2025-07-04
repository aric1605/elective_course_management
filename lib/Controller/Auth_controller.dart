import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elective_course_management/Modals/user.dart';
import 'package:elective_course_management/Pages/MainActivity.dart';
import 'package:elective_course_management/Pages/NavBar%20Pages/HomePage.dart';
import 'package:elective_course_management/Pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  late Rx<User?> _user;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user = Rx<User?>(FirebaseAuth.instance.currentUser);
    _user.bindStream(FirebaseAuth.instance.authStateChanges());

    ever(_user, _setInitialView);
  }

  _setInitialView(User? user) {
    if (user == null) {
      Get.offAll(() => Login());
    } else {
      Get.offAll(() => mainActivity());
    }
  }

  void signUp(String name, String email, String password, String rollNo) async {
    try {
      if (name.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          rollNo.isNotEmpty) {
        UserCredential credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        myUser user = myUser(
          name: name,
          email: email,
          uid: credential.user!.uid,
          rollNo: rollNo,
        );

        await FirebaseFirestore.instance
            .collection('users')
            .doc(credential.user!.uid)
            .set(user.toJson());
      } else {
        Get.snackbar("Error Creating Account", "Error");
      }
    } catch (e) {
      Get.snackbar("Error Occured :", e.toString());
    }
  }

  void login(String email, String password) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      } else {
        Get.snackbar("Error Creating Account", "Error");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
