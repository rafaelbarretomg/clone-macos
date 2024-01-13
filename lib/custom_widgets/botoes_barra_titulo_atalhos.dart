import 'package:flutter/material.dart';

import 'package:mac/providers/draggable_provider.dart';
import 'package:provider/provider.dart';

class MyRoundButton extends StatefulWidget {
  final Color color;
  final IconData icon;
  final double size;

  const MyRoundButton({
    super.key,
    required this.color,
    required this.icon,
    this.size = 10,
  });

  @override
  MyRoundButtonState createState() => MyRoundButtonState();
}

class MyRoundButtonState extends State<MyRoundButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<DraggableDataProvider>(builder: (context, provider, child) {
      return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: GestureDetector(
          onTap: () {
            provider.removeDraggableData(provider.draggableDataList.last);
          },
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.color, // Cor do botão
            ),
            child: Center(
              child: isHovered
                  ? Icon(
                      widget.icon,
                      color: Colors.black,
                      size: widget.size,
                    )
                  : const Text(
                      '',
                    ),
            ),
          ),
        ),
      );
    });
  }
}
