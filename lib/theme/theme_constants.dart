import 'package:masterclass_app/imports.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: scaffoldBackgrondLight,
  appBarTheme: const AppBarTheme(
    backgroundColor: scaffoldBackgrondLight,
  ),
  textTheme: TextTheme(
    headline6: appBarTitle.copyWith(color: textHighlightLight),
    subtitle1: appBarSubTitle.copyWith(color: textHighlightLight),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: scaffoldBackgrondDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: scaffoldBackgrondDark,
  ),
  textTheme: TextTheme(
    headline6: appBarTitle.copyWith(color: textHighlightDark),
    subtitle1: appBarSubTitle.copyWith(color: textHighlightDark),
  ),
);
