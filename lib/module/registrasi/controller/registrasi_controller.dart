import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';
import '../view/registrasi_view.dart';

class RegistrasiController extends GetxController {
  RegistrasiView? view;

  doRegister() async {
    var email = Input.get("email");
    var password = Input.get("password");
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    Get.offAll(const LoginView());
  }
}
