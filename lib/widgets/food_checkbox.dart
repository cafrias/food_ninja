import 'package:flutter/material.dart';

class FoodCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final void Function(bool? value) onChanged;

  const FoodCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          onChanged: onChanged,
          value: value,
          semanticLabel: label,
        ),
        InkWell(
          onTap: () {
            onChanged(!value);
          },
          child: Padding(
            padding:
                const EdgeInsets.only(left: 4, top: 12, right: 12, bottom: 12),
            child: Text(label),
          ),
        ),
      ],
    );
  }
}
