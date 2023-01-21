import 'package:masterclass_app/imports.dart';

class AppRouter {
  static Route<dynamic>? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(builder: ((context) => const SplashScreen()));

      case AppRoutes.mainBottomNavBar:
        return MaterialPageRoute(builder: ((context) => MainBottomNavBar()));

      case AppRoutes.mockupMoneyApp:
        return MaterialPageRoute(builder: ((context) => const MoneyApp()));
      case AppRoutes.mockupTinderApp:
        return MaterialPageRoute(builder: ((context) => const TinderApp()));

      case AppRoutes.implicitButtonAnimation:
        return MaterialPageRoute(
            builder: ((context) => const AnimatedButtonScreen()));
      case AppRoutes.implicitListAnimation:
        return MaterialPageRoute(
            builder: ((context) => const AnimatedExpansionTile()));
      case AppRoutes.controlledButtonAnimation:
        return MaterialPageRoute(
            builder: ((context) => const ControlledAnimationButtonScreen()));

      case AppRoutes.cpfValidator:
        return MaterialPageRoute(
            builder: ((context) => const CpfValidatorScreen()));

      case AppRoutes.servicePattern:
        return MaterialPageRoute(
          builder: ((context) => DesingPatternCommonScreen(
                activity: DesingPatternScreenActivity.service,
              )),
        );
      case AppRoutes.repositoryPattern:
        return MaterialPageRoute(
          builder: ((context) => DesingPatternCommonScreen(
                activity: DesingPatternScreenActivity.repository,
              )),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text("Page not found!"),
        ),
      );
    });
  }
}
