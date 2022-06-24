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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.shared.themeMode,
      routes: NavigationRoutes.instance.allRoutes,
      home: const SplashScreen(),
    );
  }
}
