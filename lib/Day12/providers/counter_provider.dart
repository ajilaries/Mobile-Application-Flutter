import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  bool get isEven => _count % 2 == 0;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
