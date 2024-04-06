import 'package:clavell/screens/account.dart';
import 'package:clavell/screens/card.dart';
import 'package:clavell/screens/home.dart';
import 'package:clavell/screens/transaction.dart';
import 'package:flutter/material.dart';

enum RouteStatus { reset, newOne, replace, unchanged }

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const Home(),
    '/account': (context) => const AccountScreen(),
    '/card': (context) => const CardScreen(),
    '/transaction': (context) => const TransactionScreen(),
  };
  static const String initialRoute = '/';
  static final List<String> _list = routes.entries.map((e) => e.key).toList();

  static String get(int i) {
    return _list[i];
  }

  static int selected(BuildContext context) {
    ModalRoute? modal = ModalRoute.of(context);
    if (modal != null) {
      return _list.indexOf(modal.settings.name!);
    }
    return 0;
  }

  static RouteStatus change(int selected, int destination) {
    if (destination != selected) {
      if (destination == 0) {
        return RouteStatus.reset;
      } else if (selected == 0) {
        return RouteStatus.newOne;
      } else {
        return RouteStatus.replace;
      }
    }
    return RouteStatus.unchanged;
  }
}
