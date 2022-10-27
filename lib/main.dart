import 'package:bank_app/pages/homepage.dart';
import 'package:bank_app/pages/paymentpage.dart';
import 'package:bank_app/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {

  const BankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
