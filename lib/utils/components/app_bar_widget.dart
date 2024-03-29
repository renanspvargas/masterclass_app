import 'package:masterclass_app/imports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool backButtonActive;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.backButtonActive = false,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(85);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            if (backButtonActive)
              GestureDetector(
                onTap: Navigator.of(context).pop,
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            Image.asset(
              AppImages.masterclassIcon,
              width: 48,
              height: 48,
            ),
            const SizedBox(width: 4),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "Flutterando Masterclass",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            GestureDetector(
              child: SvgPicture.asset(
                AppSvgs.awesomeMoon,
                color: Theme.of(context).appBarTheme.actionsIconTheme?.color,
                semanticsLabel: 'Toggle Theme',
              ),
              onTap: () {
                ThemeManager.shared.toggleTheme();
              },
            )
          ],
        ),
      ),
    );
  }
}
