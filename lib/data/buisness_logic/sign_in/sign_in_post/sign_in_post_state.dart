import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';

part 'sign_in_post_state.freezed.dart';

@freezed
class SignInPostState<T> with _$SignInPostState {
  /// Represents the idle state where no data fetching operation is in progress.
  const factory SignInPostState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory SignInPostState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory SignInPostState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory SignInPostState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
