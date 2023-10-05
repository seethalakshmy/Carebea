import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_address.freezed.dart';
part 'selected_address.g.dart';

@freezed
class SelectedAddress with _$SelectedAddress {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory SelectedAddress({
    final String? zipCode,
    final String? locality,
    final String? streetNumber,
    final String? stateName,
    final String? stateIso,
    final String? route,
    final String? country,
  }) = _SelectedAddress;

  factory SelectedAddress.fromJson(Map<String, dynamic> json) =>
      _$SelectedAddressFromJson(json);
}
