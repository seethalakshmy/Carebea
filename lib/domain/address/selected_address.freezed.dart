// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectedAddress _$SelectedAddressFromJson(Map<String, dynamic> json) {
  return _SelectedAddress.fromJson(json);
}

/// @nodoc
mixin _$SelectedAddress {
  String? get zipCode => throw _privateConstructorUsedError;
  String? get locality => throw _privateConstructorUsedError;
  String? get streetNumber => throw _privateConstructorUsedError;
  String? get stateName => throw _privateConstructorUsedError;
  String? get stateIso => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedAddressCopyWith<SelectedAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedAddressCopyWith<$Res> {
  factory $SelectedAddressCopyWith(
          SelectedAddress value, $Res Function(SelectedAddress) then) =
      _$SelectedAddressCopyWithImpl<$Res, SelectedAddress>;
  @useResult
  $Res call(
      {String? zipCode,
      String? locality,
      String? streetNumber,
      String? stateName,
      String? stateIso,
      String? route,
      String? country});
}

/// @nodoc
class _$SelectedAddressCopyWithImpl<$Res, $Val extends SelectedAddress>
    implements $SelectedAddressCopyWith<$Res> {
  _$SelectedAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zipCode = freezed,
    Object? locality = freezed,
    Object? streetNumber = freezed,
    Object? stateName = freezed,
    Object? stateIso = freezed,
    Object? route = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      stateName: freezed == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
      stateIso: freezed == stateIso
          ? _value.stateIso
          : stateIso // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectedAddressCopyWith<$Res>
    implements $SelectedAddressCopyWith<$Res> {
  factory _$$_SelectedAddressCopyWith(
          _$_SelectedAddress value, $Res Function(_$_SelectedAddress) then) =
      __$$_SelectedAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? zipCode,
      String? locality,
      String? streetNumber,
      String? stateName,
      String? stateIso,
      String? route,
      String? country});
}

/// @nodoc
class __$$_SelectedAddressCopyWithImpl<$Res>
    extends _$SelectedAddressCopyWithImpl<$Res, _$_SelectedAddress>
    implements _$$_SelectedAddressCopyWith<$Res> {
  __$$_SelectedAddressCopyWithImpl(
      _$_SelectedAddress _value, $Res Function(_$_SelectedAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zipCode = freezed,
    Object? locality = freezed,
    Object? streetNumber = freezed,
    Object? stateName = freezed,
    Object? stateIso = freezed,
    Object? route = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_SelectedAddress(
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      stateName: freezed == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
      stateIso: freezed == stateIso
          ? _value.stateIso
          : stateIso // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_SelectedAddress implements _SelectedAddress {
  const _$_SelectedAddress(
      {this.zipCode,
      this.locality,
      this.streetNumber,
      this.stateName,
      this.stateIso,
      this.route,
      this.country});

  factory _$_SelectedAddress.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedAddressFromJson(json);

  @override
  final String? zipCode;
  @override
  final String? locality;
  @override
  final String? streetNumber;
  @override
  final String? stateName;
  @override
  final String? stateIso;
  @override
  final String? route;
  @override
  final String? country;

  @override
  String toString() {
    return 'SelectedAddress(zipCode: $zipCode, locality: $locality, streetNumber: $streetNumber, stateName: $stateName, stateIso: $stateIso, route: $route, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedAddress &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.streetNumber, streetNumber) ||
                other.streetNumber == streetNumber) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.stateIso, stateIso) ||
                other.stateIso == stateIso) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, zipCode, locality, streetNumber,
      stateName, stateIso, route, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedAddressCopyWith<_$_SelectedAddress> get copyWith =>
      __$$_SelectedAddressCopyWithImpl<_$_SelectedAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedAddressToJson(
      this,
    );
  }
}

abstract class _SelectedAddress implements SelectedAddress {
  const factory _SelectedAddress(
      {final String? zipCode,
      final String? locality,
      final String? streetNumber,
      final String? stateName,
      final String? stateIso,
      final String? route,
      final String? country}) = _$_SelectedAddress;

  factory _SelectedAddress.fromJson(Map<String, dynamic> json) =
      _$_SelectedAddress.fromJson;

  @override
  String? get zipCode;
  @override
  String? get locality;
  @override
  String? get streetNumber;
  @override
  String? get stateName;
  @override
  String? get stateIso;
  @override
  String? get route;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedAddressCopyWith<_$_SelectedAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
