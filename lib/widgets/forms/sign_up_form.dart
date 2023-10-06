import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/buttons/link_button.dart';
import 'package:food_ninja/widgets/food_checkbox.dart';
import 'package:food_ninja/widgets/food_text_field.dart';
import 'package:food_ninja/widgets/icons/email_icon.dart';
import 'package:food_ninja/widgets/icons/lock_icon.dart';
import 'package:food_ninja/widgets/main_action_button.dart';

class SignUpForm extends StatefulWidget {
  final void Function(
    String email,
    String password,
    bool remember,
  ) onSubmit;
  final VoidCallback onLogin;

  const SignUpForm({
    super.key,
    required this.onSubmit,
    required this.onLogin,
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
            const FoodTextField(
              labelText: 'Password',
              obscureText: true,
              textInputAction: TextInputAction.next,
              prefixIcon: LockIcon(),
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
                widget.onSubmit(
                  'dummy@example.com',
                  '123456',
                  false,
                );
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
              onPressed: () {
                widget.onSubmit('dummy@example.com', '123456', false);
              },
            ),
            LinkButton(
              text: 'already have an account?',
              onPressed: widget.onLogin,
            ),
          ],
        ));
  }
}
