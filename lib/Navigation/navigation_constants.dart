class NavigationConstans {
  NavigationConstans._internal();
  static final NavigationConstans _instance = NavigationConstans._internal();
  static NavigationConstans get shared => _instance;

  final _root = '/';
  final _home = '/home';
  final _repos = '/repos';
  final _profile = '/profile';

  String get root => _root;
  String get home => _home;
  String get repos => _repos;
  String get profile => _profile;
}
