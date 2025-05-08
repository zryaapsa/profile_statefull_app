import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:profile_statefull_app/pages/login_screen.dart';
import 'package:profile_statefull_app/pages/profile_screen.dart';

import 'login_screen2.dart';

// Fungsi dari splash screen adalah mengecek data server.

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      final box = GetStorage();
      String? statusUsername = box.read("Username");

      if (statusUsername == null) {
        Get.off(() => LoginScreen2());
      } else {
        Get.off(() => ProfileScreen());
      }

      // Get.to(() => LoginScreen2());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Logo Aplikasi Boy"), CircularProgressIndicator()],
        ),
      ),
    );
  }
}
