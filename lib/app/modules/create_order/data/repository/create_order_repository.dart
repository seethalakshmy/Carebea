import 'package:carebea/app/modules/create_order/data/create_order_data_source.dart';

class CreateOrderRepository {
  final CreateorderDataSource _dataSource = CreateorderDataSource();

  Future createOrder({int? salesPersonId, int? shopId, Map<int, int>? products}) =>
      _dataSource.createOrder(salesPersonId!, shopId!, products!);
}
