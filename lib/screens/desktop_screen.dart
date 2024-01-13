import 'package:flutter/material.dart';
import 'package:mac/providers/draggable_provider.dart';
import 'package:provider/provider.dart';

class MyDraggableWidget extends StatelessWidget {
  const MyDraggableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DraggableDataProvider>(builder: (context, provider, child) {
      return Stack(
        children: [
          for (var draggableData in provider.draggableDataList)
            Positioned(
              left: draggableData.positionX,
              top: draggableData.positionY,
              child: Draggable(
                feedback: Container(
                  color: draggableData.color,
                  child: draggableData.widget,
                ),
                onDraggableCanceled: (velocity, offset) {
                  provider.updatePosition(draggableData, offset.dx, offset.dy);
                },
                child: Container(
                  color: draggableData.color,
                  child: draggableData.widget,
                ),
              ),
            ),
        ],
      );
    });
  }
}
