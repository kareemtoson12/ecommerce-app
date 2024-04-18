import 'package:easyecommerce/screens/Home_page.dart';
import 'package:easyecommerce/screens/cart_page.dart';
import 'package:easyecommerce/screens/profile_veiw.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homeviewmodel extends GetxController {
  int _navigatorValue = 0;
  get navigatorvalue => _navigatorValue;
  Widget _current_screen = HomePage();
  get currentscreen => _current_screen;
  void selectedvalue(int value) {
    _navigatorValue = value;
    switch (value) {
      case 0:
        _current_screen = HomePage();
        break;
      case 1:
        _current_screen = Cart();
        break;
      case 2:
        _current_screen = ProfileUser();
        break;
    }
    update();
  }
}
