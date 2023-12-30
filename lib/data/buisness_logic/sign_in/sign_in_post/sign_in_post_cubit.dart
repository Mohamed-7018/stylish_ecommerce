// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_post/sign_in_post_state.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/model/user_api/sign_in/sign_in_request_body.dart';
import 'package:stylish_ecommerce/data/model/user_api/sign_in/sign_in_response_model.dart';
import 'package:stylish_ecommerce/data/repository/sign_in_post_repo.dart';

/// A BLoC (Business Logic Component) responsible for handling the business logic
/// related to the sign-in process.
class SignInPostCubit extends Cubit<SignInPostState> {
  /// The repository responsible for making API calls related to the sign-in process.
  final SignInPostRepository loginPostRepository;

  /// Constructor for the SignInPostCubit.
  SignInPostCubit(this.loginPostRepository) : super(const Idle());

  /// Initiates the sign-in process with the provided [loginRequestBody].
  ///
  /// Depending on the API response, it emits either a [SignInResponeModel]
  /// in case of success or a [NetworkExceptions] in case of failure.
  void login({required SignInRequestBody loginRequestBody}) async {
    emit(const SignInPostState.loading());
    try {
      var data =
          await loginPostRepository.login(loginRequestBody: loginRequestBody);

      data.when(
        success: (SignInResponeModel signInResponeModel) {
          if (signInResponeModel.status == false) {
            // Display an error dialog with the provided message.
            GlobalAppFunctions.setupErrorState(signInResponeModel.message!);
          } else {
            emit(SignInPostState.success(signInResponeModel));
          }
        },
        failure: (NetworkExceptions networkExceptions) {
          emit(SignInPostState.error(networkExceptions));
        },
      );
    } catch (error) {
      // Handle other types of errors if needed.
      emit(SignInPostState.error(NetworkExceptions.getDioException(error)));
    }
  }
}
