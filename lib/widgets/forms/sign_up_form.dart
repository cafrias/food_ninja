import 'package:flutter/material.dart';
import 'package:food_ninja/styles/tokens.dart';
import 'package:food_ninja/utils/gradient_text.dart';
import 'package:food_ninja/widgets/food_checkbox.dart';
import 'package:food_ninja/widgets/food_text_field.dart';
import 'package:food_ninja/widgets/icons/email_icon.dart';
import 'package:food_ninja/widgets/icons/lock_icon.dart';
import 'package:food_ninja/widgets/main_action_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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
              prefixIcon: EmailIcon(),
            ),
            const SizedBox(
              height: 12,
            ),
            FoodTextField(
              labelText: 'Password',
              obscureText: true,
              textInputAction: TextInputAction.done,
              prefixIcon: const LockIcon(),
              onFieldSubmitted: (_) {
                () {};
              },
            ),
            const SizedBox(
              height: 12,
            ),
            FoodTextField(
              labelText: 'Confirm Password',
              obscureText: true,
              textInputAction: TextInputAction.done,
              prefixIcon: const LockIcon(),
              onFieldSubmitted: (_) {
                () {};
              },
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 8.0),
              child: FoodCheckbox(
                label: 'Keep me Signed In',
                onChanged: (val) {
                  print('Changed to: $val');
                },
                value: true,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            MainActionButton(
              label: 'Create Account',
              onPressed: () {},
            ),
            LinkButton(
              text: 'already have an account?',
              onPressed: () {},
            ),
          ],
        ));
  }
}

class LinkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LinkButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
      onPressed: onPressed,
      child: GradientText(
        text,
        gradient: accentGradient,
      ),
    );
  }
}
