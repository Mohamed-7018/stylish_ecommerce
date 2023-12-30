// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';

part 'api_result.freezed.dart';

/// Represents the result of an API operation, encapsulating either a successful
/// response with data of type [T], or a failure with [NetworkExceptions].
///
/// This class is designed to work with the `freezed_annotation` package to
/// generate boilerplate code for freezed unions.
///
/// Example:
/// ```dart
/// final result = ApiResult<int>.success(42);
/// ```
@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  /// Represents a successful API response with data of type [T].
  ///
  /// Example:
  /// ```dart
  /// final result = ApiResult<int>.success(42);
  /// ```
  const factory ApiResult.success(T data) = Success<T>;

  /// Represents a failed API response, and includes [NetworkExceptions] to
  /// provide information about the failure.
  ///
  /// Example:
  /// ```dart
  /// final result = ApiResult<int>.failure(NetworkExceptions("Connection error"));
  /// ```
  const factory ApiResult.failure(NetworkExceptions networkExceptions) =
      Failure<T>;
}
