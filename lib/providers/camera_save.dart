import 'dart:io';

import 'package:flutter/cupertino.dart';

class CameraSave with ChangeNotifier {
  List<File> _capturedImage = [];
  int _index = 0;

  List<File> get capturedImage => _capturedImage;
  int get index => _index;

  set capturedImage(List<File> value) {
    _capturedImage.add(File(value.toString()));
    notifyListeners();
  }

  set index(int value) {
    index = value;
    notifyListeners();
  }
}
