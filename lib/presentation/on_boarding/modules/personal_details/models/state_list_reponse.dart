import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/models/state_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_list_reponse.freezed.dart';
part 'state_list_reponse.g.dart';

@freezed
class StateListResponse with _$StateListResponse {
  const factory StateListResponse({
    final bool? status,
    final String? message,
    final List<StateItem>? data,
  }) = _StateListResponse;

  factory StateListResponse.fromJson(Map<String, dynamic> json) =>
      _$StateListResponseFromJson(json);
}

// StateListReponse stateListReponseFromJson(String str) =>
//     StateListReponse.fromJson(json.decode(str));
// String stateListReponseToJson(StateListReponse data) =>
//     json.encode(data.toJson());
//
// class StateListReponse {
//   StateListReponse({
//     bool? status,
//     String? message,
//     List<StateItem>? data,
//   }) {
//     _status = status;
//     _message = message;
//     _data = data;
//   }
//
//   StateListReponse.fromJson(dynamic json) {
//     _status = json['status'];
//     _message = json['message'];
//     if (json['data'] != null) {
//       _data = [];
//       json['data'].forEach((v) {
//         _data?.add(StateItem.fromJson(v));
//       });
//     }
//   }
//   bool? _status;
//   String? _message;
//   List<StateItem>? _data;
//   StateListReponse copyWith({
//     bool? status,
//     String? message,
//     List<StateItem>? data,
//   }) =>
//       StateListReponse(
//         status: status ?? _status,
//         message: message ?? _message,
//         data: data ?? _data,
//       );
//   bool? get status => _status;
//   String? get message => _message;
//   List<StateItem>? get data => _data;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['status'] = _status;
//     map['message'] = _message;
//     if (_data != null) {
//       map['data'] = _data?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
// }
//
// StateItem dataFromJson(String str) => StateItem.fromJson(json.decode(str));
// String dataToJson(StateItem data) => json.encode(data.toJson());
//
// class StateItem {
//   StateItem({
//     String? id,
//     String? name,
//     String? isoCode,
//   }) {
//     _id = id;
//     _name = name;
//     _isoCode = isoCode;
//   }
//
//   StateItem.fromJson(dynamic json) {
//     _id = json['_id'];
//     _name = json['name'];
//     _isoCode = json['iso_code'];
//   }
//   String? _id;
//   String? _name;
//   String? _isoCode;
//   StateItem copyWith({
//     String? id,
//     String? name,
//     String? isoCode,
//   }) =>
//       StateItem(
//         id: id ?? _id,
//         name: name ?? _name,
//         isoCode: isoCode ?? _isoCode,
//       );
//   String? get id => _id;
//   String? get name => _name;
//   String? get isoCode => _isoCode;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['_id'] = _id;
//     map['name'] = _name;
//     map['iso_code'] = _isoCode;
//     return map;
//   }
//
//   @override
//   String toString() {
//     return "{id:$id, name:$name, iso:$isoCode}";
//   }
// }
