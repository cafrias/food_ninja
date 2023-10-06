import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/styles/common_shadow.dart';
import 'package:food_ninja/styles/tokens.dart';

class SocialButton extends StatelessWidget {
  final String svgIcon;
  final String label;
  final VoidCallback onPressed;

  const SocialButton(
    this.svgIcon, {
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [CommonShadow()],
      ),
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            foregroundColor: const MaterialStatePropertyAll(Colors.black),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 22, vertical: 16),
            ),
            backgroundColor: const MaterialStatePropertyAll(Colors.white),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                side: const BorderSide(
                  color: Color.fromRGBO(244, 244, 244, 1),
                ),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svgIcon,
                width: 25,
                height: 25,
                excludeFromSemantics: true,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(label)
            ],
          )),
    );
  }
}
