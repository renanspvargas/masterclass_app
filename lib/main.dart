import 'package:flutter/material.dart';
import 'package:masterclass_app/Navigation/navigation_manager.dart';
import 'package:masterclass_app/screens/home_screen.dart';
import 'package:masterclass_app/screens/profile_screen.dart';
import 'package:masterclass_app/screens/repos_screen.dart';
import 'package:masterclass_app/screens/splash_screen.dart';

void main() {
  runApp(const AppStart());
}

class AppStart extends StatelessWidget {
  const AppStart({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        NavigationManager.shared.root: (context) => const SplashScreen(),
        NavigationManager.shared.home: (context) => const HomeScreen(),
        NavigationManager.shared.repos: (context) => const ReposScreen(),
        NavigationManager.shared.profile: (context) => const ProfileScreen(),
      },
    );
  }
}
