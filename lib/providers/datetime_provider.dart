import 'dart:async';

import 'package:flutter/material.dart';

class DateTimeProvider extends ChangeNotifier {
  DateTime _currentDateTime = DateTime.now();
  late Timer _timer;

  DateTime get currentDateTime => _currentDateTime;

  DateTimeProvider() {
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      _currentDateTime = DateTime.now();
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  
}
