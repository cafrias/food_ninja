import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LockIcon extends StatelessWidget {
  const LockIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/lock_icon.svg',
      width: 24,
      height: 24,
    );
  }
}
