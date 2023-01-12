import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:flutter_hyper_ui/setup.dart';
import 'package:get/get.dart';
import 'package:flutter_hyper_ui/module/login/view/login_view.dart';

import 'module/login/view/login_view.dart';

void main() async {
  await initialize();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: const LoginView(),
    ),
  );
}
