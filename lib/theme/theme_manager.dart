import 'package:masterclass_app/imports.dart';

class ThemeManager with ChangeNotifier {
  static ThemeManager shared = ThemeManager();

  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
  }
}
