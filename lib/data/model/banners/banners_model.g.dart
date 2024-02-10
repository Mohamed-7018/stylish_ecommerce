// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannersModel _$BannersModelFromJson(Map<String, dynamic> json) => BannersModel(
      status: json['status'] as bool?,
      message: json['message'],
    );

Map<String, dynamic> _$BannersModelToJson(BannersModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      category: json['category'],
      id: json['id'] as int?,
      image: json['image'] as String?,
      product: json['product'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'category': instance.category,
      'product': instance.product,
    };
