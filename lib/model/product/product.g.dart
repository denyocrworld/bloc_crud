// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int?,
      photo: json['photo'] as String?,
      productName: json['product_name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'product_name': instance.productName,
      'price': instance.price,
      'description': instance.description,
    };
