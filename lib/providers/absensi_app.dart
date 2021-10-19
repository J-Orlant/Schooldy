import 'package:flutter/cupertino.dart';

class Absensi with ChangeNotifier {
  bool _isAbsen = false;
  String _id = '';

  bool get isAbsen => _isAbsen;
  String get id => _id;

  set isAbsen(bool value) {
    _isAbsen = value;
    notifyListeners();
  }

  set id(String value) {
    _id = value;
    notifyListeners();
  }
}
