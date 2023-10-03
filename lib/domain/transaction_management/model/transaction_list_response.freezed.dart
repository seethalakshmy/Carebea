// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionListResponse _$TransactionListResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionListResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionListResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  TransactionData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionListResponseCopyWith<TransactionListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionListResponseCopyWith<$Res> {
  factory $TransactionListResponseCopyWith(TransactionListResponse value,
          $Res Function(TransactionListResponse) then) =
      _$TransactionListResponseCopyWithImpl<$Res, TransactionListResponse>;
  @useResult
  $Res call({bool? status, String? message, TransactionData? data});

  $TransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TransactionListResponseCopyWithImpl<$Res,
        $Val extends TransactionListResponse>
    implements $TransactionListResponseCopyWith<$Res> {
  _$TransactionListResponseCopyWithImpl(this._value, this._then);

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
              as TransactionData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionListResponseCopyWith<$Res>
    implements $TransactionListResponseCopyWith<$Res> {
  factory _$$_TransactionListResponseCopyWith(_$_TransactionListResponse value,
          $Res Function(_$_TransactionListResponse) then) =
      __$$_TransactionListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, TransactionData? data});

  @override
  $TransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_TransactionListResponseCopyWithImpl<$Res>
    extends _$TransactionListResponseCopyWithImpl<$Res,
        _$_TransactionListResponse>
    implements _$$_TransactionListResponseCopyWith<$Res> {
  __$$_TransactionListResponseCopyWithImpl(_$_TransactionListResponse _value,
      $Res Function(_$_TransactionListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_TransactionListResponse(
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
              as TransactionData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_TransactionListResponse implements _TransactionListResponse {
  const _$_TransactionListResponse({this.status, this.message, this.data});

  factory _$_TransactionListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionListResponseFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final TransactionData? data;

  @override
  String toString() {
    return 'TransactionListResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionListResponse &&
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
  _$$_TransactionListResponseCopyWith<_$_TransactionListResponse>
      get copyWith =>
          __$$_TransactionListResponseCopyWithImpl<_$_TransactionListResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionListResponseToJson(
      this,
    );
  }
}

abstract class _TransactionListResponse implements TransactionListResponse {
  const factory _TransactionListResponse(
      {final bool? status,
      final String? message,
      final TransactionData? data}) = _$_TransactionListResponse;

  factory _TransactionListResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionListResponse.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  TransactionData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionListResponseCopyWith<_$_TransactionListResponse>
      get copyWith => throw _privateConstructorUsedError;
}
