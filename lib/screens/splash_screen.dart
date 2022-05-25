import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff121517),
      child: Center(
        child: Image.asset(
          'assets/masterclass_logo.png',
          height: 75,
          width: 287,
        ),
      ),
    );
  }
}
