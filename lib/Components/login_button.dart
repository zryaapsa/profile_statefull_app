import 'package:flutter/material.dart';
import '../pages/profile_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class login_button extends StatelessWidget {
  const login_button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF393E46), // warna tombol
        foregroundColor: const Color(0xFFDFD0B8), // warna teks
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) => const ProfileScreen()),
        // );
        // final box = GetStorage();
        // box.write('username', usernameController.text)
        Get.to(() => ProfileScreen());
        // Get.snackbar(
        //   "Login",
        //   "Berhasil Login",
        //   snackPosition: SnackPosition.BOTTOM,
        // );
      },
      child: const Text('Login', style: TextStyle(fontSize: 16)),
    );
  }
}
