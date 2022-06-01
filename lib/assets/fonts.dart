class Fonts {
  // Singleton
  Fonts._();
  static final Fonts _instance = Fonts._();
  static Fonts get instance => _instance;

  // Properties
  final _montserrat = 'Montserrat';
  final _poppins = 'Poppins';

  // Getters
  String get montserrat => _montserrat;
  String get poppins => _poppins;
}
