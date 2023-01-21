import 'package:masterclass_app/imports.dart';

class ThemeManager with ChangeNotifier {
  ThemeManager._internal();
  static final ThemeManager _instance = ThemeManager._internal();
  static ThemeManager get shared => _instance;

  ThemeMode _themeMode = ThemeMode.dark;
  var _isDark = true;

  get themeMode => _themeMode;
  get toggleTheme => _toggleTheme;

  _toggleTheme() {
    _isDark = !_isDark;
    _themeMode = _isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
