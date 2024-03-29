import 'package:masterclass_app/imports.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key, required this.activity}) : super(key: key);

  final ActivityModel activity;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).listTileTheme.tileColor,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 220,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderRow(activity: activity, theme: theme),
            BodyTextRow(activity: activity, theme: theme),
            DeepLinksRow(activity: activity, theme: theme)
          ],
        ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key, required this.activity, required this.theme})
      : super(key: key);

  final ActivityModel activity;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: primaryColor,
          ),
          height: 43,
          width: 43,
          child: SvgPicture.asset(
            activity.icon,
            color: theme.scaffoldBackgroundColor,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          activity.title,
          style: theme.textTheme.headline2,
        ),
        const Expanded(child: SizedBox()),
        Text(
          'Exercicios:  ',
          style: theme.textTheme.bodyText2?.copyWith(
            color: theme.textTheme.bodyText1?.color,
          ),
        ),
        Text(
          activity.exercicios.toString(),
          style: theme.textTheme.bodyText2?.copyWith(
            fontFamily: AppFonts.poppins,
          ),
        ),
      ],
    );
  }
}

class BodyTextRow extends StatelessWidget {
  const BodyTextRow({Key? key, required this.activity, required this.theme})
      : super(key: key);

  final ActivityModel activity;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(
            activity.body,
            style: theme.textTheme.bodyText1,
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}

class DeepLinksRow extends StatefulWidget {
  const DeepLinksRow({
    Key? key,
    required this.activity,
    required this.theme,
  }) : super(key: key);

  final ActivityModel activity;
  final ThemeData theme;

  @override
  State<DeepLinksRow> createState() => _DeepLinksRowState();
}

class _DeepLinksRowState extends State<DeepLinksRow> {
  Future navigate() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ActivitiesListScreen(
          info: widget.activity.activitiesList,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => print('Github link'),
          child: Row(
            children: [
              SvgPicture.asset(
                AppSvgs.awesomeGithub,
                color: widget.theme.textTheme.headline1?.color,
              ),
              const SizedBox(width: 4),
              Text(
                'Acessar código fonte',
                style: widget.theme.textTheme.bodyText2,
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        GestureDetector(
          onTap: navigate,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: primaryColor,
            ),
            width: 120,
            height: 35,
            child: Center(
              child: Text(
                'Ver mais',
                style: widget.theme.textTheme.subtitle1
                    ?.copyWith(color: buttonTextColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
