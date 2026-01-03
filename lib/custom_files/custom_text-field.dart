
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text ;
  final String hintText;
  final Widget prefixIcon;
  const CustomTextField({
    super.key, required this.text, required this.hintText, required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {

    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: text,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
      ),
    );
  }
}
