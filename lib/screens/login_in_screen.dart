import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/layouts/auth_layout.dart';
import 'package:food_ninja/widgets/log_in_form.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
      title: 'Login To Your Account',
      child: SafeArea(
        child: LogInForm(
          onEmailLogin: () {
            snack('Logging with Email');
          },
          onFacebookLogin: () {
            snack('Logging with Facebook');
          },
          onGoogleLogin: () {
            snack('Logging with Google');
          },
          onPasswordReset: () {
            snack('Kick off reset ...');
          },
        ),
      ),
    );
  }
}
