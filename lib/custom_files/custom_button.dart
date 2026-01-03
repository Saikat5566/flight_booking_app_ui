
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Size? minimumSize;
  final Color? backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final Color textColor;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.minimumSize,
    this.backgroundColor,
    required this.borderRadius,
    required this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? Colors.grey.shade200,
        ),
        minimumSize: MaterialStateProperty.all(
          minimumSize ?? const Size(100, 40),
        ),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: textColor,
        ),
      ),
    );
  }
}
