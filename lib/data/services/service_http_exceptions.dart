// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:gallery_app/data/consts/translations.dart';

class ServiceHttpExceptions implements Exception {
  late String _message;

  @override
  String toString() => _message;

  ServiceHttpExceptions.fromError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
      case DioErrorType.connectTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
        _message = dioMessage[dioError.type]!;
        break;

      case DioErrorType.response:
        _message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;

      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          _message = dioMessage[dioError.type]!;
          break;
        }

        _message = dioMessageOthers;
        break;

      default:
        _message = dioMessageDefault;
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
      case 401:
      case 404:
      case 500:
      case 502:
        return error;

      default:
        return dioMessageDefault;
    }
  }
}
