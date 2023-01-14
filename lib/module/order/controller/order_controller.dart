import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';
import '../view/order_view.dart';

class OrderController extends GetxController {
  OrderView? view;
  String search = "";

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  doLogout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(const LoginView());
  }
}
