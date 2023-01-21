import 'package:flutter/material.dart';

enum HomeState { showing, hidden }

class HomeController extends ChangeNotifier {
  var homeState = HomeState.showing;

  HomeState changeStateHome() {
    if (homeState == HomeState.showing) {
      homeState = HomeState.hidden;
      notifyListeners();
    } else {
      homeState = HomeState.showing;
      notifyListeners();
    }
    return homeState;
  }
}
