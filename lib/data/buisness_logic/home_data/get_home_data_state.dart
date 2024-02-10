// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';

part 'get_home_data_state.freezed.dart';

/// Represents the different states of home page data retrieval.
@freezed
class GetHomeDataState<T> with _$GetHomeDataState {
  /// Represents the idle state where no data fetching operation is in progress.
  const factory GetHomeDataState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory GetHomeDataState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory GetHomeDataState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory GetHomeDataState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
