// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'categories_model.g.dart';

/// Represents the request body for a caegory.
@JsonSerializable()
class CategoriesModel {
  bool? status;
  dynamic message;
  Data? data;

  CategoriesModel({this.status, this.message, this.data});

  /// Creates an instance of [CategoriesModel] from a JSON map.
  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$CategoriesModelToJson(this);
}

/// Represents the request body for a Error.
@JsonSerializable()
class Data {
  int? currentPage;
  List<CategoryData>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  Data({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  /// Creates an instance of [Data] from a JSON map.
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class CategoryData {
  int? id;
  String? name;
  String? image;

  CategoryData({this.id, this.name, this.image});

  /// Creates an instance of [Data] from a JSON map.
  factory CategoryData.fromJson(Map<String, dynamic> json) => _$CategoryDataFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$CategoryDataToJson(this);

}
