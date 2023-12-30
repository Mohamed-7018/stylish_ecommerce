// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/web_services/http_request.dart';

/// Concrete implementation of the [HttpMethod] abstract class for performing HTTP DELETE requests.
class DeleteMethod implements HttpMethod {
  /// Executes an HTTP DELETE request.
  ///
  /// Takes [dio] as the Dio instance, [uri] as the endpoint URI,
  /// [data] as the request data (if any), [queryParameters] as query parameters,
  /// [cancelToken] for cancelling the request.
  ///
  /// Returns a [Future] containing the Dio [Response].
  @override
  Future<Response> doHttpMethod(
      {required Dio dio,
      required String uri,
      data,
      Map<String, dynamic>? queryParameters,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      var response = await dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );
      return response;
    } on FormatException catch (_) {
      // Handle FormatException and rethrow with a meaningful message
      throw const FormatException("Unable to process the data");
    } catch (e) {
      // Rethrow other exceptions
      rethrow;
    }
  }
}
