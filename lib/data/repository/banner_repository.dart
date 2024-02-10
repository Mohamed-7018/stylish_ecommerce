// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/api_result/api_result.dart';
import 'package:stylish_ecommerce/data/model/banners/banners_model.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/web_services/get.dart';

/// Repository class responsible for fetching banners data.
class BannerRepository {
  final Dio dio; // Dio instance for making HTTP requests.
  final GetMethod getMethod; // Method for making GET requests.

  /// Constructor for BannerRepository.
  /// [dio]: Dio instance for making HTTP requests.
  /// [getMethod]: Method for making GET requests.
  const BannerRepository({required this.dio, required this.getMethod});

  /// Fetches banner data from the server.
  ///
  /// Returns an [ApiResult] containing [BannersModel] if successful,
  /// or a failure result containing a [NetworkExceptions] if an error occurs.
  Future<ApiResult<BannersModel>> getBanner() async {
    try {
      // Make a GET request to fetch banner data.
      var response = await getMethod.doHttpMethod(
        dio: dio,
        uri: '/banners',
      );

      // Parse the response data into BannersModel.
      BannersModel data = BannersModel.fromJson(response.data);

      // Return success result with the fetched data.
      return ApiResult.success(data);
    } catch (error) {
      // If an error occurs during the request, return a failure result with the appropriate exception.
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
