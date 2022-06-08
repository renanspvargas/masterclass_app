class Images {
  // Singleton
  Images._();
  static final Images _instance = Images._();
  static Images get instance => _instance;

  // Properties
  final _masterclassIcon = 'assets/images/masterclass_icon.png';
  String get masterclassIcon => _masterclassIcon;

  final _masterclassLogo = 'assets/images/masterclass_logo.png';
  String get masterclassLogo => _masterclassLogo;

  final _profilePicture = 'assets/images/profile_pic.jpg';
  String get profilePicture => _profilePicture;
}
