// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/api_result/api_result.dart';
import 'package:stylish_ecommerce/data/model/caegories/categories_model.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/web_services/get.dart';

/// Repository for fetching categories data.
class CategoriesRepository {
  /// Instance of GetMethod to perform HTTP GET requests.
  final GetMethod getMethod;

  /// Instance of Dio for making HTTP requests.
  final Dio dio;

  /// Constructor for CategoriesRepository.
  CategoriesRepository({required this.dio, required this.getMethod});

  /// Fetches categories data from the API.
  ///
  /// Returns [ApiResult] with [CategoriesModel] if successful,
  /// otherwise throws a [NetworkException] if the request fails.
  Future<ApiResult<CategoriesModel>> getCategories() async {
    try {
      var response = await getMethod.doHttpMethod(
        dio: dio,
        uri: '/categories',
      );

      // Parse response data into CategoriesModel
      CategoriesModel data = CategoriesModel.fromJson(response.data);

      // Return success result with data
      return ApiResult.success(data);
    } catch (error) {
      // Return failure result with network exception
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
