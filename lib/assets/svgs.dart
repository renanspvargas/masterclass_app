class Svgs {
  // Singleton
  Svgs._();
  static final Svgs _instance = Svgs._();
  static Svgs get instance => _instance;

  // Properties
  final _awesomeMoon = "assets/svg/awesome_moon.svg";

  // Getters
  String get awesomeMoon => _awesomeMoon;
}
