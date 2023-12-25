
import 'package:stylish_ecommerce/data/web_services/delete.dart';
import 'package:stylish_ecommerce/data/web_services/get.dart';
import 'package:stylish_ecommerce/data/web_services/post.dart';
import 'package:stylish_ecommerce/data/web_services/put.dart';
import 'package:stylish_ecommerce/data/web_services/http_request.dart';

/// Enum representing different types of HTTP request methods.
enum HttpRequestType {
  get,
  post,
  put,
  delete,
  // You can add more HTTP methods as needed
}

/// Factory class for creating instances of HTTP methods based on [HttpRequestType].
class DioFactory {
  /// Returns an instance of [HttpMethod] based on the provided [httpRequestType].
  ///
  /// The [httpRequestType] parameter specifies the type of HTTP request method.
  /// Returns the corresponding instance of [HttpMethod] based on the provided [httpRequestType].
  static HttpMethod doHttpMethod(HttpRequestType httpRequestType) {
    // Switch statement for creating instances of HTTP methods based on the request type
    switch (httpRequestType) {
      case HttpRequestType.get:
        return GetMethod();
      case HttpRequestType.post:
        return PostMethod();
      case HttpRequestType.delete:
        return DeleteMethod();
      default:
        // By default, return PutMethod (you may want to adjust this based on your requirements)
        return PutMethod();
    }
  }
}
