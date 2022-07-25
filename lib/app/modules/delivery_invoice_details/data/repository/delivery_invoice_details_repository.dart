import 'package:carebea/app/modules/delivery_invoice_details/data/delivery_invoice_details.dart';
import 'package:carebea/app/modules/delivery_invoice_details/data/models/invoice_details_response.dart';

class DeliveryInvoiceDetailsRepository {
  final DeliveryInvoiceDetailsDataSource _dataSource = DeliveryInvoiceDetailsDataSource();

  Future<InvoiceDetailsResponse> getInvoiceDetails({int? orderId}) => _dataSource.getInvoiceDetails(orderId!);

  Future generateInvoiceBill({int? invoiceId}) => _dataSource.generateInvoiceBill(invoiceId!);
}
