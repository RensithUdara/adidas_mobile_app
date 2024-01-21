import 'package:adidas_mobile_app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class SignUpStateProvider extends ChangeNotifier {
  final TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  final TextEditingController _confirmpasswordController =
      TextEditingController();
  TextEditingController get confirmpasswordController =>
      _confirmpasswordController;

  AuthController authController = AuthController();

  Future<void> startCreateUserAccount() async {
    if (_nameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _confirmpasswordController.text.isNotEmpty) {
      if (_confirmpasswordController.text == _passwordController.text) {
        authController.createUserAccount(
          email: _emailController.text,
          password: _passwordController.text,
        );
      } else {
        Logger().e("Password not matched.");
      }
    } else {
      Logger().e("Please fill all fields");
    }
  }
}
