import 'package:flutter/cupertino.dart';

class SlidingUpPanelNotifier extends ChangeNotifier {
  bool isActivated = false;

  void toActivate() {
    isActivated = true;
    notifyListeners();
  }

  void toDeactivate() {
    isActivated = false;
    notifyListeners();
  }

  double returnMinHeight() {
    return isActivated ? 60 : 0;
  }
}
