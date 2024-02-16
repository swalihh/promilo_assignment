class AppException implements Exception {
  final String message;

  AppException(this.message);
}

class InternetException extends AppException {
  InternetException() : super('No Internet connection');
}

class CustomException extends AppException {
  CustomException() : super(' Somthing went Wrong ');
}

class BadRequestException extends AppException {
  BadRequestException() : super('BadRequest please try again !');
}

class UnauthorizedException extends AppException {
  UnauthorizedException({String? message}) : super(message ?? ' Access Denied');
}
