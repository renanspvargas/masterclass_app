class ProductsException implements Exception {
  final String message;
  ProductsException(this.message);
}

class ProductOffilineException extends ProductsException {
  ProductOffilineException(super.message);
}
