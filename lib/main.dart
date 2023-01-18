import 'package:masterclass_app/Navigation/app_router.dart';
import 'package:masterclass_app/Navigation/app_routes.dart';
import 'package:masterclass_app/imports.dart';

void main() {
  runApp(const AppStart());
}

class AppStart extends StatefulWidget {
  const AppStart({Key? key}) : super(key: key);

  @override
  State<AppStart> createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  @override
  void initState() {
    super.initState();
    ThemeManager.shared.addListener(themeListener);
  }

  @override
  void dispose() {
    ThemeManager.shared.removeListener(themeListener);
    super.dispose();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.shared.themeMode,
      onGenerateRoute: AppRouter.onGeneratedRoute,
      initialRoute: AppRoutes.splashScreen,
    );
  }
}
