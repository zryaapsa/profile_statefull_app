import 'package:flutter/material.dart';
import '../pages/profile_screen.dart';

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
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
      },
      child: const Text('Login', style: TextStyle(fontSize: 16)),
    );
  }
}
