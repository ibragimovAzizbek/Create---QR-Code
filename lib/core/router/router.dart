import 'package:flutter/material.dart';
import 'package:qr_code_app/pages/home/home_page.dart';
import 'package:qr_code_app/pages/second_page/second_page.dart';

class RouterCont {
  static final RouterCont _inherentce = RouterCont._init();

  static RouterCont get inherentce => _inherentce;

  RouterCont._init();

  Route? onGenerateRoute(RouteSettings settings) {
    // var args = settings.arguments;

    switch (settings.name) {
      case '/home':
        return navigator(const QRHomePage());

      case '/second':
        return navigator(const SecondPage());
    }
    return null;
    // return null;
  }

  MaterialPageRoute navigator(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
