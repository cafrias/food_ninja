import 'package:flutter/material.dart';
import 'package:food_ninja/styles/tokens.dart';

class MainActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const MainActionButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: accentGradient,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size(140, 1),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 36),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: onPressed,
            child: Text(label),
          ),
        ],
      ),
    );
  }
}
