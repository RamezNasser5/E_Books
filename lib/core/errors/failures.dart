import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServiceFailure extends Failure {
  ServiceFailure({required super.errorMessage});

  factory ServiceFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure(
            errorMessage: 'Connection TimeOut With ApiServices');
      case DioExceptionType.sendTimeout:
        return ServiceFailure(errorMessage: 'Send TimeOut With ApiServices');
      case DioExceptionType.receiveTimeout:
        return ServiceFailure(errorMessage: 'Receive TimeOut With ApiServices');
      case DioExceptionType.badCertificate:
        return ServiceFailure(
            errorMessage: 'Oops there was an badCertificate, Please Try again');
      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServiceFailure(
            errorMessage: 'Request to ApiServices was canceled ');
      case DioExceptionType.connectionError:
        return ServiceFailure(
            errorMessage:
                'Oops there was an connectionError, Please Try again');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServiceFailure(errorMessage: 'No Internet Connection');
        }
        return ServiceFailure(
            errorMessage: 'Unexpected Error, Please Try again');
      default:
        return ServiceFailure(
            errorMessage: 'Oops there was an error, Please Try again');
    }
  }

  factory ServiceFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailure(
          errorMessage: 'Your Request Not Found, Please Try later');
    } else if (statusCode == 500) {
      return ServiceFailure(
          errorMessage: 'Internal Servire Error, Please Try later');
    } else {
      return ServiceFailure(
          errorMessage: 'Oops there was an error, Please Try again');
    }
  }
}
