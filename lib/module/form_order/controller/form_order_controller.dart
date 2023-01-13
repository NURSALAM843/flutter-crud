import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';
import '../view/form_order_view.dart';

class FormOrderController extends GetxController {
  FormOrderView? view;

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

  doSave() async {
    var photo = Input.get("photo");
    var name = Input.get("name");
    var price = Input.get("price");
    var deskripsi = Input.get("deskripsi");
    if (view!.item == null) {
      await FirebaseFirestore.instance.collection("order").add({
        "photo": photo,
        "name": name,
        "price": price,
        "deskripsi": deskripsi,
      });
    } else {
      await FirebaseFirestore.instance
          .collection("order")
          .doc(view!.item!["id"])
          .update({
        "photo": photo,
        "name": name,
        "price": price,
        "deskripsi": deskripsi,
      });
    }
    Get.back();
  }
}
