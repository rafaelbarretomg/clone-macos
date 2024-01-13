import 'package:flutter/material.dart';
import 'package:mac/model/draggable_model.dart';

class DraggableDataProvider with ChangeNotifier {
  List<DraggableData> draggableDataList = [];

  void updatePosition(DraggableData data, double newX, double newY) {
    data.positionX = newX;
    data.positionY = newY;

    // Coloque o último movido no final da lista
    draggableDataList.remove(data);
    draggableDataList.add(data);

    notifyListeners();
  }

  void addNewDraggableData(Widget customWidget) {
    // Adicione um novo DraggableData à lista
    final newDraggableData = DraggableData(
      150.0, // Defina a posição inicial conforme necessário
      40.0,
      customWidget,
      Colors.transparent,
    );

    draggableDataList.add(newDraggableData);

    notifyListeners();
  }

  void removeDraggableData(DraggableData data) {
    draggableDataList.remove(data);
    notifyListeners();
  }
}
