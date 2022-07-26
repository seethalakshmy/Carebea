import 'package:carebea/app/modules/create_order/data/create_order_data_source.dart';
import 'package:carebea/app/modules/create_order/model/create_order.dart';

class CreateOrderRepository {
  final CreateorderDataSource _dataSource = CreateorderDataSource();

  Future<CreateOrderResponse> createOrder({int? salesPersonId, int? shopId, Map<int, int>? products}) =>
      _dataSource.createOrder(salesPersonId!, shopId!, products!);
}
