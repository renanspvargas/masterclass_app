class Images {
  // Singleton
  Images._();
  static final Images _instance = Images._();
  static Images get instance => _instance;

  // Properties
  final _masterclassIcon = 'assets/images/masterclass_icon.png';
  final _masterclassLogo = 'assets/images/masterclass_logo.png';

  // Getters
  String get masterclassIcon => _masterclassIcon;
  String get masterclassLogo => _masterclassLogo;
}
