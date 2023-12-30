import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_ecommerce/core/helper/app_regex.dart';
import 'package:stylish_ecommerce/core/helper/navigator_helper.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_Vm/sign_in_vm_state.dart';

/// Cubit responsible for managing the state and business logic
/// related to the Sign In view model.
class SignInViewModelCubit extends Cubit<SignInViewModelState> with AppRegex {
  /// Constructor for the [SignInViewModelCubit] class.
  SignInViewModelCubit() : super(SignInViewModelStateIntial());

  /// Static method to get an instance of [SignInViewModelCubit] using a [BuildContext].
  static SignInViewModelCubit get(BuildContext context) =>
      BlocProvider.of<SignInViewModelCubit>(context);

  /// Controller for the email text field.
  final TextEditingController _emailFieldController = TextEditingController();

  /// Controller for the password text field.
  final TextEditingController _passwordFieldController = TextEditingController();

  /// Focus node for the email text field.
  final FocusNode _emailFocusNode = FocusNode();

  /// Focus node for the password text field.
  final FocusNode _passwordFocusNode = FocusNode();

  /// Method to handle email editing control, moving the focus to the password field.
  void emailEditingControl() {
    final FocusNode newFocusNode = _passwordFocusNode;
    BuildContext context = NavigatorHelper.navigatorKey.currentContext!;
    FocusScope.of(context).requestFocus(newFocusNode);
  }

  /// Getter for the email text field controller.
  TextEditingController get emailFieldController => _emailFieldController;

  /// Getter for the password text field controller.
  TextEditingController get passwordFieldController => _passwordFieldController;

  /// Getter for the email focus node.
  FocusNode get emailFocusNode => _emailFocusNode;

  /// Getter for the password focus node.
  FocusNode get passwordFocusNode => _passwordFocusNode;

  /// GlobalKey for the Sign In form.
  final formKey = GlobalKey<FormState>();

  /// Flag to track the visibility state of the password.
  bool _isPasswordHidden = false;

  /// Getter for the password visibility flag.
  bool get isPasswordHidden => _isPasswordHidden;

  /// Method to toggle the visibility state of the password.
  void togglePasswordState() {
    _isPasswordHidden = !_isPasswordHidden;
    emit(SignInTogglePasswordState());
  }
}
