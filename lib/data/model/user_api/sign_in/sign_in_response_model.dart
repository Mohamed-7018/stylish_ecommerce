import 'package:json_annotation/json_annotation.dart';

part 'sign_in_response_model.g.dart';

/// Represents the response model for a successful login.
@JsonSerializable()
class SignInResponeModel {
  /// The status of the login operation.
  bool? status;

  /// A message associated with the login response.
  String? message;

  /// Data associated with the user after a successful login.
  Data? data;

  /// Creates a new instance of [SignInResponeModel].
  ///
  /// The [status], [message], and [data] parameters are optional.
  SignInResponeModel({this.status, this.message, this.data});

  /// Creates an instance of [SignInResponeModel] from a JSON map.
  factory SignInResponeModel.fromJson(Map<String, dynamic> json) =>
      _$SignInResponeModelFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$SignInResponeModelToJson(this);
}

/// Represents additional user data associated with a successful login.
@JsonSerializable()
class Data {
  /// The user's unique identifier.
  int? id;

  /// The name of the user.
  String? name;

  /// The email address of the user.
  String? email;

  /// The phone number associated with the user's account.
  String? phone;

  /// The URL to the user's profile image.
  String? image;

  /// The number of points associated with the user's account.
  int? points;

  /// The credit amount associated with the user's account.
  int? credit;

  /// The authentication token received after a successful login.
  String? token;

  /// Creates a new instance of [Data].
  ///
  /// The parameters represent various user-related data.
  Data({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.points,
    this.credit,
    this.token,
  });

  /// Creates an instance of [Data] from a JSON map.
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
