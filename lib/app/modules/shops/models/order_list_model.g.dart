// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderListResponse _$OrderListResponseFromJson(Map<String, dynamic> json) =>
    OrderListResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      orderListResult: json['result'] == null
          ? null
          : OrderListResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderListResponseToJson(OrderListResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.orderListResult,
    };

OrderListResult _$OrderListResultFromJson(Map<String, dynamic> json) =>
    OrderListResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => History.fromJson(e as Map<String, dynamic>))
          .toList(),
      filterVals: json['filterVals'] == null
          ? null
          : FilterVals.fromJson(json['filterVals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderListResultToJson(OrderListResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'history': instance.history,
      'filterVals': instance.filterVals,
    };

FilterVals _$FilterValsFromJson(Map<String, dynamic> json) => FilterVals(
      date: (json['date'] as List<dynamic>?)
          ?.map((e) => Date.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilterValsToJson(FilterVals instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

Date _$DateFromJson(Map<String, dynamic> json) => Date(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$DateToJson(Date instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

History _$HistoryFromJson(Map<String, dynamic> json) => History(
      id: json['id'] as int?,
      name: json['name'] as String?,
      amountUntaxed: json['amountUntaxed'] as int?,
      amountTotal: (json['amountTotal'] as num?)?.toDouble(),
      totalLines: json['totalLines'] as int?,
      orderId: json['orderId'] as int?,
      imageUrlList: json['imageUrlList'] as List<dynamic>?,
      dateOrder: json['dateOrder'] == null
          ? null
          : DateTime.parse(json['dateOrder'] as String),
      status: json['status'] as String?,
      userAddress: json['userAddress'] as String?,
      amountTax: (json['amountTax'] as num?)?.toDouble(),
      productList: (json['productList'] as List<dynamic>?)
          ?.map((e) => ProductList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HistoryToJson(History instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amountUntaxed': instance.amountUntaxed,
      'amountTotal': instance.amountTotal,
      'totalLines': instance.totalLines,
      'orderId': instance.orderId,
      'imageUrlList': instance.imageUrlList,
      'dateOrder': instance.dateOrder?.toIso8601String(),
      'status': instance.status,
      'userAddress': instance.userAddress,
      'amountTax': instance.amountTax,
      'productList': instance.productList,
    };

ProductList _$ProductListFromJson(Map<String, dynamic> json) => ProductList(
      imageUrl: json['imageUrl'] as List<dynamic>?,
      qtyAvailable: json['qtyAvailable'] as int?,
      mlLang: json['mlLang'] as String?,
      available: json['available'] as String?,
      id: json['id'] as int?,
      productTmplId: json['productTmplId'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      retailPrice: json['retailPrice'] as int?,
      departmentPrice: json['departmentPrice'] as int?,
      wholesalePrice: json['wholesalePrice'] as int?,
      supermarketPrice: json['supermarketPrice'] as int?,
      enLang: json['enLang'] as String?,
      unit: json['unit'] as String?,
      productId: json['productId'] as int?,
      productImages: json['productImages'] as List<dynamic>?,
      productUomQty: json['productUomQty'] as int?,
      productListEnLang: json['productListEnLang'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      dateOrder: json['dateOrder'] == null
          ? null
          : DateTime.parse(json['dateOrder'] as String),
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
      'retailPrice': instance.retailPrice,
      'departmentPrice': instance.departmentPrice,
      'wholesalePrice': instance.wholesalePrice,
      'supermarketPrice': instance.supermarketPrice,
      'enLang': instance.enLang,
      'unit': instance.unit,
      'productId': instance.productId,
      'productImages': instance.productImages,
      'productUomQty': instance.productUomQty,
      'productListEnLang': instance.productListEnLang,
      'total': instance.total,
      'dateOrder': instance.dateOrder?.toIso8601String(),
    };
