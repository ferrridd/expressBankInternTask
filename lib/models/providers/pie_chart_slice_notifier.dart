import 'package:flutter/cupertino.dart';

class PieChartSliceNotifier extends ChangeNotifier {
  int index = -1;
  void touchSlice(int index) {
    this.index = index;
    notifyListeners();
  }

  void clearSlice() {
    this.index = -1;
    notifyListeners();
  }
}
