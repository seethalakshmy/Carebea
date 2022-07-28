import 'package:json_annotation/json_annotation.dart';

part 'route_page_response.g.dart';

@JsonSerializable()
class RouteByDateResponse {
  RouteByDateResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  final RouteByDateResult? result;

  factory RouteByDateResponse.fromJson(Map<String, dynamic> json) => _$RouteByDateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RouteByDateResponseToJson(this);
}

@JsonSerializable()
class RouteByDateResult {
  RouteByDateResult({
    this.status,
    this.message,
    this.routeList,
  });

  final bool? status;
  final String? message;
  @JsonKey(name: "route_list")
  final List<RouteList>? routeList;

  factory RouteByDateResult.fromJson(Map<String, dynamic> json) => _$RouteByDateResultFromJson(json);

  Map<String, dynamic> toJson() => _$RouteByDateResultToJson(this);
}

@JsonSerializable()
class RouteList {
  RouteList({
    this.routeId,
    this.routeName,
    this.userAddress,
  });

  @JsonKey(name: "route_id")
  final int? routeId;
  @JsonKey(name: "route_name")
  final String? routeName;
  @JsonKey(name: "user_address")
  final UserAddress? userAddress;

  factory RouteList.fromJson(Map<String, dynamic> json) => _$RouteListFromJson(json);

  Map<String, dynamic> toJson() => _$RouteListToJson(this);
}

@JsonSerializable()
class UserAddress {
  UserAddress({
    this.localArea,
    this.street2,
    this.district,
    this.zip,
    this.stateName,
    this.countryName,
  });

  @JsonKey(name: "local_area")
  final String? localArea;
  final String? street2;
  final String? district;
  final String? zip;
  @JsonKey(name: "state_name")
  final String? stateName;
  @JsonKey(name: "country_name")
  final String? countryName;

  factory UserAddress.fromJson(Map<String, dynamic> json) => _$UserAddressFromJson(json);

  Map<String, dynamic> toJson() => _$UserAddressToJson(this);
}
