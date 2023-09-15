// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectedAddress _$$_SelectedAddressFromJson(Map<String, dynamic> json) =>
    _$_SelectedAddress(
      zipCode: json['zipCode'] as String?,
      locality: json['locality'] as String?,
      streetNumber: json['streetNumber'] as String?,
      stateName: json['stateName'] as String?,
      stateIso: json['stateIso'] as String?,
      route: json['route'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_SelectedAddressToJson(_$_SelectedAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('locality', instance.locality);
  writeNotNull('streetNumber', instance.streetNumber);
  writeNotNull('stateName', instance.stateName);
  writeNotNull('stateIso', instance.stateIso);
  writeNotNull('route', instance.route);
  writeNotNull('country', instance.country);
  return val;
}
