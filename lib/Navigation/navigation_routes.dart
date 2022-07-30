import 'package:masterclass_app/imports.dart';

class NavigationRoutes {
  NavigationRoutes._();
  static final NavigationRoutes _instance = NavigationRoutes._();
  static NavigationRoutes get instance => _instance;

  static const _mockupMoneyApp = '/mockup/money';
  static const _mockupTinderApp = '/mockup/tinder';
  static const _implicitButtonAnimation = '/animation/exercicio1';
  static const _implicitListAnimation = '/animation/exercicio2';
  static const _controlledButtonAnimation = '/animation/exercicio3';
  static const _cpfValidator = '/logic/cpf_validator_screen';

  static final _allRoutes = <String, WidgetBuilder>{
    _mockupMoneyApp: (context) => const MoneyApp(),
    _mockupTinderApp: (context) => const TinderApp(),
    _implicitButtonAnimation: (context) => const AnimatedButtonScreen(),
    _implicitListAnimation: (context) => const AnimatedExpansionTile(),
    _controlledButtonAnimation: (context) =>
        const ControlledAnimationButtonScreen(),
    _cpfValidator: (context) => const CpfValidatorScreen(),
  };

  Map<String, WidgetBuilder> get allRoutes => _allRoutes;
  String get mockupMoneyApp => _mockupMoneyApp;
  String get mockupTinderApp => _mockupTinderApp;
  String get implicitButtonAnimation => _implicitButtonAnimation;
  String get implicitListAnimation => _implicitListAnimation;
  String get controlledButtonAnimation => _controlledButtonAnimation;
  String get cpfValidator => _cpfValidator;
}
