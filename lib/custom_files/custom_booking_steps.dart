import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomBookingSteps extends StatelessWidget {
  final String? steps;
  final IconData? icon;
  final bool isCompleted;
  final String book;
  final Color color;
  final Color stepTextColor;

  const CustomBookingSteps({
    super.key,
    required this.book,
    required this.color,
    required this.stepTextColor,
    this.steps,
    this.icon,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Center(
            child: isCompleted
                ? Icon(icon ?? Icons.check, color: stepTextColor, size: 20)
                : Text(
              steps ?? '',
              style: TextStyle(
                color: stepTextColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        const SizedBox(height: 6),

        Text(
          book,
          style: TextStyle(
            color: Get.isDarkMode ? Colors.black : Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}