import 'package:masterclass_app/imports.dart';

void main() {
  runApp(const AppStart());
}

class AppStart extends StatelessWidget {
  const AppStart({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.shared.themeMode,
      routes: <String, WidgetBuilder>{
        NavigationConstans.shared.root: (context) => const SplashScreen(),
        NavigationConstans.shared.home: (context) => const HomeScreen(),
        NavigationConstans.shared.repos: (context) => const ReposScreen(),
        NavigationConstans.shared.profile: (context) => const ProfileScreen(),
      },
    );
  }
}
