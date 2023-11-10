// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resend_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResendOTPResponse _$ResendOTPResponseFromJson(Map<String, dynamic> json) {
  return _ResendOTPResponse.fromJson(json);
}

/// @nodoc
mixin _$ResendOTPResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendOTPResponseCopyWith<ResendOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendOTPResponseCopyWith<$Res> {
  factory $ResendOTPResponseCopyWith(
          ResendOTPResponse value, $Res Function(ResendOTPResponse) then) =
      _$ResendOTPResponseCopyWithImpl<$Res, ResendOTPResponse>;
  @useResult
  $Res call({bool? status, String? message, String? data});
}

/// @nodoc
class _$ResendOTPResponseCopyWithImpl<$Res, $Val extends ResendOTPResponse>
    implements $ResendOTPResponseCopyWith<$Res> {
  _$ResendOTPResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResendOTPResponseCopyWith<$Res>
    implements $ResendOTPResponseCopyWith<$Res> {
  factory _$$_ResendOTPResponseCopyWith(_$_ResendOTPResponse value,
          $Res Function(_$_ResendOTPResponse) then) =
      __$$_ResendOTPResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, String? data});
}

/// @nodoc
class __$$_ResendOTPResponseCopyWithImpl<$Res>
    extends _$ResendOTPResponseCopyWithImpl<$Res, _$_ResendOTPResponse>
    implements _$$_ResendOTPResponseCopyWith<$Res> {
  __$$_ResendOTPResponseCopyWithImpl(
      _$_ResendOTPResponse _value, $Res Function(_$_ResendOTPResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ResendOTPResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$_ResendOTPResponse implements _ResendOTPResponse {
  const _$_ResendOTPResponse({this.status, this.message, this.data});

  factory _$_ResendOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ResendOTPResponseFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final String? data;

  @override
  String toString() {
    return 'ResendOTPResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendOTPResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendOTPResponseCopyWith<_$_ResendOTPResponse> get copyWith =>
      __$$_ResendOTPResponseCopyWithImpl<_$_ResendOTPResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResendOTPResponseToJson(
      this,
    );
  }
}

abstract class _ResendOTPResponse implements ResendOTPResponse {
  const factory _ResendOTPResponse(
      {final bool? status,
      final String? message,
      final String? data}) = _$_ResendOTPResponse;

  factory _ResendOTPResponse.fromJson(Map<String, dynamic> json) =
      _$_ResendOTPResponse.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResendOTPResponseCopyWith<_$_ResendOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
