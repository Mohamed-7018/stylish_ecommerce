// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'sign_in_request_body.g.dart';

/// Represents the request body for a user login.
@JsonSerializable()
class SignInRequestBody {
  /// The email address of the user.
  final String email;

  /// The password associated with the user's account.
  final String password;

  /// Creates a new instance of [SignInRequestBody].
  ///
  /// The [email] and [password] parameters are required for authentication.
  SignInRequestBody({required this.email, required this.password});

  /// Creates an instance of [SignInRequestBody] from a JSON map.
  factory SignInRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestBodyFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$SignInRequestBodyToJson(this);
}
