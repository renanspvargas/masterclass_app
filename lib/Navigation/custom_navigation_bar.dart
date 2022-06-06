import 'package:masterclass_app/imports.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentPageIndex = 0;

  void _updateIndex(int value) {
    setState(() {
      _currentPageIndex = value;
    });
  }

  static final List<Widget> _screens = [
    HomeScreen(),
    const ReposScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_currentPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPageIndex,
        onTap: _updateIndex,
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        selectedItemColor: Theme.of(context).listTileTheme.tileColor,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "Atividades",
            icon: SvgPicture.asset(
              AssetsConstants.svgs.featherTarget,
            ),
          ),
          BottomNavigationBarItem(
            label: "Repositórios",
            icon: SvgPicture.asset(
              AssetsConstants.svgs.awesomeGithub,
            ),
          ),
          BottomNavigationBarItem(
            label: "Sobre o dev",
            icon: SvgPicture.asset(
              AssetsConstants.svgs.awesomeProfile,
            ),
          ),
        ],
      ),
    );
  }
}
