import 'package:flutter/material.dart';
import 'package:food_ninja/styles/common_shadow.dart';

class FoodTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextInputAction textInputAction;
  final void Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;

  const FoodTextField({
    super.key,
    required this.labelText,
    this.textInputAction = TextInputAction.none,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [CommonShadow()],
      ),
      child: TextFormField(
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: _getPrefixIcon(),
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromRGBO(244, 244, 244, 1),
              width: 1,
              strokeAlign: BorderSide.strokeAlignInside,
              style: BorderStyle.solid,
            ),
          ),
          labelText: labelText,
          contentPadding: const EdgeInsets.only(left: 28, top: 20, bottom: 20),
        ),
        obscureText: obscureText,
      ),
    );
  }

  _getPrefixIcon() {
    if (prefixIcon == null) {
      return null;
    }

    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 16),
      child: prefixIcon,
    );
  }
}
