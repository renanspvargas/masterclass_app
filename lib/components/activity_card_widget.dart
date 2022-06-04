import 'package:masterclass_app/imports.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Container(
        color: Theme.of(context).listTileTheme.tileColor,
      ),
    );
  }
}
