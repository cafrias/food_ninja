import 'package:flutter/material.dart';

class CommonShadow extends BoxShadow {
  const CommonShadow({
    super.color = const Color.fromRGBO(90, 108, 234, 0.07),
    super.blurRadius = 50,
    super.spreadRadius = 0,
    super.offset = const Offset(12, 26),
  });
}
