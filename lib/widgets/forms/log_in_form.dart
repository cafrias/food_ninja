import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/buttons/link_button.dart';
import 'package:food_ninja/widgets/food_text_field.dart';
import 'package:food_ninja/widgets/main_action_button.dart';
import 'package:food_ninja/widgets/social_button.dart';

class LogInForm extends StatefulWidget {
  final VoidCallback onFacebookLogin;
  final VoidCallback onGoogleLogin;
  final VoidCallback onEmailLogin;
  final VoidCallback onPasswordReset;

  const LogInForm({
    super.key,
    required this.onEmailLogin,
    required this.onGoogleLogin,
    required this.onFacebookLogin,
    required this.onPasswordReset,
  });

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const FoodTextField(
              labelText: 'Email',
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 12,
            ),
            FoodTextField(
              labelText: 'Password',
              obscureText: true,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) {
                widget.onEmailLogin();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Builder(builder: (context) {
              var theme = Theme.of(context);
              return Text(
                'Or Continue With',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleSmall,
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: SocialButton(
                    'assets/images/facebook_logo.svg',
                    label: 'Facebook',
                    onPressed: widget.onFacebookLogin,
                  ),
                ),
                const SizedBox(
                  width: 21,
                ),
                Expanded(
                  child: SocialButton(
                    'assets/images/google_logo.svg',
                    label: 'Google',
                    onPressed: widget.onGoogleLogin,
                  ),
                ),
              ],
            ),
            LinkButton(
              text: 'Forgot Your Password?',
              onPressed: widget.onPasswordReset,
            ),
            const SizedBox(
              height: 20,
            ),
            MainActionButton(
              label: 'Login',
              onPressed: widget.onEmailLogin,
            ),
          ],
        ));
  }
}
