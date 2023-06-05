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
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CareGiverResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CareGiversStateCopyWith<CareGiversState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiversStateCopyWith<$Res> {
  factory $CareGiversStateCopyWith(
          CareGiversState value, $Res Function(CareGiversState) then) =
      _$CareGiversStateCopyWithImpl<$Res, CareGiversState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CareGiverResponse? response,
      String? error});
}

/// @nodoc
class _$CareGiversStateCopyWithImpl<$Res, $Val extends CareGiversState>
    implements $CareGiversStateCopyWith<$Res> {
  _$CareGiversStateCopyWithImpl(this._value, this._then);

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
              as CareGiverResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CareGiversStateCopyWith<$Res>
    implements $CareGiversStateCopyWith<$Res> {
  factory _$$_CareGiversStateCopyWith(
          _$_CareGiversState value, $Res Function(_$_CareGiversState) then) =
      __$$_CareGiversStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CareGiverResponse? response,
      String? error});
}

/// @nodoc
class __$$_CareGiversStateCopyWithImpl<$Res>
    extends _$CareGiversStateCopyWithImpl<$Res, _$_CareGiversState>
    implements _$$_CareGiversStateCopyWith<$Res> {
  __$$_CareGiversStateCopyWithImpl(
      _$_CareGiversState _value, $Res Function(_$_CareGiversState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CareGiversState(
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
              as CareGiverResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CareGiversState implements _CareGiversState {
  const _$_CareGiversState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.error});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final CareGiverResponse? response;
  @override
  final String? error;

  @override
  String toString() {
    return 'CareGiversState(isLoading: $isLoading, isError: $isError, response: $response, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CareGiversState &&
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
  _$$_CareGiversStateCopyWith<_$_CareGiversState> get copyWith =>
      __$$_CareGiversStateCopyWithImpl<_$_CareGiversState>(this, _$identity);
}

abstract class _CareGiversState implements CareGiversState {
  const factory _CareGiversState(
      {required final bool isLoading,
      required final bool isError,
      required final CareGiverResponse? response,
      required final String? error}) = _$_CareGiversState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CareGiverResponse? get response;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_CareGiversStateCopyWith<_$_CareGiversState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CareGiversEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit) getCareGivers,
    required TResult Function(Caregivers caregiver) isUserActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit)? getCareGivers,
    TResult? Function(Caregivers caregiver)? isUserActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit)? getCareGivers,
    TResult Function(Caregivers caregiver)? isUserActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
    required TResult Function(_IsUserActive value) isUserActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
    TResult? Function(_IsUserActive value)? isUserActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    TResult Function(_IsUserActive value)? isUserActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiversEventCopyWith<$Res> {
  factory $CareGiversEventCopyWith(
          CareGiversEvent value, $Res Function(CareGiversEvent) then) =
      _$CareGiversEventCopyWithImpl<$Res, CareGiversEvent>;
}

/// @nodoc
class _$CareGiversEventCopyWithImpl<$Res, $Val extends CareGiversEvent>
    implements $CareGiversEventCopyWith<$Res> {
  _$CareGiversEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCareGiversCopyWith<$Res> {
  factory _$$_GetCareGiversCopyWith(
          _$_GetCareGivers value, $Res Function(_$_GetCareGivers) then) =
      __$$_GetCareGiversCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int page, int limit});
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
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_GetCareGivers(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$_GetCareGivers(
      {required this.userId, required this.page, required this.limit});

  @override
  final String userId;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'CareGiversEvent.getCareGivers(userId: $userId, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGivers &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiversCopyWith<_$_GetCareGivers> get copyWith =>
      __$$_GetCareGiversCopyWithImpl<_$_GetCareGivers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit) getCareGivers,
    required TResult Function(Caregivers caregiver) isUserActive,
  }) {
    return getCareGivers(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit)? getCareGivers,
    TResult? Function(Caregivers caregiver)? isUserActive,
  }) {
    return getCareGivers?.call(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit)? getCareGivers,
    TResult Function(Caregivers caregiver)? isUserActive,
    required TResult orElse(),
  }) {
    if (getCareGivers != null) {
      return getCareGivers(userId, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
    required TResult Function(_IsUserActive value) isUserActive,
  }) {
    return getCareGivers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
    TResult? Function(_IsUserActive value)? isUserActive,
  }) {
    return getCareGivers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    TResult Function(_IsUserActive value)? isUserActive,
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
      {required final String userId,
      required final int page,
      required final int limit}) = _$_GetCareGivers;

  String get userId;
  int get page;
  int get limit;
  @JsonKey(ignore: true)
  _$$_GetCareGiversCopyWith<_$_GetCareGivers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsUserActiveCopyWith<$Res> {
  factory _$$_IsUserActiveCopyWith(
          _$_IsUserActive value, $Res Function(_$_IsUserActive) then) =
      __$$_IsUserActiveCopyWithImpl<$Res>;
  @useResult
  $Res call({Caregivers caregiver});
}

/// @nodoc
class __$$_IsUserActiveCopyWithImpl<$Res>
    extends _$CareGiversEventCopyWithImpl<$Res, _$_IsUserActive>
    implements _$$_IsUserActiveCopyWith<$Res> {
  __$$_IsUserActiveCopyWithImpl(
      _$_IsUserActive _value, $Res Function(_$_IsUserActive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caregiver = null,
  }) {
    return _then(_$_IsUserActive(
      null == caregiver
          ? _value.caregiver
          : caregiver // ignore: cast_nullable_to_non_nullable
              as Caregivers,
    ));
  }
}

/// @nodoc

class _$_IsUserActive implements _IsUserActive {
  const _$_IsUserActive(this.caregiver);

  @override
  final Caregivers caregiver;

  @override
  String toString() {
    return 'CareGiversEvent.isUserActive(caregiver: $caregiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsUserActive &&
            (identical(other.caregiver, caregiver) ||
                other.caregiver == caregiver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, caregiver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsUserActiveCopyWith<_$_IsUserActive> get copyWith =>
      __$$_IsUserActiveCopyWithImpl<_$_IsUserActive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit) getCareGivers,
    required TResult Function(Caregivers caregiver) isUserActive,
  }) {
    return isUserActive(caregiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit)? getCareGivers,
    TResult? Function(Caregivers caregiver)? isUserActive,
  }) {
    return isUserActive?.call(caregiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit)? getCareGivers,
    TResult Function(Caregivers caregiver)? isUserActive,
    required TResult orElse(),
  }) {
    if (isUserActive != null) {
      return isUserActive(caregiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
    required TResult Function(_IsUserActive value) isUserActive,
  }) {
    return isUserActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
    TResult? Function(_IsUserActive value)? isUserActive,
  }) {
    return isUserActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    TResult Function(_IsUserActive value)? isUserActive,
    required TResult orElse(),
  }) {
    if (isUserActive != null) {
      return isUserActive(this);
    }
    return orElse();
  }
}

abstract class _IsUserActive implements CareGiversEvent {
  const factory _IsUserActive(final Caregivers caregiver) = _$_IsUserActive;

  Caregivers get caregiver;
  @JsonKey(ignore: true)
  _$$_IsUserActiveCopyWith<_$_IsUserActive> get copyWith =>
      throw _privateConstructorUsedError;
}
