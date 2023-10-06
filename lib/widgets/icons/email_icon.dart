import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailIcon extends StatelessWidget {
  const EmailIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/email_icon.svg',
      width: 24,
      height: 24,
    );
  }
}
