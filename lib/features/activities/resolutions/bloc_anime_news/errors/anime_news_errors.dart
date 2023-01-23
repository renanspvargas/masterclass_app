class AnimeNewsException implements Exception {
  final String message;
  AnimeNewsException(this.message);
}

class AnimeNewsOffilineException extends AnimeNewsException {
  AnimeNewsOffilineException(super.message);
}
