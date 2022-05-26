class NavigationManager {
  static var shared = NavigationManager();

  final _root = '/';
  final _home = '/home';
  final _repos = '/repos';
  final _profile = '/profile';

  String get root => _root;
  String get home => _home;
  String get repos => _repos;
  String get profile => _profile;
}
