import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/logo.dart';

class AuthLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const AuthLayout({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pattern.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SafeArea(child: Logo()),
          const SizedBox(
            height: 48,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          child
        ],
      ),
    );
  }
}
