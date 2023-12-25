// 📦 Package imports:
import 'package:dio/dio.dart';

/// Abstract class representing an HTTP method.
abstract class HttpMethod {
  /// Executes an HTTP method.
  ///
  /// Takes [dio] as the Dio instance, [uri] as the endpoint URI,
  /// [data] as the request data (if any), [queryParameters] as query parameters,
  /// [cancelToken] for cancelling the request, [onSendProgress] for tracking send progress,
  /// and [onReceiveProgress] for tracking receive progress.
  ///
  /// Returns a [Future] containing the Dio [Response].
  Future<Response> doHttpMethod({
    required Dio dio,
    required String uri,
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });
}
