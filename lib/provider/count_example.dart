import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Count_provider with ChangeNotifier {
  int count = 33;
  int get _count => count;

  void CountIncrease() {
    count++;
    notifyListeners();
  }
}
