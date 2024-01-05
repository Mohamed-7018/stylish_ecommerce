// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/api_result/api_result.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/model/user_api/register/sign_up_request_body.dart';
import 'package:stylish_ecommerce/data/model/user_api/register/sign_up_response_model.dart';
import 'package:stylish_ecommerce/data/web_services/post.dart';

/// Repository for handling signup-related API requests using the POST method.
class SignUpPostRepository {
  /// An instance of the [PostMethod] class to perform HTTP POST requests.
  final PostMethod postMethod;

  /// An instance of the Dio client for making network requests.
  final Dio dio;

  /// Constructs a [SignUpPostRepository] with the specified [postMethod] and [dio].
  SignUpPostRepository({required this.postMethod, required this.dio});

  /// Attempts to authenticate a user by making a signup API request.
  ///
  /// Throws a [NetworkException] if the request fails.
  /// Returns an [ApiResult] containing [SignUpResponeModel] on success.
  Future<ApiResult<SignUpResponeModel>> signUp({
    required SignUpRequestBody signUpRequestBody,
  }) async {
    try {
      // Make a POST request to the "/register" endpoint with the provided login request body.
      var response = await postMethod.doHttpMethod(
        dio: dio,
        uri: "/register",
        data: signUpRequestBody.toJson(),
      );

      // Parse the response data into a [SignUpResponeModel] instance.
      SignUpResponeModel data = SignUpResponeModel.fromJson(response.data);

      // Return a successful API result with the parsed data.
      return ApiResult.success(data);
    } catch (error) {
      // Return a failure API result with a NetworkException if an error occurs.
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
