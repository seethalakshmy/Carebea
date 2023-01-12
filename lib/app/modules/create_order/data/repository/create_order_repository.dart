import 'package:carebea/app/modules/create_order/data/create_order_data_source.dart';
import 'package:carebea/app/modules/create_order/model/confirm_order.dart';
import 'package:carebea/app/modules/create_order/model/create_order.dart';
import 'package:carebea/app/utils/shared_prefs.dart';

class CreateOrderRepository {
  final CreateorderDataSource _dataSource = CreateorderDataSource();

  Future<CreateOrderResponse> createOrder({int? salesPersonId, int? shopId, Map<int, int>? products, int? orderId}) =>
      _dataSource.createOrder(salesPersonId!, shopId!, products!, orderId);

  Future<ConfirmOrderResponse> confirmOrder({
    required int salesPersonId,
    required int orderId,
    required int paymentTermId,
    required String paymentMethod,
    String? comment,
  }) =>
      _dataSource.confirmOrder(salesPersonId, orderId, paymentMethod, comment,paymentTermId);

  Future<bool> deleteOrders({required int shopId}) => _dataSource.deleteOrders(shopId, SharedPrefs.getUserId()!);
}
