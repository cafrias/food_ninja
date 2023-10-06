import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/forms/sign_up_form.dart';
import 'package:food_ninja/widgets/layouts/auth_layout.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void snack(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }

    return AuthLayout(
      title: 'Sign Up For Free',
      child: SafeArea(
        child: SignUpForm(
          onLogin: () {
            snack('Move to login');
          },
          onSubmit: (email, password, remember) {
            snack("$email, $password, $remember");
          },
        ),
      ),
    );
  }
}
