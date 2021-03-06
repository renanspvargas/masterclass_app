import 'package:masterclass_app/imports.dart';

class TechnologyCard extends StatefulWidget {
  const TechnologyCard({Key? key, required this.technology}) : super(key: key);
  final FavoriteTechnologyModel technology;

  @override
  State<TechnologyCard> createState() => _TechnologyCardState();
}

class _TechnologyCardState extends State<TechnologyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).listTileTheme.tileColor,
      ),
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            widget.technology.image,
            height: 45,
            width: 45,
            color: Theme.of(context).textTheme.headline1?.color,
          ),
          Text(
            widget.technology.name,
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}
