import 'package:carebea/app/modules/order_details_delivery/data/models/update_order_status_response.dart';
import 'package:carebea/app/modules/order_details_delivery/data/order_details_delivery_data_source.dart';

class OrderDetailsRepository {
  final OrderDetailsDeliveryDataSource _dataSource = OrderDetailsDeliveryDataSource();

   Future<UpdateOrderStatusResponse>  confirmOrder({int? salesPersonId, int? orderId, String? collectedAmount, String? paymentMethod}) =>
      _dataSource.confirmOrder(salesPersonId!, orderId!, collectedAmount??"", paymentMethod!);
}
