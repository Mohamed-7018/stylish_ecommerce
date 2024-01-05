/// A utility class containing regular expressions for common validation tasks.
mixin AppRegex {
  /// Checks if the provided [email] is a valid email address.
  ///
  /// Returns `true` if the email is valid, otherwise `false`.
  static bool isEmailValid(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  /// Checks if the provided [text] is empty or not.
  static bool isEmpty(String text) {
    return text.isEmpty;
  }

  /// Checks if the provided [password] meets the criteria for a strong password.
  ///
  /// Returns `true` if the password is strong, otherwise `false`.
  /// A strong password should have at least 8 characters, including at least
  /// one lowercase letter, one uppercase letter, one digit, and one special character.
  static bool isPasswordValid(String password) {
    return RegExp(
            r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        .hasMatch(password);
  }

  /// Checks if the provided [password] contains at least one lowercase letter.
  static bool hasLowerCase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }

  /// Checks if the provided [password] contains at least one uppercase letter.
  static bool hasUpperCase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }

  /// Checks if the provided [password] contains at least one numeric digit.
  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  /// Checks if the provided [password] contains at least one special character.
  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  /// Checks if the provided [password] meets the minimum length requirement of 8 characters.
  static bool hasMinLength(String password) {
    return RegExp(r'^(?=.{8,})').hasMatch(password);
  }
}
