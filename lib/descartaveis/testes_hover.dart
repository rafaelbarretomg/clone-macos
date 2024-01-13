import 'package:flutter/material.dart';

class MyHoverWidget extends StatefulWidget {
  const MyHoverWidget({super.key});

  @override
  MyHoverWidgetState createState() => MyHoverWidgetState();
}

class MyHoverWidgetState extends State<MyHoverWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        padding: const EdgeInsets.all(20),
        child: Text(
          'Hover me!',
          style: TextStyle(color: Colors.white, fontSize: isHovered ? 80 : 50),
        ),
      ),
    );
  }
}

