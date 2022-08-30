import 'package:flutter/cupertino.dart';

class DataClass extends ChangeNotifier {
  int _x = 0;
  int get x => _x;
  void increamentX() {
    _x++;
    notifyListeners();
  }

  void decreament() {
    _x--;
    notifyListeners();
  }
}
