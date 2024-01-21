import 'package:adidas_mobile_app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class SignInStateProvider extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  AuthController authController = AuthController();

  Future<void> startSignIn() async {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      authController.signIntUser(
        email: _emailController.text,
        password: _passwordController.text,
      );
    } else {
      Logger().e("Please Insert Email & Password");
    }
  }
}
