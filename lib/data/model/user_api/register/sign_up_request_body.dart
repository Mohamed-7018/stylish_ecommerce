// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

/// Represents the request body for a user login.
@JsonSerializable()
class SignUpRequestBody {
  
   /// The name associated with the user's account.
  final String name;

  /// The phone number associated with the user's account.
  final String phone;

  /// The email address of the user.
  final String email;

  /// The password associated with the user's account.
  final String password;
 
 
  /// Creates a new instance of [SignUpRequestBody].
  ///
  /// The [name],[phone],[email] and[password] parameters are required for authentication.
  SignUpRequestBody({required this.name, required this.phone, required this.email, required this.password});

  /// Creates an instance of [SignInRequestBody] from a JSON map.
  factory SignUpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestBodyFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
