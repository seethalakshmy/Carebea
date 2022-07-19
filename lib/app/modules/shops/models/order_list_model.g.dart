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
      amountUntaxed: json['amount_untaxed'] as int?,
      amountTotal: (json['amount_total'] as num?)?.toDouble(),
      totalLines: json['total_lines'] as int?,
      orderId: json['order_id'] as int?,
      imageUrlList: json['image_url_list'] as List<dynamic>?,
      dateOrder: json['date_order'] == null
          ? null
          : DateTime.parse(json['date_order'] as String),
      status: json['status'] as String?,
      userAddress: json['user_address'] as String?,
      amountTax: (json['amount_tax'] as num?)?.toDouble(),
      productList: (json['product_list'] as List<dynamic>?)
          ?.map((e) => ProductList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HistoryToJson(History instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount_untaxed': instance.amountUntaxed,
      'amount_total': instance.amountTotal,
      'total_lines': instance.totalLines,
      'order_id': instance.orderId,
      'image_url_list': instance.imageUrlList,
      'date_order': instance.dateOrder?.toIso8601String(),
      'status': instance.status,
      'user_address': instance.userAddress,
      'amount_tax': instance.amountTax,
      'product_list': instance.productList,
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
      retailPrice: json['retail_price'] as int?,
      departmentPrice: json['department_price'] as int?,
      wholesalePrice: json['wholesale_price'] as int?,
      supermarketPrice: json['supermarket_price'] as int?,
      enLang: json['enLang'] as String?,
      unit: json['unit'] as String?,
      productId: json['productId'] as int?,
      productImages: json['productImages'] as List<dynamic>?,
      productUomQty: json['product_uom_qty'] as int?,
      productListEnLang: json['en_lang'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      dateOrder: json['date_order'] == null
          ? null
          : DateTime.parse(json['date_order'] as String),
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
      'department_price': instance.departmentPrice,
      'wholesale_price': instance.wholesalePrice,
      'supermarket_price': instance.supermarketPrice,
      'enLang': instance.enLang,
      'unit': instance.unit,
      'productId': instance.productId,
      'productImages': instance.productImages,
      'product_uom_qty': instance.productUomQty,
      'en_lang': instance.productListEnLang,
      'total': instance.total,
      'date_order': instance.dateOrder?.toIso8601String(),
    };
