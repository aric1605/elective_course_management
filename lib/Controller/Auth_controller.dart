import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  void signUp(String email, String password, String rollNo) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty && rollNo.isNotEmpty) {
        UserCredential credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
      }
    } catch (e) {
      Get.snackbar("Error Occured :", e.toString());
    }
  }
}
