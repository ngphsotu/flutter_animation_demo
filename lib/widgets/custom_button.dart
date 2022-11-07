import 'package:flutter/material.dart';

import '/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onTap;

  const CustomButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      child: Container(
        width: 300,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.pink[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: CustomText(
          text: label,
          size: 22,
          color: Colors.white,
          weight: FontWeight.w700,
        ),
      ),
    );
  }
}
