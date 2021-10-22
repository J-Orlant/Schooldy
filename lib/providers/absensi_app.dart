import 'package:flutter/cupertino.dart';

class Absensi with ChangeNotifier {
  String _isAbsen = 'avaible';
  String _id = '';

  String get isAbsen => _isAbsen;
  String get id => _id;

  set isAbsen(String value) {
    _isAbsen = value;
    notifyListeners();
  }

  set id(String value) {
    _id = value;
    notifyListeners();
  }
}
