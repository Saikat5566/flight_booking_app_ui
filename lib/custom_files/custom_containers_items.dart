
import 'package:flutter/material.dart';

class CustomContainerItems extends StatelessWidget {
  final double height;
  final double width;
  final ImageProvider<Object> image;
  final Color color;

  const CustomContainerItems({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(image: image),
        color: color,
      ),
    );
  }
}
