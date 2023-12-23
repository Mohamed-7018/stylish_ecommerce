// Importing the necessary packages
import 'package:dio/dio.dart'; // Dio is a powerful HTTP client for Dart

// Importing PrettyDioLogger for logging HTTP requests and responses in a readable format

// 📦 Package imports:
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// Function to create and set up a Dio instance with PrettyDioLogger
Dio createAndSetupDio() {
  /// Create a Dio instance with customized configurations for making HTTP requests.
  Dio dio = Dio();

  // Configure Dio options
  dio
    ..options.baseUrl = 'https://efood-admin.6amtech.com'
    ..options.connectTimeout = const Duration(seconds: 30)
    ..options.receiveTimeout = const Duration(seconds: 30)
    ..httpClientAdapter
    ..options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'branch-id': '1',
      'X-localization': 'en',
      'Authorization': 'Bearer',
    };

  // Adding PrettyDioLogger interceptor for logging requests and responses
  dio.interceptors.add(PrettyDioLogger());

  // Adding PrettyDioLogger with specific options
  dio.interceptors.add(PrettyDioLogger(
    responseBody: true, // Log response body
    error: true, // Log errors
    requestHeader: true, // Do not log request headers
    responseHeader: true, // Do not log response headers
    request: true, // Log request details
    requestBody: true, // Log request body
  ));

  // Returning the configured Dio instance
  return dio;
}
