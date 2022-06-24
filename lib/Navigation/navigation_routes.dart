import 'package:masterclass_app/imports.dart';

class NavigationRoutes {
  NavigationRoutes._();
  static final NavigationRoutes _instance = NavigationRoutes._();
  static NavigationRoutes get instance => _instance;

  static const _mockupMoneyApp = '/mockup/money';
  static const _mockupTinderApp = '/mockup/tinder';

  static final _allRoutes = <String, WidgetBuilder>{
    _mockupMoneyApp: (context) => const MoneyApp(),
    _mockupTinderApp: (context) => const TinderApp(),
  };

  Map<String, WidgetBuilder> get allRoutes => _allRoutes;
  String get mockupMoneyApp => _mockupMoneyApp;
  String get mockupTinderApp => _mockupTinderApp;
}
