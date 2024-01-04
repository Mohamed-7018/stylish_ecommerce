// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_post_state.dart';
import 'package:stylish_ecommerce/data/model/network_exception/network_exception.dart';
import 'package:stylish_ecommerce/data/model/user_api/register/sign_up_request_body.dart';
import 'package:stylish_ecommerce/data/model/user_api/register/sign_up_response_model.dart';
import 'package:stylish_ecommerce/data/repository/sign_up_post_repo.dart';

/// A BLoC (Business Logic Component) responsible for handling the business logic
/// related to the sign-up process.
class SignUpPostCubit extends Cubit<SignUpPostState> {
  /// The repository responsible for making API calls related to the sign-up process.
  final SignUpPostRepository signUpPostRepository;

  SignUpPostCubit(this.signUpPostRepository) : super(const Idle());

  /// Initiates the sign-up process with the provided [loginRequestBody].
  ///
  /// Depending on the API response, it emits either a [SignInResponeModel]
  /// in case of success or a [NetworkExceptions] in case of failure.
  void signup({required SignUpRequestBody signUpRequestBody}) async {
    emit(const SignUpPostState.loading());
    try {
      var data = await signUpPostRepository.signUp(
          signUpRequestBody: signUpRequestBody);

      data.when(
        success: (SignUpResponeModel signUpResponeModel) {
          if (signUpResponeModel.status == false) {
            // Display an error dialog with the provided message.
            GlobalAppFunctions.setupErrorState(signUpResponeModel.message!);
          } else {
            emit(SignUpPostState.success(signUpResponeModel));
          }
        },
        failure: (NetworkExceptions networkExceptions) {
          emit(SignUpPostState.error(networkExceptions));
        },
      );
    } catch (error) {
      // Handle other types of errors if needed.
      emit(SignUpPostState.error(NetworkExceptions.getDioException(error)));
    }
  }
}
