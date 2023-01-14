import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../core.dart';
import '../view/login_view.dart';

class LoginController extends GetxController {
  LoginView? view;

  doLogin() async {
    try {
      var email = Input.get("email");
      var password = Input.get("password");
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAll(const OrderView());
    } catch (e) {
      print(e);
    }
  }
}
