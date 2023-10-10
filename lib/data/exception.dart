class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);
  String tostring() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No Internet');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, 'Internal Server Error');
}

class TimeoutException extends AppExceptions {
  TimeoutException([String? message]) : super(message, 'Request Timeout');
}
class InvalidurlException extends AppExceptions {
  InvalidurlException([String? message]) : super(message, 'Invalid Url');
}
