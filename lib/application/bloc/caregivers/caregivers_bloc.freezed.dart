// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'caregivers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CareGiversState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CaregiversResponse? response) success,
    required TResult Function(String? msg, bool? isClientError) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CaregiversResponse? response)? success,
    TResult? Function(String? msg, bool? isClientError)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CaregiversResponse? response)? success,
    TResult Function(String? msg, bool? isClientError)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiversStateCopyWith<$Res> {
  factory $CareGiversStateCopyWith(
          CareGiversState value, $Res Function(CareGiversState) then) =
      _$CareGiversStateCopyWithImpl<$Res, CareGiversState>;
}

/// @nodoc
class _$CareGiversStateCopyWithImpl<$Res, $Val extends CareGiversState>
    implements $CareGiversStateCopyWith<$Res> {
  _$CareGiversStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CareGiversStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CareGiversState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CaregiversResponse? response) success,
    required TResult Function(String? msg, bool? isClientError) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CaregiversResponse? response)? success,
    TResult? Function(String? msg, bool? isClientError)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CaregiversResponse? response)? success,
    TResult Function(String? msg, bool? isClientError)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CareGiversState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CaregiversResponse? response});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CareGiversStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_Success(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CaregiversResponse?,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.response});

  @override
  final CaregiversResponse? response;

  @override
  String toString() {
    return 'CareGiversState.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CaregiversResponse? response) success,
    required TResult Function(String? msg, bool? isClientError) error,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CaregiversResponse? response)? success,
    TResult? Function(String? msg, bool? isClientError)? error,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CaregiversResponse? response)? success,
    TResult Function(String? msg, bool? isClientError)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CareGiversState {
  const factory _Success({required final CaregiversResponse? response}) =
      _$_Success;

  CaregiversResponse? get response;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg, bool? isClientError});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CareGiversStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? isClientError = freezed,
  }) {
    return _then(_$_Error(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      isClientError: freezed == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.msg, this.isClientError});

  @override
  final String? msg;
  @override
  final bool? isClientError;

  @override
  String toString() {
    return 'CareGiversState.error(msg: $msg, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CaregiversResponse? response) success,
    required TResult Function(String? msg, bool? isClientError) error,
  }) {
    return error(msg, isClientError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CaregiversResponse? response)? success,
    TResult? Function(String? msg, bool? isClientError)? error,
  }) {
    return error?.call(msg, isClientError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CaregiversResponse? response)? success,
    TResult Function(String? msg, bool? isClientError)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg, isClientError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CareGiversState {
  const factory _Error({final String? msg, final bool? isClientError}) =
      _$_Error;

  String? get msg;
  bool? get isClientError;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CareGiversEvent {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit) getCareGivers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit)? getCareGivers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit)? getCareGivers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CareGiversEventCopyWith<CareGiversEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiversEventCopyWith<$Res> {
  factory $CareGiversEventCopyWith(
          CareGiversEvent value, $Res Function(CareGiversEvent) then) =
      _$CareGiversEventCopyWithImpl<$Res, CareGiversEvent>;
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class _$CareGiversEventCopyWithImpl<$Res, $Val extends CareGiversEvent>
    implements $CareGiversEventCopyWith<$Res> {
  _$CareGiversEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCareGiversCopyWith<$Res>
    implements $CareGiversEventCopyWith<$Res> {
  factory _$$_GetCareGiversCopyWith(
          _$_GetCareGivers value, $Res Function(_$_GetCareGivers) then) =
      __$$_GetCareGiversCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class __$$_GetCareGiversCopyWithImpl<$Res>
    extends _$CareGiversEventCopyWithImpl<$Res, _$_GetCareGivers>
    implements _$$_GetCareGiversCopyWith<$Res> {
  __$$_GetCareGiversCopyWithImpl(
      _$_GetCareGivers _value, $Res Function(_$_GetCareGivers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_GetCareGivers(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCareGivers implements _GetCareGivers {
  const _$_GetCareGivers({required this.page, required this.limit});

  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'CareGiversEvent.getCareGivers(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGivers &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiversCopyWith<_$_GetCareGivers> get copyWith =>
      __$$_GetCareGiversCopyWithImpl<_$_GetCareGivers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit) getCareGivers,
  }) {
    return getCareGivers(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit)? getCareGivers,
  }) {
    return getCareGivers?.call(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit)? getCareGivers,
    required TResult orElse(),
  }) {
    if (getCareGivers != null) {
      return getCareGivers(page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
  }) {
    return getCareGivers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
  }) {
    return getCareGivers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    required TResult orElse(),
  }) {
    if (getCareGivers != null) {
      return getCareGivers(this);
    }
    return orElse();
  }
}

abstract class _GetCareGivers implements CareGiversEvent {
  const factory _GetCareGivers(
      {required final int page, required final int limit}) = _$_GetCareGivers;

  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_GetCareGiversCopyWith<_$_GetCareGivers> get copyWith =>
      throw _privateConstructorUsedError;
}
