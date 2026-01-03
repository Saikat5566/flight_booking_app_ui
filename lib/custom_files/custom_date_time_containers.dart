import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomDateTimeContainers extends StatelessWidget {
  final String date;
  final String day;

  const CustomDateTimeContainers({
    super.key,
    required this.date,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Get.isDarkMode ? Colors.black : Colors.white),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Get.isDarkMode ? Colors.black : Colors.white,
            ),
          ),
          Text(
            day,
            style: TextStyle(
              color: Get.isDarkMode ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}