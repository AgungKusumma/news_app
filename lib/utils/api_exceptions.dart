class ApiException implements Exception {
  final String message;

  ApiException(this.message);

  @override
  String toString() => "ApiException: $message";
}

class BadRequestException extends ApiException {
  BadRequestException(super.message);
}

class UnauthorizedException extends ApiException {
  UnauthorizedException(super.message);
}

class ServerException extends ApiException {
  ServerException(super.message);
}
