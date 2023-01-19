import 'package:masterclass_app/imports.dart';
import 'package:masterclass_app/Navigation/app_routes.dart';

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
            builder: ((context) => const AnimatedExpansionTile()));

      case AppRoutes.cpfValidator:
        return MaterialPageRoute(
            builder: ((context) => const AnimatedExpansionTile()));

      case AppRoutes.designPattern:
        DesingPatternScreenActivity activity =
            routeSettings.arguments as DesingPatternScreenActivity;
        return MaterialPageRoute(
          builder: ((context) => DesingPatternCommonScreen(
                activity: activity,
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
