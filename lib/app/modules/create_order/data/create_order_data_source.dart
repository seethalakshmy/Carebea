import 'package:carebea/app/core/services/api_service.dart';

class CreateorderDataSource {
  final ApiService _apiService = ApiService();

  Future createOrder(int salesPersonId, int shopId, Map<int, int> products) async {
    var _products = [];
    products.forEach((key, value) {
      _products.add({"product_id": key, "qty": value});
    });
    var res = await _apiService.post("create-order", {
      "sales_person_id": salesPersonId,
      "shop_id": shopId,
      "products": _products,
    });
  }
}
