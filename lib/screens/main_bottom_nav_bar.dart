import 'package:masterclass_app/imports.dart';

class MainBottomNavBar extends StatefulWidget {
  int currentPageIndex;

  MainBottomNavBar({
    Key? key,
    this.currentPageIndex = 0,
  }) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  final List<Widget> _screens = [
    HomeScreen(),
    const ReposScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(widget.currentPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.currentPageIndex,
        onTap: (index) {
          setState(() {
            widget.currentPageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Atividades",
            icon: SvgPicture.asset(
              AppSvgs.featherTarget,
              color: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.color,
              width: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.size,
              height: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.size,
            ),
          ),
          BottomNavigationBarItem(
            label: "Repositórios",
            icon: SvgPicture.asset(
              AppSvgs.awesomeGithub,
              color: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.color,
              width: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.size,
              height: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.size,
            ),
          ),
          BottomNavigationBarItem(
            label: "Sobre o dev",
            icon: Icon(
              Icons.person,
              color: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.color,
              size: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.size,
            ),
          ),
        ],
      ),
    );
  }
}
