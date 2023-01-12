import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';

class FormOrderView extends StatelessWidget {
  const FormOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormOrderController>(
      init: FormOrderController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("FormOrder"),
            actions: [
              IconButton(
                onPressed: () {
                  Get.offAll(const LoginView());
                },
                icon: const Icon(
                  Icons.logout,
                  size: 24.0,
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.save),
            onPressed: () {
              //
            },
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          ExImagePicker(
                            id: "photo",
                            label: "Photo",
                            // value: "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                          ExTextField(
                            id: "name",
                            label: "name",
                            keyboardType: TextInputType.text,
                            value: null,
                          ),
                          ExTextField(
                            id: "price",
                            label: "Price",
                            keyboardType: TextInputType.number,
                            value: null,
                          ),
                          ExTextArea(
                            id: "deskripsi",
                            label: "Decription",
                            value: null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
