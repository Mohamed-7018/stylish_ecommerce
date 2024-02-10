// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) =>
    HomeDataModel(
      status: json['status'] as bool?,
      message: json['message'],
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeDataModelToJson(HomeDataModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => Banners.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
      ad: json['ad'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'banners': instance.banners,
      'products': instance.products,
      'ad': instance.ad,
    };

Banners _$BannersFromJson(Map<String, dynamic> json) => Banners(
      id: json['id'] as int?,
      image: json['image'] as String?,
      category: json['category'],
      product: json['product'],
    );

Map<String, dynamic> _$BannersToJson(Banners instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'category': instance.category,
      'product': instance.product,
    };

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      oldPrice: (json['old_price'] as num?)?.toDouble(),
      discount: json['discount'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      inFavorites: json['inFavorites'] as bool?,
      inCart: json['inCart'] as bool?,
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'discount': instance.discount,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'images': instance.images,
      'inFavorites': instance.inFavorites,
      'inCart': instance.inCart,
    };
