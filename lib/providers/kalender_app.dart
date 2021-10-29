import 'package:flutter/cupertino.dart';

class Kalender with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set isClicked(int value) {
    _currentIndex = value;
    notifyListeners();
  }
}
