import 'package:masterclass_app/imports.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _index = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    const ReposScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: _screens,
      ),
      // body: _screens.elementAt(widget.currentPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
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
