import 'package:masterclass_app/imports.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: scaffoldBackgrondLight,
  appBarTheme: const AppBarTheme(
      backgroundColor: scaffoldBackgrondLight,
      actionsIconTheme: IconThemeData(color: moonTogleLight)),
  listTileTheme: const ListTileThemeData(tileColor: tileBackgroundLight),
  textTheme: TextTheme(
    headline1: headline1.copyWith(color: textHighlightLight),
    headline2: headline2.copyWith(color: textHighlightLight),
    subtitle1: subtitle1.copyWith(color: textHighlightLight),
    subtitle2: subtitle2.copyWith(color: textHighlightLight),
    bodyText1: bodyText1.copyWith(color: bodyTextLight),
    bodyText2: bodyText2.copyWith(color: bodyTextLight),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: scaffoldBackgrondDark,
  appBarTheme: const AppBarTheme(
      backgroundColor: scaffoldBackgrondDark,
      actionsIconTheme: IconThemeData(color: moonTogleDark)),
  listTileTheme: const ListTileThemeData(tileColor: tileBackgroundDark),
  textTheme: TextTheme(
    headline1: headline1.copyWith(color: textHighlightDark),
    headline2: headline2.copyWith(color: textHighlightDark),
    subtitle1: subtitle1.copyWith(color: textHighlightDark),
    subtitle2: subtitle2.copyWith(color: textHighlightDark),
    bodyText1: bodyText1.copyWith(color: bodyTextDark),
    bodyText2: bodyText2.copyWith(color: bodyTextDark),
  ),
);
