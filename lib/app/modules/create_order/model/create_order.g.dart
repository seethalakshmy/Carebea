// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) =>
    CreateOrderResponse(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateOrderResponseToJson(
        CreateOrderResponse instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      orderId: json['order_id'] as int?,
      paymentMethods: (json['payment_methods'] as List<dynamic>?)
          ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentTerms: (json['payment_terms'] as List<dynamic>?)
          ?.map((e) => PaymentTerms.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountTax: (json['amount_tax'] as num?)?.toDouble(),
      amountTotal: (json['amount_total'] as num?)?.toDouble(),
      amountUntaxed: (json['amount_untaxed'] as num?)?.toDouble(),
      productTotal: (json['product_total'] as num?)?.toDouble(),
      offerProducts: (json['offer_product_details'] as List<dynamic>?)
          ?.map((e) => OfferProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'order_id': instance.orderId,
      'payment_methods': instance.paymentMethods,
      'payment_terms': instance.paymentTerms,
      'offer_product_details': instance.offerProducts,
      'amount_total': instance.amountTotal,
      'amount_untaxed': instance.amountUntaxed,
      'amount_tax': instance.amountTax,
      'product_total': instance.productTotal,
    };

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };

OfferProduct _$OfferProductFromJson(Map<String, dynamic> json) => OfferProduct(
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      productUomQty: json['product_uom_qty'] as int?,
      discount: json['discount'] as int?,
      giftProduct: json['gift_product'] as bool?,
      offerName: json['offer_name'] as String?,
      offerQuantity: json['offer_quantity'] as int?,
    );

Map<String, dynamic> _$OfferProductToJson(OfferProduct instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_uom_qty': instance.productUomQty,
      'discount': instance.discount,
      'gift_product': instance.giftProduct,
      'offer_name': instance.offerName,
      'offer_quantity': instance.offerQuantity,
    };

PaymentTerms _$PaymentTermsFromJson(Map<String, dynamic> json) => PaymentTerms(
      id: json['id'] as int?,
      name: json['name'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$PaymentTermsToJson(PaymentTerms instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'note': instance.note,
    };
