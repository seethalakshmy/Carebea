import 'package:freezed_annotation/freezed_annotation.dart';

import 'complaints_list_data.dart';

part 'complaints_list_response_model.freezed.dart';
part 'complaints_list_response_model.g.dart';

@freezed
class ComplaintsListResponseModel with _$ComplaintsListResponseModel {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ComplaintsListResponseModel({
    bool? status,
    String? message,
    ComplaintsListData? data,
  }) = _ComplaintsListResponseModel;

  factory ComplaintsListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ComplaintsListResponseModelFromJson(json);
}
