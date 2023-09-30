import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/logo.dart';
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

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pattern.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SafeArea(child: Logo()),
          const SizedBox(
            height: 48,
          ),
          Text(
            'Login To Your Account',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          SafeArea(
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
          )
        ],
      ),
    );
  }
}
