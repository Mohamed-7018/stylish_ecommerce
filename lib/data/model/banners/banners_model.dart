import 'package:json_annotation/json_annotation.dart';

part 'banners_model.g.dart';

@JsonSerializable()
class BannersModel {
  bool? status;
  dynamic message;
  List<Data> ?  data;

  BannersModel({this.status, this.message, this.data});

  /// Creates an instance of [BannersModel] from a JSON map.
  factory BannersModel.fromJson(Map<String, dynamic> json) =>
      _$BannersModelFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$BannersModelToJson(this);
}

@JsonSerializable()
class Data {
  int? id;
  String? image;
  dynamic category;
  dynamic product;

  Data({this.category, this.id, this.image, this.product});

  /// Creates an instance of [BannersModel] from a JSON map.
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
