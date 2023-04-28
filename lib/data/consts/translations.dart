// Package imports:
import 'package:dio/dio.dart';

Map<DioErrorType, String> dioMessage = {
  DioErrorType.cancel: 'Request to server was cancelled',
  DioErrorType.connectTimeout: 'Timeout to connect to server',
  DioErrorType.receiveTimeout: 'Timeout to receive data',
  DioErrorType.sendTimeout: 'Timeout to send data',
  DioErrorType.other: 'Something went wrong',
};

const String dioMessageDefault = 'Something went wrong';

const String dioMessageOthers = 'Unexpected error occurred';
