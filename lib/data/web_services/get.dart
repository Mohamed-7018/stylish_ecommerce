// 🎯 Dart imports:
import 'dart:io';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/web_services/http_request.dart';

/// Concrete implementation of the [HttpMethod] abstract class for performing HTTP GET requests.
class GetMethod implements HttpMethod {
  /// Executes an HTTP GET request.
  ///
  /// Takes [dio] as the Dio instance, [uri] as the endpoint URI,
  /// [data] as the request data (if any), [queryParameters] as query parameters,
  /// [cancelToken] for cancelling the request, [onSendProgress] for tracking send progress,
  /// and [onReceiveProgress] for tracking receive progress.
  ///
  /// Returns a [Future] containing the Dio [Response].
  @override
  Future<Response> doHttpMethod({
    required Dio dio,
    required String uri,
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await dio.get(
        uri,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on SocketException catch (e) {
      // Handle SocketException and rethrow with a meaningful message
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      // Handle FormatException and rethrow with a meaningful message
      throw const FormatException("Unable to process the data");
    } catch (e) {
      // Rethrow other exceptions
      rethrow;
    }
  }
}
