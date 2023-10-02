import 'package:flutter/material.dart';
import 'package:food_ninja/widget/logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pattern.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Logo(),
      ),
    );
  }
}
