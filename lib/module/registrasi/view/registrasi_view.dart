import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';

class RegistrasiView extends StatelessWidget {
  const RegistrasiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrasiController>(
      init: RegistrasiController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.lightGreenAccent,
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/icon/icon.png",
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const ExTextField(
                          id: "email",
                          label: "Email",
                          value: null,
                        ),
                        const ExTextField(
                          id: "password",
                          label: "Password",
                          textFieldType: TextFieldType.password,
                          value: null,
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.save),
                          label: const Text("Simpan"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () => controller.doRegister(),
                        ),
                      ],
                    ),
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
