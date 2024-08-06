// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';

part 'get_banners_state.freezed.dart';

/// Represents the different states of Banners data retrieval.
@freezed
class GetBannersState<T> with _$GetBannersState {

  /// Represents the idle state where no data fetching operation is in progress.
  const factory GetBannersState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory GetBannersState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory GetBannersState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory GetBannersState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
