import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomSelectionButtons extends StatelessWidget {
  const CustomSelectionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 4), // spacing
            decoration: BoxDecoration(
              color: Get.isDarkMode
                  ? colorScheme.primary
                  : Colors.blueAccent, // background color
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                'One Way',
                style: TextStyle(
                  color: Get.isDarkMode ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.grey),
            ),
            child: Center(
              child: Text('Round Trip', style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.grey),
            ),
            child: Center(
              child: Text('Multi-City', style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
      ],
    );
  }
}
