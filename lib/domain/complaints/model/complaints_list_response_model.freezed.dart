// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaints_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComplaintsListResponseModel _$ComplaintsListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ComplaintsListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ComplaintsListResponseModel {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ComplaintsListData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplaintsListResponseModelCopyWith<ComplaintsListResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintsListResponseModelCopyWith<$Res> {
  factory $ComplaintsListResponseModelCopyWith(
          ComplaintsListResponseModel value,
          $Res Function(ComplaintsListResponseModel) then) =
      _$ComplaintsListResponseModelCopyWithImpl<$Res,
          ComplaintsListResponseModel>;
  @useResult
  $Res call({bool? status, String? message, ComplaintsListData? data});

  $ComplaintsListDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ComplaintsListResponseModelCopyWithImpl<$Res,
        $Val extends ComplaintsListResponseModel>
    implements $ComplaintsListResponseModelCopyWith<$Res> {
  _$ComplaintsListResponseModelCopyWithImpl(this._value, this._then);

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
              as ComplaintsListData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComplaintsListDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ComplaintsListDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ComplaintsListResponseModelCopyWith<$Res>
    implements $ComplaintsListResponseModelCopyWith<$Res> {
  factory _$$_ComplaintsListResponseModelCopyWith(
          _$_ComplaintsListResponseModel value,
          $Res Function(_$_ComplaintsListResponseModel) then) =
      __$$_ComplaintsListResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, ComplaintsListData? data});

  @override
  $ComplaintsListDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ComplaintsListResponseModelCopyWithImpl<$Res>
    extends _$ComplaintsListResponseModelCopyWithImpl<$Res,
        _$_ComplaintsListResponseModel>
    implements _$$_ComplaintsListResponseModelCopyWith<$Res> {
  __$$_ComplaintsListResponseModelCopyWithImpl(
      _$_ComplaintsListResponseModel _value,
      $Res Function(_$_ComplaintsListResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ComplaintsListResponseModel(
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
              as ComplaintsListData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ComplaintsListResponseModel implements _ComplaintsListResponseModel {
  const _$_ComplaintsListResponseModel({this.status, this.message, this.data});

  factory _$_ComplaintsListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ComplaintsListResponseModelFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final ComplaintsListData? data;

  @override
  String toString() {
    return 'ComplaintsListResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComplaintsListResponseModel &&
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
  _$$_ComplaintsListResponseModelCopyWith<_$_ComplaintsListResponseModel>
      get copyWith => __$$_ComplaintsListResponseModelCopyWithImpl<
          _$_ComplaintsListResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComplaintsListResponseModelToJson(
      this,
    );
  }
}

abstract class _ComplaintsListResponseModel
    implements ComplaintsListResponseModel {
  const factory _ComplaintsListResponseModel(
      {final bool? status,
      final String? message,
      final ComplaintsListData? data}) = _$_ComplaintsListResponseModel;

  factory _ComplaintsListResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ComplaintsListResponseModel.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  ComplaintsListData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ComplaintsListResponseModelCopyWith<_$_ComplaintsListResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
