import 'package:masterclass_app/imports.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key, required this.activity}) : super(key: key);

  final Activity activity;

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
            DeepLinksRow(theme: theme)
          ],
        ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key, required this.activity, required this.theme})
      : super(key: key);

  final Activity activity;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              height: 43,
              width: 43,
            ),
            SvgPicture.asset(
              activity.icon,
              color: theme.scaffoldBackgroundColor,
            ),
          ],
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
            fontFamily: AssetsConstants.fonts.poppins,
          ),
        ),
      ],
    );
  }
}

class BodyTextRow extends StatelessWidget {
  const BodyTextRow({Key? key, required this.activity, required this.theme})
      : super(key: key);

  final Activity activity;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Text(
      activity.body,
      style: theme.textTheme.bodyText1,
    );
  }
}

class DeepLinksRow extends StatelessWidget {
  const DeepLinksRow({Key? key, required this.theme}) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AssetsConstants.svgs.awesomeGithub,
          color: theme.textTheme.headline1?.color,
        ),
        const SizedBox(width: 4),
        Text(
          'Acessar código fonte',
          style: theme.textTheme.bodyText2,
        ),
        const Expanded(child: SizedBox()),
        GestureDetector(
          onTap: () => {},
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
                style:
                    theme.textTheme.subtitle1?.copyWith(color: buttonTextColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
