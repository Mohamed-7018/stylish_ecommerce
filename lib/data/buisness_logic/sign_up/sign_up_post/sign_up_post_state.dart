// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';

part 'sign_up_post_state.freezed.dart';


@freezed
class SignUpPostState<T> with _$SignUpPostState {
  /// Represents the idle state where no data fetching operation is in progress.
  const factory SignUpPostState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory SignUpPostState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory SignUpPostState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory SignUpPostState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
