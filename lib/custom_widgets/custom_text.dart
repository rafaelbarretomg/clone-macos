import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  const CustomText({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.size = 14,
    this.weight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: weight,
          fontFamily: 'FallingSky', ),
    );
  }
}
