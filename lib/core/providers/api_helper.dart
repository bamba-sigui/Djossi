import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../error/exceptions.dart';
import '../utils/app_constants.dart';

class APIHelper {
  final Dio dio;
  final String apiBaseUrl;
  const APIHelper({required this.dio, required this.apiBaseUrl});

  //for api helper testing only
  APIHelper.test({required this.dio, required this.apiBaseUrl});

  // ignore: unused_element
  _getApiClient({String token = ''}) async {
    dio.interceptors.clear();

    dio
      ..options.baseUrl = apiBaseUrl
      ..options.connectTimeout = const Duration(milliseconds: 20000)
      ..options.receiveTimeout = const Duration(milliseconds: 20000)
      ..options.headers.addAll({
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      });

    dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options,
        RequestInterceptorHandler requestInterceptorHandler) {
      requestInterceptorHandler.next(options);
    }, onResponse: (Response response,
        ResponseInterceptorHandler responseInterceptorHandler) async {
      responseInterceptorHandler.next(response);
    }, onError:
        (DioException e, ErrorInterceptorHandler errorInterceptorHandler) async {
      errorInterceptorHandler.next(e);
    }));
  }

  Future<dynamic> get(String url) async {
    try {
      // ignore: avoid_single_cascade_in_expression_statements
      dio..options.baseUrl = apiBaseUrl;
      final response = await dio.get(url);
      return response;
    } on DioException catch (e) {
      if (e.response != null && e.response?.data != null) {
        throw RequestException.fromJson(e.response?.data);
      } else {
        throw const RequestException(
            statusCode: -1, message: AppConstants.networkError);
      }
    }
  }

  Future<dynamic> getWithParams(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) async {
    try {
      dio.options.baseUrl = apiBaseUrl;
      if (kDebugMode) {
        print('[API Helper - url] Server Request: $url');
        print(
            '[API Helper - queryParameters] Server Request: $queryParameters');
        print('[API Helper - header] Server Request: $header');
      }
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(
          headers: header,
        ),
      );
      if (kDebugMode) {
        print("Response data ==> ${response.toString()}");
        print("Response runtyime ==> ${response.data.runtimeType}");
      }
      return response.data;
    } on DioException catch (e) {
      if (e.response != null && e.response?.data != null) {
        if (kDebugMode) {
          print("ERREUR DIO --> ${e.response}");
        }
        throw RequestException.fromJson(e.response?.data);
      } else {
        throw const RequestException(
            statusCode: -1, message: AppConstants.networkError);
      }
    }
  }

  Future<dynamic> post(String url,
      {Map<String, dynamic>? headers,
      required body,
      encoding,
      onSendProgress}) async {
    try {
      dio.options.baseUrl = apiBaseUrl;
      // ignore: avoid_single_cascade_in_expression_statements
      // dio..options.baseUrl = apiBaseUrl;
      if (kDebugMode) {
        print('[API Helper - POST] Server Request: $url');
        print('[API Helper - POST] Server Request: $body');
        print('[API Helper - POST] Server Request: $headers');
      }
      final response =
          await dio.post(url, data: body, options: Options(headers: headers));
      final String res = json.encode(response.data);
      if (kDebugMode) {
        print('[API Helper - POST] Server Response: $res');
        print(response.requestOptions.uri);
      }
      return response.data;
    } on DioException catch (e) {
      if (kDebugMode) {
        print("response     :${e.response}");
      }
      if (e.response != null && e.response?.data != null) {
        throw RequestException.fromJson(e.response?.data);
      } else {
        throw ServerException();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<dynamic> put(String url,
      {Map<String, dynamic>? headers,
      @required body,
      encoding,
      onSendProgress}) async {
    try {
      // ignore: avoid_single_cascade_in_expression_statements
      dio..options.baseUrl = apiBaseUrl;
      if (kDebugMode) {
        print('[API Helper - POST] Server Request: $body');
      }

      final response =
          await dio.put(url, data: body, options: Options(headers: headers));

      final String res = json.encode(response.data);

      if (kDebugMode) {
        print('[API Helper - POST] Server Response: $res');
        print(response.requestOptions.uri);
      }

      return response.data;
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e.requestOptions.headers);
      }
      if (e.response != null && e.response?.data != null) {
        throw RequestException.fromJson(e.response?.data);
      } else {
        throw ServerException();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<dynamic> delete(String url,
      {Map<String, dynamic>? headers, encoding, onSendProgress}) async {
    try {
      // ignore: avoid_single_cascade_in_expression_statements
      dio..options.baseUrl = apiBaseUrl;

      final response =
          await dio.delete(url, options: Options(headers: headers));

      final String res = json.encode(response.data);

      if (kDebugMode) {
        print('[API Helper - POST] Server Response: $res');
        print(response.requestOptions.uri);
      }

      return response.data;
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e.requestOptions.headers);
      }
      if (e.response != null && e.response?.data != null) {
        throw RequestException.fromJson(e.response?.data);
      } else {
        throw ServerException();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<Response> upload(String url,
      {Map<String, dynamic>? headers,
      required body,
      encoding,
      onSendProgress}) async {
    try {
      dio.options.baseUrl = apiBaseUrl;
      // ignore: avoid_single_cascade_in_expression_statements
      dio..options.baseUrl = apiBaseUrl;
      final response = await dio
          .post(url, data: body, options: Options(headers: headers),
              onSendProgress: (int sent, int total) {
        if (kDebugMode) {
          print("$sent $total");
        }
      });
      return response;
    } on DioException catch (e) {
      if (kDebugMode) {
        print('[API Helper - UPLOAD] Connection Exception => ${e.message}');
      }
      throw RequestException.fromJson({
        "statusCode": e.response?.statusCode,
        "message": e.response?.statusMessage
      });
    }
  }
}

class APIHelperRequestContent {
  static Map<String, dynamic> mapHeader({String token = ''}) {
    return {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };
  }
}
