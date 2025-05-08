import 'package:flutter/material.dart';
import 'package:profile_statefull_app/Pages/splash_screen.dart';
import 'package:profile_statefull_app/pages/login_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

// Library baru yang ditambahkan : get dan get_storage
void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // menambahkan Get pada MaterialApp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
