import 'package:flutter/material.dart';

class UsernameTextField extends StatelessWidget {
  
  const UsernameTextField({
    super.key,
    this.labelText = 'Username',
    this.radius = 12.0,
  });

  final String? labelText;
  final double? radius;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color(0xFFDFD0B8)),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF393E46),
        labelText: labelText,
        labelStyle: const TextStyle(color: Color(0xFFDFD0B8)),
        hintText: 'Masukkan username Anda',
        hintStyle: const TextStyle(color: Color(0xFFDFD0B8)),
        prefixIcon: const Icon(Icons.person, color: Color(0xFFDFD0B8)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius!),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
