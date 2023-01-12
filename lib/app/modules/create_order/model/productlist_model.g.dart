// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) =>
    ProductListResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      productListResult: json['result'] == null
          ? null
          : ProductListResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductListResponseToJson(
        ProductListResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.productListResult,
    };

ProductListResult _$ProductListResultFromJson(Map<String, dynamic> json) =>
    ProductListResult(
      status: json['status'] as bool?,
      productCount: json['productCount'] as int?,
      category: json['category'] as String?,
      childrenCategories: json['childrenCategories'] as List<dynamic>?,
      message: json['message'] as String?,
      productList: (json['product_list'] as List<dynamic>?)
          ?.map((e) => ProductList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductListResultToJson(ProductListResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'productCount': instance.productCount,
      'category': instance.category,
      'childrenCategories': instance.childrenCategories,
      'message': instance.message,
      'product_list': instance.productList,
    };

ProductList _$ProductListFromJson(Map<String, dynamic> json) => ProductList(
      imageUrl: json['imageUrl'] as List<dynamic>?,
      qtyAvailable: (json['qtyAvailable'] as num?)?.toDouble(),
      mlLang: json['mlLang'] as String?,
      available: json['available'] as String?,
      id: json['id'] as int?,
      productTmplId: json['productTmplId'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      retailPrice: (json['retail_price'] as num?)?.toDouble(),
      departmentPrice: (json['department_price'] as num?)?.toDouble(),
      wholesalePrice: (json['wholesale_price'] as num?)?.toDouble(),
      supermarketPrice: (json['supermarket_price'] as num?)?.toDouble(),
      enLang: json['enLang'] as String?,
      unit: json['unit'] as String?,
      productId: json['productId'] as int?,
      productImages: json['productImages'] as List<dynamic>?,
      offerName: json['offer_name'] as String?,
    );

Map<String, dynamic> _$ProductListToJson(ProductList instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'qtyAvailable': instance.qtyAvailable,
      'mlLang': instance.mlLang,
      'available': instance.available,
      'id': instance.id,
      'productTmplId': instance.productTmplId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'retail_price': instance.retailPrice,
      'offer_name': instance.offerName,
      'department_price': instance.departmentPrice,
      'wholesale_price': instance.wholesalePrice,
      'supermarket_price': instance.supermarketPrice,
      'enLang': instance.enLang,
      'unit': instance.unit,
      'productId': instance.productId,
      'productImages': instance.productImages,
    };
