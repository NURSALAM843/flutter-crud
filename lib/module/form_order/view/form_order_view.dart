import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';

class FormOrderView extends StatelessWidget {
  final Map? item;
  const FormOrderView({Key? key, this.item}) : super(key: key);

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
                onPressed: () => controller.doLogout(),
                icon: const Icon(
                  Icons.logout,
                  size: 24.0,
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.save),
            onPressed: () => controller.doSave(),
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
                        children: [
                          ExImagePicker(
                            id: "photo",
                            label: "Photo",
                            value: item == null ? null : item!["photo"],
                          ),
                          ExTextField(
                            id: "name",
                            label: "name",
                            keyboardType: TextInputType.text,
                            value: item == null ? null : item!["name"],
                          ),
                          ExTextField(
                            id: "price",
                            label: "Price",
                            keyboardType: TextInputType.number,
                            value: item == null ? null : item!["price"],
                          ),
                          ExTextArea(
                            id: "deskripsi",
                            label: "Decription",
                            value: item == null ? null : item!["deskripsi"],
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
