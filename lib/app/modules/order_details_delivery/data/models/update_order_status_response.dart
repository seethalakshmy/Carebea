import 'package:json_annotation/json_annotation.dart';

part 'update_order_status_response.g.dart';

@JsonSerializable()
class UpdateOrderStatusResponse {
  UpdateOrderStatusResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  final UpdateOrderStatusResult? result;

  factory UpdateOrderStatusResponse.fromJson(Map<String, dynamic> json) => _$UpdateOrderStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderStatusResponseToJson(this);
}

@JsonSerializable()
class UpdateOrderStatusResult {
  UpdateOrderStatusResult({
    this.status,
    this.message,
  });

  final bool? status;
  final String? message;

  factory UpdateOrderStatusResult.fromJson(Map<String, dynamic> json) => _$UpdateOrderStatusResultFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderStatusResultToJson(this);
}
