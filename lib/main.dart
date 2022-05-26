import 'package:flutter/material.dart';
import 'package:masterclass_app/navigation/navigation_constants.dart';
import 'package:masterclass_app/screens/home_screen.dart';
import 'package:masterclass_app/screens/profile_screen.dart';
import 'package:masterclass_app/screens/repos_screen.dart';
import 'package:masterclass_app/screens/splash_screen.dart';
import 'package:masterclass_app/theme/theme_constants.dart';
import 'package:masterclass_app/theme/theme_manager.dart';

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
