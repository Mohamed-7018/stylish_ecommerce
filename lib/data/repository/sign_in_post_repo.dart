// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/api_result/api_result.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/model/user_api/sign_in/sign_in_request_body.dart';
import 'package:stylish_ecommerce/data/model/user_api/sign_in/sign_in_response_model.dart';
import 'package:stylish_ecommerce/data/web_services/post.dart';

/// Repository for handling login-related API requests using the POST method.
class SignInPostRepository {
  /// An instance of the [PostMethod] class to perform HTTP POST requests.
  final PostMethod postMethod;

  /// An instance of the Dio client for making network requests.
  final Dio dio;

  /// Constructs a [SignInPostRepository] with the specified [postMethod] and [dio].
  SignInPostRepository({required this.postMethod, required this.dio});

  /// Attempts to authenticate a user by making a login API request.
  ///
  /// Throws a [NetworkException] if the request fails.
  /// Returns an [ApiResult] containing [LoginSuccessResponeModel] on success.
  Future<ApiResult<SignInResponeModel>> login({
    required SignInRequestBody loginRequestBody,
  }) async {
    try {
      // Make a POST request to the "/login" endpoint with the provided login request body.
      var response = await postMethod.doHttpMethod(
        dio: dio,
        uri: "/login",
        data: loginRequestBody.toJson(),
      );

      // Parse the response data into a LoginSuccessResponeModel instance.
      SignInResponeModel data = SignInResponeModel.fromJson(response.data);

      // Return a successful API result with the parsed data.
      return ApiResult.success(data);
    } catch (error) {
      // Return a failure API result with a NetworkException if an error occurs.
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
