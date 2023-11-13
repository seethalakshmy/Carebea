// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_list_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateListResponse _$StateListResponseFromJson(Map<String, dynamic> json) {
  return _StateListResponse.fromJson(json);
}

/// @nodoc
mixin _$StateListResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<StateItem>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateListResponseCopyWith<StateListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateListResponseCopyWith<$Res> {
  factory $StateListResponseCopyWith(
          StateListResponse value, $Res Function(StateListResponse) then) =
      _$StateListResponseCopyWithImpl<$Res, StateListResponse>;
  @useResult
  $Res call({bool? status, String? message, List<StateItem>? data});
}

/// @nodoc
class _$StateListResponseCopyWithImpl<$Res, $Val extends StateListResponse>
    implements $StateListResponseCopyWith<$Res> {
  _$StateListResponseCopyWithImpl(this._value, this._then);

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
              as List<StateItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateListResponseCopyWith<$Res>
    implements $StateListResponseCopyWith<$Res> {
  factory _$$_StateListResponseCopyWith(_$_StateListResponse value,
          $Res Function(_$_StateListResponse) then) =
      __$$_StateListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, List<StateItem>? data});
}

/// @nodoc
class __$$_StateListResponseCopyWithImpl<$Res>
    extends _$StateListResponseCopyWithImpl<$Res, _$_StateListResponse>
    implements _$$_StateListResponseCopyWith<$Res> {
  __$$_StateListResponseCopyWithImpl(
      _$_StateListResponse _value, $Res Function(_$_StateListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_StateListResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StateItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateListResponse implements _StateListResponse {
  const _$_StateListResponse(
      {this.status, this.message, final List<StateItem>? data})
      : _data = data;

  factory _$_StateListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StateListResponseFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  final List<StateItem>? _data;
  @override
  List<StateItem>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StateListResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateListResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateListResponseCopyWith<_$_StateListResponse> get copyWith =>
      __$$_StateListResponseCopyWithImpl<_$_StateListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateListResponseToJson(
      this,
    );
  }
}

abstract class _StateListResponse implements StateListResponse {
  const factory _StateListResponse(
      {final bool? status,
      final String? message,
      final List<StateItem>? data}) = _$_StateListResponse;

  factory _StateListResponse.fromJson(Map<String, dynamic> json) =
      _$_StateListResponse.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<StateItem>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_StateListResponseCopyWith<_$_StateListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
