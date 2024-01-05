import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_ecommerce/core/helper/navigator_helper.dart';

import 'package:stylish_ecommerce/data/buisness_logic/sign_up/sign_up_vm/sign_up_vm_state.dart';

/// Cubit responsible for managing the state and business logic
/// related to the Sign Up view model.
class SignUpViewModelCubit extends Cubit<SignUpViewModelState> {
  /// Constructor for the [SignUpViewModelCubit] class.
  SignUpViewModelCubit() : super(SignUpViewModelStateIntial());

  /// Static method to get an instance of [SignUpViewModelCubit] using a [BuildContext].
  static SignUpViewModelCubit get(BuildContext context) =>
      BlocProvider.of<SignUpViewModelCubit>(context);

  /// Controller for the name text field.
  final TextEditingController _nameFieldController = TextEditingController();

  /// Controller for the phone text field.
  final TextEditingController _phoneFieldController = TextEditingController();

  /// Controller for the email text field.
  final TextEditingController _emailFieldController = TextEditingController();

  /// Controller for the password text field.
  final TextEditingController _passwordFieldController =
      TextEditingController();

  /// Focus node for the name text field.
  final FocusNode _nameFocusNode = FocusNode();

  /// Focus node for the phone text field.
  final FocusNode _phoneFocusNode = FocusNode();

  /// Focus node for the email text field.
  final FocusNode _emailFocusNode = FocusNode();

  /// Focus node for the password text field.
  final FocusNode _passwordFocusNode = FocusNode();

  /// Method to handle name editing control, moving the focus to the phone field.
  void nameEditingControl() {
    final FocusNode focusNode = _phoneFocusNode;
    BuildContext context = NavigatorHelper.navigatorKey.currentContext!;
    FocusScope.of(context).requestFocus(focusNode);
  }

  /// Method to handle phone editing control, moving the focus to the email field.
  void phoneEditingControl() {
    final FocusNode focusNode = _emailFocusNode;
    BuildContext context = NavigatorHelper.navigatorKey.currentContext!;
    FocusScope.of(context).requestFocus(focusNode);
  }

  /// Method to handle email editing control, moving the focus to the password field.
  void emailEditingControl() {
    final FocusNode focusNode = _passwordFocusNode;
    BuildContext context = NavigatorHelper.navigatorKey.currentContext!;
    FocusScope.of(context).requestFocus(focusNode);
  }


  /// Getter for the name field controller.
  TextEditingController get nameFieldController => _nameFieldController;

  /// Getter for the phone text field controller.
  TextEditingController get phoneFieldController => _phoneFieldController;

  /// Getter for the email text field controller.
  TextEditingController get emailFieldController => _emailFieldController;

  /// Getter for the password text field controller.
  TextEditingController get passwordFieldController => _passwordFieldController;

  /// Getter for the name focus node.
  FocusNode get nameFocusNode => _nameFocusNode;

  /// Getter for the phone focus node.
  FocusNode get phoneFocusNode => _phoneFocusNode;

  /// Getter for the email focus node.
  FocusNode get emailFocusNode => _emailFocusNode;

  /// Getter for the password focus node.
  FocusNode get passwordFocusNode => _passwordFocusNode;

  /// GlobalKey for the Sign In form.
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// Flag to track the visibility state of the password.
  bool _isPasswordHidden = false;

  /// Getter for the password visibility flag.
  bool get isPasswordHidden => _isPasswordHidden;

  /// Method to toggle the visibility state of the password.
  void togglePasswordState() {
    _isPasswordHidden = !_isPasswordHidden;
    emit(SignUpTogglePasswordState());
  }
}
