import 'package:flutter/cupertino.dart';

class CounterScreenController with ChangeNotifier
{
  int count = 10;

  // A function for increment functionality
  void increment()
  {
    count++;
    notifyListeners(); // function bakiulla variablesne notify cheyum.
  }

}
// ChangeNotifier is a Mixin, which is used for converting a class to Provider class.