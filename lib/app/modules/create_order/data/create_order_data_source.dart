import 'dart:convert';

import 'package:carebea/app/core/services/api_service.dart';
import 'package:carebea/app/modules/create_order/model/confirm_order.dart';
import 'package:carebea/app/modules/create_order/model/create_order.dart';

import '../model/productlist_model.dart';

class CreateorderDataSource {
  final ApiService _apiService = ApiService();

  Future<CreateOrderResponse> createOrder(int salesPersonId, int shopId, Map<int, int> products, int? orderId) async {
    var _products = [];
    products.forEach((key, value) {
      _products.add({"product_id": key, "qty": value});
    });
    var body = {
      "sales_person_id": salesPersonId,
      "shop_id": shopId,
      "products": _products,
    };
    if (orderId != null) {
      body.addAll({"order_id": orderId});
    }

    var res = await _apiService.post("create-order", body);

    if (res.statusCode == 200) {
      return CreateOrderResponse.fromJson(json.decode(res.body));
    }
    return CreateOrderResponse(result: Result(status: false));
  }

  ///ProductLIst

  Future<ProductListResponse> productList() async {
    var response = await _apiService.post(
      'list-products',
      {},
    );
    if (response.statusCode == 200) {
      return ProductListResponse.fromJson(json.decode(response.body));
    } else {
      return ProductListResponse(productListResult: ProductListResult(status: false));
    }
  }

  Future<ProductListResponse> searchProductList(String query) async {
    var response = await _apiService.post(
      'list-products',
      {"name": query},
    );
    if (response.statusCode == 200) {
      return ProductListResponse.fromJson(json.decode(response.body));
    } else {
      return ProductListResponse(productListResult: ProductListResult(status: false));
    }
  }

  Future<ConfirmOrderResponse> confirmOrder(
    int salesPersonId,
    int orderId,
    String paymentMethod,
    String? comment,
  ) async {
    var res = await _apiService.post(
      "order-confirm",
      {
        "sales_person_id": salesPersonId,
        "order_id": orderId,
        "payment_method": paymentMethod,
        "comment": comment,
      },
    );

    if (res.statusCode == 200) {
      return ConfirmOrderResponse.fromJson(json.decode(res.body));
    }

    return ConfirmOrderResponse(result: ConfirmOrderResult.fromJson(json.decode(res.body)));
  }

  Future<bool> deleteOrders(int shopId, int userId) async {
    try {
      var res = await _apiService.post("cancel-order", {"shop_id": shopId, "sales_person_id": userId});

      var data = json.decode(res.body);

      return data["result"]["status"] ?? false;
    } catch (e) {
      return false;
    }
  }
}
