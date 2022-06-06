import 'package:masterclass_app/imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CustomBottomNavigationBar(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff121517),
      child: Center(
        child: Image.asset(
          AssetsConstants.images.masterclassLogo,
          height: 75,
          width: 287,
        ),
      ),
    );
  }
}
