// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';

part 'get_categories_state.freezed.dart';

/// Represents the different states of category data retrieval.
@freezed
class GetCategoriesState<T> with _$GetCategoriesState {
  /// Represents the idle state where no data fetching operation is in progress.
  const factory GetCategoriesState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory GetCategoriesState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory GetCategoriesState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory GetCategoriesState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
