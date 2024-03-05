import 'package:flutter/material.dart';

class PagesControllerr extends ChangeNotifier {
  String? result;

  void updateResult(String? newResult) {
    result = newResult;
    notifyListeners();
  }
}
