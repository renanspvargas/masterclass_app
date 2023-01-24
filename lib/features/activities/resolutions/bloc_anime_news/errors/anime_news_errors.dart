class AnimeNewsException implements Exception {
  final String message;
  AnimeNewsException(this.message);
}

class AnimeNewsOffilineException extends AnimeNewsException {
  AnimeNewsOffilineException(super.message);
}

class AnimeNewsBadRequestException extends AnimeNewsException {
  AnimeNewsBadRequestException(super.message);
}
