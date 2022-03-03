import 'package:flutter/cupertino.dart';

class ProviderModel extends ChangeNotifier {
  int x = 0;

  void meth() {
    x++;
    notifyListeners();
  }
}
