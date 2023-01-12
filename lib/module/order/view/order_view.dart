import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';

class OrderView extends StatelessWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
      init: OrderController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Order"),
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
            child: const Icon(Icons.add),
            onPressed: () {
              Get.to(const FormOrderView());
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/QrTHd59/woman.jpg",
                      ),
                    ),
                    title: Text("Jessica Doe"),
                    subtitle: Text("Programmer"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
