import 'package:carebea/app/modules/order_details_delivery/data/models/update_order_status_response.dart';
import 'package:carebea/app/modules/order_details_delivery/data/order_details_delivery_data_source.dart';

class OrderDetailsRepository {
  final OrderDetailsDeliveryDataSource _dataSource = OrderDetailsDeliveryDataSource();

   Future<UpdateOrderStatusResponse>  confirmOrder({int? salesPersonId,int?driverId, int? orderId, String? collectedAmount, String? paymentMethod,String? cheqNo}) =>
      _dataSource.confirmOrder(salesPersonId,driverId, orderId!, collectedAmount??"", paymentMethod!,cheqNo);
}
