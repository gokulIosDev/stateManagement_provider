import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int initialValue = 0;

  // int get count => initialValue;

  increment() {
    initialValue++;
    notifyListeners(); //
   }
}
