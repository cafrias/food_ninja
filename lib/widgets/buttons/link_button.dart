import 'package:flutter/material.dart';
import 'package:food_ninja/styles/tokens.dart';
import 'package:food_ninja/utils/gradient_text.dart';

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
