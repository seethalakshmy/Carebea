// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_profile_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubProfileDetailEvent {
  String get userId => throw _privateConstructorUsedError;
  String get adminId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getSubProfileDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getSubProfileDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getSubProfileDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubProfileDetail value) getSubProfileDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubProfileDetail value)? getSubProfileDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubProfileDetail value)? getSubProfileDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubProfileDetailEventCopyWith<SubProfileDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubProfileDetailEventCopyWith<$Res> {
  factory $SubProfileDetailEventCopyWith(SubProfileDetailEvent value,
          $Res Function(SubProfileDetailEvent) then) =
      _$SubProfileDetailEventCopyWithImpl<$Res, SubProfileDetailEvent>;
  @useResult
  $Res call({String userId, String adminId});
}

/// @nodoc
class _$SubProfileDetailEventCopyWithImpl<$Res,
        $Val extends SubProfileDetailEvent>
    implements $SubProfileDetailEventCopyWith<$Res> {
  _$SubProfileDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetSubProfileDetailCopyWith<$Res>
    implements $SubProfileDetailEventCopyWith<$Res> {
  factory _$$_GetSubProfileDetailCopyWith(_$_GetSubProfileDetail value,
          $Res Function(_$_GetSubProfileDetail) then) =
      __$$_GetSubProfileDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String adminId});
}

/// @nodoc
class __$$_GetSubProfileDetailCopyWithImpl<$Res>
    extends _$SubProfileDetailEventCopyWithImpl<$Res, _$_GetSubProfileDetail>
    implements _$$_GetSubProfileDetailCopyWith<$Res> {
  __$$_GetSubProfileDetailCopyWithImpl(_$_GetSubProfileDetail _value,
      $Res Function(_$_GetSubProfileDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
  }) {
    return _then(_$_GetSubProfileDetail(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSubProfileDetail implements _GetSubProfileDetail {
  const _$_GetSubProfileDetail({required this.userId, required this.adminId});

  @override
  final String userId;
  @override
  final String adminId;

  @override
  String toString() {
    return 'SubProfileDetailEvent.getSubProfileDetail(userId: $userId, adminId: $adminId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSubProfileDetail &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, adminId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSubProfileDetailCopyWith<_$_GetSubProfileDetail> get copyWith =>
      __$$_GetSubProfileDetailCopyWithImpl<_$_GetSubProfileDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getSubProfileDetail,
  }) {
    return getSubProfileDetail(userId, adminId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getSubProfileDetail,
  }) {
    return getSubProfileDetail?.call(userId, adminId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getSubProfileDetail,
    required TResult orElse(),
  }) {
    if (getSubProfileDetail != null) {
      return getSubProfileDetail(userId, adminId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubProfileDetail value) getSubProfileDetail,
  }) {
    return getSubProfileDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubProfileDetail value)? getSubProfileDetail,
  }) {
    return getSubProfileDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubProfileDetail value)? getSubProfileDetail,
    required TResult orElse(),
  }) {
    if (getSubProfileDetail != null) {
      return getSubProfileDetail(this);
    }
    return orElse();
  }
}

abstract class _GetSubProfileDetail implements SubProfileDetailEvent {
  const factory _GetSubProfileDetail(
      {required final String userId,
      required final String adminId}) = _$_GetSubProfileDetail;

  @override
  String get userId;
  @override
  String get adminId;
  @override
  @JsonKey(ignore: true)
  _$$_GetSubProfileDetailCopyWith<_$_GetSubProfileDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubProfileDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SubProfileDetailResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubProfileDetailStateCopyWith<SubProfileDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubProfileDetailStateCopyWith<$Res> {
  factory $SubProfileDetailStateCopyWith(SubProfileDetailState value,
          $Res Function(SubProfileDetailState) then) =
      _$SubProfileDetailStateCopyWithImpl<$Res, SubProfileDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SubProfileDetailResponse? response,
      String? error});
}

/// @nodoc
class _$SubProfileDetailStateCopyWithImpl<$Res,
        $Val extends SubProfileDetailState>
    implements $SubProfileDetailStateCopyWith<$Res> {
  _$SubProfileDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SubProfileDetailResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubProfileDetailStateCopyWith<$Res>
    implements $SubProfileDetailStateCopyWith<$Res> {
  factory _$$_SubProfileDetailStateCopyWith(_$_SubProfileDetailState value,
          $Res Function(_$_SubProfileDetailState) then) =
      __$$_SubProfileDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SubProfileDetailResponse? response,
      String? error});
}

/// @nodoc
class __$$_SubProfileDetailStateCopyWithImpl<$Res>
    extends _$SubProfileDetailStateCopyWithImpl<$Res, _$_SubProfileDetailState>
    implements _$$_SubProfileDetailStateCopyWith<$Res> {
  __$$_SubProfileDetailStateCopyWithImpl(_$_SubProfileDetailState _value,
      $Res Function(_$_SubProfileDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SubProfileDetailState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SubProfileDetailResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SubProfileDetailState implements _SubProfileDetailState {
  const _$_SubProfileDetailState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.error});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final SubProfileDetailResponse? response;
  @override
  final String? error;

  @override
  String toString() {
    return 'SubProfileDetailState(isLoading: $isLoading, isError: $isError, response: $response, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubProfileDetailState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, response, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubProfileDetailStateCopyWith<_$_SubProfileDetailState> get copyWith =>
      __$$_SubProfileDetailStateCopyWithImpl<_$_SubProfileDetailState>(
          this, _$identity);
}

abstract class _SubProfileDetailState implements SubProfileDetailState {
  const factory _SubProfileDetailState(
      {required final bool isLoading,
      required final bool isError,
      required final SubProfileDetailResponse? response,
      required final String? error}) = _$_SubProfileDetailState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SubProfileDetailResponse? get response;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SubProfileDetailStateCopyWith<_$_SubProfileDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
