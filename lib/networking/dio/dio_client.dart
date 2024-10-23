
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioClent {
  final Dio _dio = Dio();
  final List<Interceptor>? interceptors;
  DioClent(this.interceptors) {
    _dio.options
      ..baseUrl = 'https://api.freecurrencyapi.com/v1/latest?apikey=<API_KEY_HERE>&base_currency=INR'
      ..connectTimeout = const Duration(seconds: 30)
      ..receiveTimeout = const Duration(seconds: 20)
      ..headers = {'Content-type': 'application/json'}
      ..validateStatus = (status) {
        return status != null && status < 500;
      };
    if (interceptors != null && interceptors!.isNotEmpty) {
      _dio.interceptors.addAll(interceptors!);
    }
    //to add log during API call
    //kDebugMode - will be only for debugging,in release mode it will not work
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        error: true,
        requestHeader: true,
        responseHeader: false,
      ));
    }
  }
  Future get(String path,
      {Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken}) async {
    try {
      final response = await _dio.get(path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
  String handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return "Timout error";
      case DioExceptionType.badResponse:
        final statusCode = error.response!.statusCode;
        if (statusCode != null) {
          switch (statusCode) {
            case >= 300 && < 400:
              return 'Error';
            case 400:
              return 'Bad Request';
            case 404:
              return 'Not Found';
            case 500:
              return 'Internal Server Error';
          }
        }
        break;
      case DioExceptionType.unknown:
        return 'No Internet Connection';
      case DioExceptionType.badCertificate:
        return 'Certificate Error';
      case DioExceptionType.connectionError:
        return 'Connection Error';
      case DioExceptionType.cancel:
        return 'cancel by user';
      default:
        'other then these Errors';
    }
    return "";
  }
}
