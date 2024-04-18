import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final void Function()? onPress; // Updated parameter type to void Function()?

  CustomButtonSocial({
    required this.text,
    required this.imageName,
    this.onPress, // Remove the @required annotation as required parameters are inferred in null-safe Dart
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.grey.shade50,
      ),
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Row(
          children: [
            Image.asset(imageName),
            const SizedBox(
              width: 10, // Adjusted spacing
            ),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
