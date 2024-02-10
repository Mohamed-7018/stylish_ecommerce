import 'package:json_annotation/json_annotation.dart';

part 'home_data_model.g.dart';


/// Model class representing the home data received from the API.
@JsonSerializable()
class HomeDataModel {
  bool? status;
  dynamic message;
  Data? data;

  HomeDataModel({this.status, this.message, this.data});

  /// Creates an instance of [HomeDataModel] from a JSON map.
  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$HomeDataModelToJson(this);
}

/// Model class representing the data section in the home data.
@JsonSerializable()
class Data {
  List<Banners>? banners;
  List<Products>? products;
  String? ad;

  Data({this.banners, this.products, this.ad});

  /// Creates an instance of [Data] from a JSON map.
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

/// Model class representing a banner.
@JsonSerializable()
class Banners {
  int? id;
  String? image;
  dynamic category;
  dynamic product;
  Banners({this.id, this.image, this.category, this.product});

  /// Creates an instance of [Banners] from a JSON map.
  factory Banners.fromJson(Map<String, dynamic> json) =>
      _$BannersFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$BannersToJson(this);
}

/// Model class representing a product.
@JsonSerializable()
class Products {
  int? id;
  double? price;
  double? oldPrice;
  int? discount;
  String? image;
  String? name;
  String? description;
  List<String>? images;
  bool? inFavorites;
  bool? inCart;

  Products({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.images,
    this.inFavorites,
    this.inCart,
  });

  /// Creates an instance of [Products] from a JSON map.
  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  /// Converts this object into a JSON-compatible map.
  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}
