import 'package:flutter/material.dart';

class BarraDeAtalhosProvider with ChangeNotifier {
  late List<String> icones1;
  late List<String> icones2;
  late List<double> sideLengths1;
  late List<double> sideLengths2;
  late List<String> images1;
  late List<String> images2;
  String? activeIcon; // Variável para armazenar o ícone ativo

  BarraDeAtalhosProvider() {
    icones1 = [
      'assets/icons/finder.png',
      'assets/icons/safari.png',
      'assets/icons/appletv.png',
      'assets/icons/chrome.png',
      'assets/icons/fotos.png',
      'assets/icons/mail.png',
      'assets/icons/maps.png',
      'assets/icons/music.png',
      'assets/icons/note.png',
      'assets/icons/pastas.png',
      'assets/icons/settings.png',
      'assets/icons/steam.png',
      'assets/icons/store.png',
      'assets/icons/vscode.png',
    ];

    icones2 = [
      'assets/icons/bin.png',
      'assets/icons/download.png',
    ];

    images1 = [
      'assets/images/finder.png',
      'assets/images/safari.png',
      'assets/images/appletv.jpg',
      'assets/images/chrome.png',
      'assets/images/fotos.png',
      'assets/images/email.png',
      'assets/images/gps.png',
      'assets/images/itunes.png',
      'assets/images/note.png',
      'assets/images/folder.png',
      'assets/images/config.png',
      'assets/images/steam.png',
      'assets/images/applestore.png',
      'assets/images/vscode.png',
    ];

    images2 = [
      'assets/images/trash.png',
      'assets/images/folder.png',
    ];

    sideLengths1 = List.generate(icones1.length, (index) => 70.0);
    sideLengths2 = List.generate(icones2.length, (index) => 70.0);
  }

  void updateSideLengths1(int index, bool value) {
    sideLengths1[index] = value ? 90 : 70;
    notifyListeners();
  }

  void updateSideLengths2(int index, bool value) {
    sideLengths2[index] = value ? 90 : 70;
    notifyListeners();
  }

  void setActiveIcon(String icon) {
    activeIcon = icon;
    notifyListeners();
  }
}
