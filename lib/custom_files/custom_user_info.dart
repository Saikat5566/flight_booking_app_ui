
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomUserInfo extends StatelessWidget {

  final String headText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final Widget? child;
  final double? size;


  const CustomUserInfo({
    super.key,
    required this.headText,
    required this.prefixIcon,
    this.suffixIcon,
    this.child, this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Get.isDarkMode ? Colors.white70 : Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(prefixIcon,color: Colors.black,),
                SizedBox(width: 10),
                Text(headText,style: TextStyle(color: Colors.black),),
                Spacer(),
                Icon(suffixIcon, color: Colors.blueAccent,size: size,),
              ],
            ),
            SizedBox(height: 10),
            Container(height: 1, width: double.infinity, color: Colors.grey),
            SizedBox(height: 10),
            SizedBox(child: child),
          ],
        ),
      ),
    );
  }
}
