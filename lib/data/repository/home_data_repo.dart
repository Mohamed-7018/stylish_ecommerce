import 'package:dio/dio.dart';
import 'package:stylish_ecommerce/data/model/api_result/api_result.dart';
import 'package:stylish_ecommerce/data/model/home_data/home_data_model.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/web_services/get.dart';

/// Repository class responsible for fetching home data from the API.
class HomeDataRepository {
  final Dio dio;
  final GetMethod getMethod;

  /// Constructor for HomeDataRepository.
  ///
  /// [dio]: Instance of Dio for making HTTP requests.
  /// [getMethod]: Instance of GetMethod for performing HTTP GET requests.
  HomeDataRepository({required this.dio, required this.getMethod});

  /// Fetches home data from the API.
  ///
  /// Returns [ApiResult] containing [HomeDataModel] if successful,
  /// otherwise returns an [ApiResult] with failure status and [NetworkExceptions] error.
  Future<ApiResult<HomeDataModel>> getHomeData() async {
    try {
      // Make a GET request to fetch home page data.
      var response = await getMethod.doHttpMethod(
        dio: dio,
        uri: '/home',
      );

      // Parse the response data into HomeDataModel.
      HomeDataModel data = HomeDataModel.fromJson(response.data);

      // Return success result with the fetched data.
      return ApiResult.success(data);
    } catch (error) {
      // If an error occurs during the request, return a failure result with the appropriate exception.
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
