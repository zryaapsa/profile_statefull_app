import 'package:flutter/material.dart';
import '../Components/login_button.dart';
import '../Components/password_TextField.dart';
import '../Components/username_TextField.dart';
import 'package:get_storage/get_storage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final TextEditingController usernameController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            UsernameTextField(),
            SizedBox(height: 20),
            PasswordTextField(),
            SizedBox(height: 20),
            login_button(),
          ],
        ),
      ),
    );
  }
}
