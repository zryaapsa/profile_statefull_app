import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.labelText = 'Password',
    this.radius = 12.0,
  });

  final String? labelText;
  final double? radius;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool textHilang = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: textHilang,
      style: const TextStyle(color: Color(0xFFDFD0B8)),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF393E46),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Color(0xFFDFD0B8)),
        hintText: 'Masukkan password Anda',
        hintStyle: const TextStyle(color: Color(0xFFDFD0B8)),
        prefixIcon: const Icon(Icons.lock, color: Color(0xFFDFD0B8)),
        suffixIcon: IconButton(
          icon: Icon(
            textHilang ? Icons.visibility_off : Icons.visibility,
            color: const Color(0xFFDFD0B8),
          ),
          onPressed: () {
            setState(() {
              textHilang = !textHilang;
            });
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius!),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
