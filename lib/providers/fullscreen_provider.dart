import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fullscreen_window/fullscreen_window.dart';

class FullScreenProvider extends ChangeNotifier {
  String screenSizeText = "";
    bool _isFullScreen = false;

    bool get isFullScreen => _isFullScreen;


  FullScreenProvider() {
    // Adiciona um listener de teclado para escutar pela tecla "Esc"
    RawKeyboard.instance.addListener(_handleKeyEvent);
  }

  @override
  void dispose() {
    // Remove o listener de teclado quando a página for descartada
    RawKeyboard.instance.removeListener(_handleKeyEvent);
    super.dispose();
  }

  void _handleKeyEvent(RawKeyEvent keyEvent) {
    // Verifica se a tecla pressionada é a tecla "Esc"
    if (keyEvent is RawKeyDownEvent &&
        keyEvent.logicalKey == LogicalKeyboardKey.escape) {
      setFullScreen(false); // Sai do modo de tela cheia
    }
  }

  void setFullScreen(bool isFullScreen) {
    _isFullScreen = isFullScreen;
    FullScreenWindow.setFullScreen(isFullScreen);
    notifyListeners(); // Notifica os ouvintes (como os widgets) sobre a mudança no estado
  }

  Future<void> showScreenSize(BuildContext context) async {
    Size logicalSize = await FullScreenWindow.getScreenSize(context);
    Size physicalSize = await FullScreenWindow.getScreenSize(null);
    screenSizeText =
        "Screen size (logical pixel): ${logicalSize.width} x ${logicalSize.height}\n";
    screenSizeText +=
        "Screen size (physical pixel): ${physicalSize.width} x ${physicalSize.height}\n";
    notifyListeners(); // Notifica os ouvintes sobre a mudança no estado
  }
}
