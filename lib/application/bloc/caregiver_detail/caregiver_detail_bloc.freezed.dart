// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'caregiver_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CareGiverDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getCareGiverDetail,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverEarningList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceRequestList,
    required TResult Function(DateTime selectedDate) getSelectedDate,
    required TResult Function(List<ServiceDates> services)
        getSelectedScheduleServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getCareGiverDetail,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult? Function(DateTime selectedDate)? getSelectedDate,
    TResult? Function(List<ServiceDates> services)? getSelectedScheduleServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getCareGiverDetail,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult Function(DateTime selectedDate)? getSelectedDate,
    TResult Function(List<ServiceDates> services)? getSelectedScheduleServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverDetail value) getCareGiverDetail,
    required TResult Function(_GetCareGiverServiceList value)
        getCareGiverServiceList,
    required TResult Function(_GetCareGiverEarningList value)
        getCareGiverEarningList,
    required TResult Function(_GetCareGiverServiceRequestList value)
        getCareGiverServiceRequestList,
    required TResult Function(_GetSelectedDate value) getSelectedDate,
    required TResult Function(_GetSelectedScheduleServices value)
        getSelectedScheduleServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult? Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult? Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult? Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult? Function(_GetSelectedDate value)? getSelectedDate,
    TResult? Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult Function(_GetSelectedDate value)? getSelectedDate,
    TResult Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiverDetailEventCopyWith<$Res> {
  factory $CareGiverDetailEventCopyWith(CareGiverDetailEvent value,
          $Res Function(CareGiverDetailEvent) then) =
      _$CareGiverDetailEventCopyWithImpl<$Res, CareGiverDetailEvent>;
}

/// @nodoc
class _$CareGiverDetailEventCopyWithImpl<$Res,
        $Val extends CareGiverDetailEvent>
    implements $CareGiverDetailEventCopyWith<$Res> {
  _$CareGiverDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCareGiverDetailCopyWith<$Res> {
  factory _$$_GetCareGiverDetailCopyWith(_$_GetCareGiverDetail value,
          $Res Function(_$_GetCareGiverDetail) then) =
      __$$_GetCareGiverDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_GetCareGiverDetailCopyWithImpl<$Res>
    extends _$CareGiverDetailEventCopyWithImpl<$Res, _$_GetCareGiverDetail>
    implements _$$_GetCareGiverDetailCopyWith<$Res> {
  __$$_GetCareGiverDetailCopyWithImpl(
      _$_GetCareGiverDetail _value, $Res Function(_$_GetCareGiverDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_GetCareGiverDetail(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCareGiverDetail implements _GetCareGiverDetail {
  const _$_GetCareGiverDetail({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'CareGiverDetailEvent.getCareGiverDetail(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGiverDetail &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiverDetailCopyWith<_$_GetCareGiverDetail> get copyWith =>
      __$$_GetCareGiverDetailCopyWithImpl<_$_GetCareGiverDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getCareGiverDetail,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverEarningList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceRequestList,
    required TResult Function(DateTime selectedDate) getSelectedDate,
    required TResult Function(List<ServiceDates> services)
        getSelectedScheduleServices,
  }) {
    return getCareGiverDetail(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getCareGiverDetail,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult? Function(DateTime selectedDate)? getSelectedDate,
    TResult? Function(List<ServiceDates> services)? getSelectedScheduleServices,
  }) {
    return getCareGiverDetail?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getCareGiverDetail,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult Function(DateTime selectedDate)? getSelectedDate,
    TResult Function(List<ServiceDates> services)? getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getCareGiverDetail != null) {
      return getCareGiverDetail(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverDetail value) getCareGiverDetail,
    required TResult Function(_GetCareGiverServiceList value)
        getCareGiverServiceList,
    required TResult Function(_GetCareGiverEarningList value)
        getCareGiverEarningList,
    required TResult Function(_GetCareGiverServiceRequestList value)
        getCareGiverServiceRequestList,
    required TResult Function(_GetSelectedDate value) getSelectedDate,
    required TResult Function(_GetSelectedScheduleServices value)
        getSelectedScheduleServices,
  }) {
    return getCareGiverDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult? Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult? Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult? Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult? Function(_GetSelectedDate value)? getSelectedDate,
    TResult? Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
  }) {
    return getCareGiverDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult Function(_GetSelectedDate value)? getSelectedDate,
    TResult Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getCareGiverDetail != null) {
      return getCareGiverDetail(this);
    }
    return orElse();
  }
}

abstract class _GetCareGiverDetail implements CareGiverDetailEvent {
  const factory _GetCareGiverDetail({required final String userId}) =
      _$_GetCareGiverDetail;

  String get userId;
  @JsonKey(ignore: true)
  _$$_GetCareGiverDetailCopyWith<_$_GetCareGiverDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCareGiverServiceListCopyWith<$Res> {
  factory _$$_GetCareGiverServiceListCopyWith(_$_GetCareGiverServiceList value,
          $Res Function(_$_GetCareGiverServiceList) then) =
      __$$_GetCareGiverServiceListCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int page, int limit});
}

/// @nodoc
class __$$_GetCareGiverServiceListCopyWithImpl<$Res>
    extends _$CareGiverDetailEventCopyWithImpl<$Res, _$_GetCareGiverServiceList>
    implements _$$_GetCareGiverServiceListCopyWith<$Res> {
  __$$_GetCareGiverServiceListCopyWithImpl(_$_GetCareGiverServiceList _value,
      $Res Function(_$_GetCareGiverServiceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_GetCareGiverServiceList(
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

class _$_GetCareGiverServiceList implements _GetCareGiverServiceList {
  const _$_GetCareGiverServiceList(
      {required this.userId, required this.page, required this.limit});

  @override
  final String userId;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'CareGiverDetailEvent.getCareGiverServiceList(userId: $userId, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGiverServiceList &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiverServiceListCopyWith<_$_GetCareGiverServiceList>
      get copyWith =>
          __$$_GetCareGiverServiceListCopyWithImpl<_$_GetCareGiverServiceList>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getCareGiverDetail,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverEarningList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceRequestList,
    required TResult Function(DateTime selectedDate) getSelectedDate,
    required TResult Function(List<ServiceDates> services)
        getSelectedScheduleServices,
  }) {
    return getCareGiverServiceList(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getCareGiverDetail,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult? Function(DateTime selectedDate)? getSelectedDate,
    TResult? Function(List<ServiceDates> services)? getSelectedScheduleServices,
  }) {
    return getCareGiverServiceList?.call(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getCareGiverDetail,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult Function(DateTime selectedDate)? getSelectedDate,
    TResult Function(List<ServiceDates> services)? getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getCareGiverServiceList != null) {
      return getCareGiverServiceList(userId, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverDetail value) getCareGiverDetail,
    required TResult Function(_GetCareGiverServiceList value)
        getCareGiverServiceList,
    required TResult Function(_GetCareGiverEarningList value)
        getCareGiverEarningList,
    required TResult Function(_GetCareGiverServiceRequestList value)
        getCareGiverServiceRequestList,
    required TResult Function(_GetSelectedDate value) getSelectedDate,
    required TResult Function(_GetSelectedScheduleServices value)
        getSelectedScheduleServices,
  }) {
    return getCareGiverServiceList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult? Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult? Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult? Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult? Function(_GetSelectedDate value)? getSelectedDate,
    TResult? Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
  }) {
    return getCareGiverServiceList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult Function(_GetSelectedDate value)? getSelectedDate,
    TResult Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getCareGiverServiceList != null) {
      return getCareGiverServiceList(this);
    }
    return orElse();
  }
}

abstract class _GetCareGiverServiceList implements CareGiverDetailEvent {
  const factory _GetCareGiverServiceList(
      {required final String userId,
      required final int page,
      required final int limit}) = _$_GetCareGiverServiceList;

  String get userId;
  int get page;
  int get limit;
  @JsonKey(ignore: true)
  _$$_GetCareGiverServiceListCopyWith<_$_GetCareGiverServiceList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCareGiverEarningListCopyWith<$Res> {
  factory _$$_GetCareGiverEarningListCopyWith(_$_GetCareGiverEarningList value,
          $Res Function(_$_GetCareGiverEarningList) then) =
      __$$_GetCareGiverEarningListCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int page, int limit});
}

/// @nodoc
class __$$_GetCareGiverEarningListCopyWithImpl<$Res>
    extends _$CareGiverDetailEventCopyWithImpl<$Res, _$_GetCareGiverEarningList>
    implements _$$_GetCareGiverEarningListCopyWith<$Res> {
  __$$_GetCareGiverEarningListCopyWithImpl(_$_GetCareGiverEarningList _value,
      $Res Function(_$_GetCareGiverEarningList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_GetCareGiverEarningList(
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

class _$_GetCareGiverEarningList implements _GetCareGiverEarningList {
  const _$_GetCareGiverEarningList(
      {required this.userId, required this.page, required this.limit});

  @override
  final String userId;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'CareGiverDetailEvent.getCareGiverEarningList(userId: $userId, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGiverEarningList &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiverEarningListCopyWith<_$_GetCareGiverEarningList>
      get copyWith =>
          __$$_GetCareGiverEarningListCopyWithImpl<_$_GetCareGiverEarningList>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getCareGiverDetail,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverEarningList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceRequestList,
    required TResult Function(DateTime selectedDate) getSelectedDate,
    required TResult Function(List<ServiceDates> services)
        getSelectedScheduleServices,
  }) {
    return getCareGiverEarningList(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getCareGiverDetail,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult? Function(DateTime selectedDate)? getSelectedDate,
    TResult? Function(List<ServiceDates> services)? getSelectedScheduleServices,
  }) {
    return getCareGiverEarningList?.call(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getCareGiverDetail,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult Function(DateTime selectedDate)? getSelectedDate,
    TResult Function(List<ServiceDates> services)? getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getCareGiverEarningList != null) {
      return getCareGiverEarningList(userId, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverDetail value) getCareGiverDetail,
    required TResult Function(_GetCareGiverServiceList value)
        getCareGiverServiceList,
    required TResult Function(_GetCareGiverEarningList value)
        getCareGiverEarningList,
    required TResult Function(_GetCareGiverServiceRequestList value)
        getCareGiverServiceRequestList,
    required TResult Function(_GetSelectedDate value) getSelectedDate,
    required TResult Function(_GetSelectedScheduleServices value)
        getSelectedScheduleServices,
  }) {
    return getCareGiverEarningList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult? Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult? Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult? Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult? Function(_GetSelectedDate value)? getSelectedDate,
    TResult? Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
  }) {
    return getCareGiverEarningList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult Function(_GetSelectedDate value)? getSelectedDate,
    TResult Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getCareGiverEarningList != null) {
      return getCareGiverEarningList(this);
    }
    return orElse();
  }
}

abstract class _GetCareGiverEarningList implements CareGiverDetailEvent {
  const factory _GetCareGiverEarningList(
      {required final String userId,
      required final int page,
      required final int limit}) = _$_GetCareGiverEarningList;

  String get userId;
  int get page;
  int get limit;
  @JsonKey(ignore: true)
  _$$_GetCareGiverEarningListCopyWith<_$_GetCareGiverEarningList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCareGiverServiceRequestListCopyWith<$Res> {
  factory _$$_GetCareGiverServiceRequestListCopyWith(
          _$_GetCareGiverServiceRequestList value,
          $Res Function(_$_GetCareGiverServiceRequestList) then) =
      __$$_GetCareGiverServiceRequestListCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int page, int limit});
}

/// @nodoc
class __$$_GetCareGiverServiceRequestListCopyWithImpl<$Res>
    extends _$CareGiverDetailEventCopyWithImpl<$Res,
        _$_GetCareGiverServiceRequestList>
    implements _$$_GetCareGiverServiceRequestListCopyWith<$Res> {
  __$$_GetCareGiverServiceRequestListCopyWithImpl(
      _$_GetCareGiverServiceRequestList _value,
      $Res Function(_$_GetCareGiverServiceRequestList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_GetCareGiverServiceRequestList(
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

class _$_GetCareGiverServiceRequestList
    implements _GetCareGiverServiceRequestList {
  const _$_GetCareGiverServiceRequestList(
      {required this.userId, required this.page, required this.limit});

  @override
  final String userId;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'CareGiverDetailEvent.getCareGiverServiceRequestList(userId: $userId, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGiverServiceRequestList &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiverServiceRequestListCopyWith<_$_GetCareGiverServiceRequestList>
      get copyWith => __$$_GetCareGiverServiceRequestListCopyWithImpl<
          _$_GetCareGiverServiceRequestList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getCareGiverDetail,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverEarningList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceRequestList,
    required TResult Function(DateTime selectedDate) getSelectedDate,
    required TResult Function(List<ServiceDates> services)
        getSelectedScheduleServices,
  }) {
    return getCareGiverServiceRequestList(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getCareGiverDetail,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult? Function(DateTime selectedDate)? getSelectedDate,
    TResult? Function(List<ServiceDates> services)? getSelectedScheduleServices,
  }) {
    return getCareGiverServiceRequestList?.call(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getCareGiverDetail,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult Function(DateTime selectedDate)? getSelectedDate,
    TResult Function(List<ServiceDates> services)? getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getCareGiverServiceRequestList != null) {
      return getCareGiverServiceRequestList(userId, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverDetail value) getCareGiverDetail,
    required TResult Function(_GetCareGiverServiceList value)
        getCareGiverServiceList,
    required TResult Function(_GetCareGiverEarningList value)
        getCareGiverEarningList,
    required TResult Function(_GetCareGiverServiceRequestList value)
        getCareGiverServiceRequestList,
    required TResult Function(_GetSelectedDate value) getSelectedDate,
    required TResult Function(_GetSelectedScheduleServices value)
        getSelectedScheduleServices,
  }) {
    return getCareGiverServiceRequestList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult? Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult? Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult? Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult? Function(_GetSelectedDate value)? getSelectedDate,
    TResult? Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
  }) {
    return getCareGiverServiceRequestList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult Function(_GetSelectedDate value)? getSelectedDate,
    TResult Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getCareGiverServiceRequestList != null) {
      return getCareGiverServiceRequestList(this);
    }
    return orElse();
  }
}

abstract class _GetCareGiverServiceRequestList implements CareGiverDetailEvent {
  const factory _GetCareGiverServiceRequestList(
      {required final String userId,
      required final int page,
      required final int limit}) = _$_GetCareGiverServiceRequestList;

  String get userId;
  int get page;
  int get limit;
  @JsonKey(ignore: true)
  _$$_GetCareGiverServiceRequestListCopyWith<_$_GetCareGiverServiceRequestList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSelectedDateCopyWith<$Res> {
  factory _$$_GetSelectedDateCopyWith(
          _$_GetSelectedDate value, $Res Function(_$_GetSelectedDate) then) =
      __$$_GetSelectedDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$_GetSelectedDateCopyWithImpl<$Res>
    extends _$CareGiverDetailEventCopyWithImpl<$Res, _$_GetSelectedDate>
    implements _$$_GetSelectedDateCopyWith<$Res> {
  __$$_GetSelectedDateCopyWithImpl(
      _$_GetSelectedDate _value, $Res Function(_$_GetSelectedDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$_GetSelectedDate(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GetSelectedDate implements _GetSelectedDate {
  const _$_GetSelectedDate({required this.selectedDate});

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'CareGiverDetailEvent.getSelectedDate(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSelectedDate &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSelectedDateCopyWith<_$_GetSelectedDate> get copyWith =>
      __$$_GetSelectedDateCopyWithImpl<_$_GetSelectedDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getCareGiverDetail,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverEarningList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceRequestList,
    required TResult Function(DateTime selectedDate) getSelectedDate,
    required TResult Function(List<ServiceDates> services)
        getSelectedScheduleServices,
  }) {
    return getSelectedDate(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getCareGiverDetail,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult? Function(DateTime selectedDate)? getSelectedDate,
    TResult? Function(List<ServiceDates> services)? getSelectedScheduleServices,
  }) {
    return getSelectedDate?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getCareGiverDetail,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult Function(DateTime selectedDate)? getSelectedDate,
    TResult Function(List<ServiceDates> services)? getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getSelectedDate != null) {
      return getSelectedDate(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverDetail value) getCareGiverDetail,
    required TResult Function(_GetCareGiverServiceList value)
        getCareGiverServiceList,
    required TResult Function(_GetCareGiverEarningList value)
        getCareGiverEarningList,
    required TResult Function(_GetCareGiverServiceRequestList value)
        getCareGiverServiceRequestList,
    required TResult Function(_GetSelectedDate value) getSelectedDate,
    required TResult Function(_GetSelectedScheduleServices value)
        getSelectedScheduleServices,
  }) {
    return getSelectedDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult? Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult? Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult? Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult? Function(_GetSelectedDate value)? getSelectedDate,
    TResult? Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
  }) {
    return getSelectedDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult Function(_GetSelectedDate value)? getSelectedDate,
    TResult Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getSelectedDate != null) {
      return getSelectedDate(this);
    }
    return orElse();
  }
}

abstract class _GetSelectedDate implements CareGiverDetailEvent {
  const factory _GetSelectedDate({required final DateTime selectedDate}) =
      _$_GetSelectedDate;

  DateTime get selectedDate;
  @JsonKey(ignore: true)
  _$$_GetSelectedDateCopyWith<_$_GetSelectedDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSelectedScheduleServicesCopyWith<$Res> {
  factory _$$_GetSelectedScheduleServicesCopyWith(
          _$_GetSelectedScheduleServices value,
          $Res Function(_$_GetSelectedScheduleServices) then) =
      __$$_GetSelectedScheduleServicesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ServiceDates> services});
}

/// @nodoc
class __$$_GetSelectedScheduleServicesCopyWithImpl<$Res>
    extends _$CareGiverDetailEventCopyWithImpl<$Res,
        _$_GetSelectedScheduleServices>
    implements _$$_GetSelectedScheduleServicesCopyWith<$Res> {
  __$$_GetSelectedScheduleServicesCopyWithImpl(
      _$_GetSelectedScheduleServices _value,
      $Res Function(_$_GetSelectedScheduleServices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$_GetSelectedScheduleServices(
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceDates>,
    ));
  }
}

/// @nodoc

class _$_GetSelectedScheduleServices implements _GetSelectedScheduleServices {
  const _$_GetSelectedScheduleServices(
      {required final List<ServiceDates> services})
      : _services = services;

  final List<ServiceDates> _services;
  @override
  List<ServiceDates> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'CareGiverDetailEvent.getSelectedScheduleServices(services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSelectedScheduleServices &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSelectedScheduleServicesCopyWith<_$_GetSelectedScheduleServices>
      get copyWith => __$$_GetSelectedScheduleServicesCopyWithImpl<
          _$_GetSelectedScheduleServices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getCareGiverDetail,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverEarningList,
    required TResult Function(String userId, int page, int limit)
        getCareGiverServiceRequestList,
    required TResult Function(DateTime selectedDate) getSelectedDate,
    required TResult Function(List<ServiceDates> services)
        getSelectedScheduleServices,
  }) {
    return getSelectedScheduleServices(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getCareGiverDetail,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult? Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult? Function(DateTime selectedDate)? getSelectedDate,
    TResult? Function(List<ServiceDates> services)? getSelectedScheduleServices,
  }) {
    return getSelectedScheduleServices?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getCareGiverDetail,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverEarningList,
    TResult Function(String userId, int page, int limit)?
        getCareGiverServiceRequestList,
    TResult Function(DateTime selectedDate)? getSelectedDate,
    TResult Function(List<ServiceDates> services)? getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getSelectedScheduleServices != null) {
      return getSelectedScheduleServices(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverDetail value) getCareGiverDetail,
    required TResult Function(_GetCareGiverServiceList value)
        getCareGiverServiceList,
    required TResult Function(_GetCareGiverEarningList value)
        getCareGiverEarningList,
    required TResult Function(_GetCareGiverServiceRequestList value)
        getCareGiverServiceRequestList,
    required TResult Function(_GetSelectedDate value) getSelectedDate,
    required TResult Function(_GetSelectedScheduleServices value)
        getSelectedScheduleServices,
  }) {
    return getSelectedScheduleServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult? Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult? Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult? Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult? Function(_GetSelectedDate value)? getSelectedDate,
    TResult? Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
  }) {
    return getSelectedScheduleServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverDetail value)? getCareGiverDetail,
    TResult Function(_GetCareGiverServiceList value)? getCareGiverServiceList,
    TResult Function(_GetCareGiverEarningList value)? getCareGiverEarningList,
    TResult Function(_GetCareGiverServiceRequestList value)?
        getCareGiverServiceRequestList,
    TResult Function(_GetSelectedDate value)? getSelectedDate,
    TResult Function(_GetSelectedScheduleServices value)?
        getSelectedScheduleServices,
    required TResult orElse(),
  }) {
    if (getSelectedScheduleServices != null) {
      return getSelectedScheduleServices(this);
    }
    return orElse();
  }
}

abstract class _GetSelectedScheduleServices implements CareGiverDetailEvent {
  const factory _GetSelectedScheduleServices(
          {required final List<ServiceDates> services}) =
      _$_GetSelectedScheduleServices;

  List<ServiceDates> get services;
  @JsonKey(ignore: true)
  _$$_GetSelectedScheduleServicesCopyWith<_$_GetSelectedScheduleServices>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CareGiverDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingServices => throw _privateConstructorUsedError;
  dynamic get isLoadingEarnings => throw _privateConstructorUsedError;
  dynamic get isLoadingServiceRequest => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CareGiverDetailResponse? get response => throw _privateConstructorUsedError;
  CareGiverServiceListResponse? get serviceListResponse =>
      throw _privateConstructorUsedError;
  CareGiverEarningsListResponse? get earningsListResponse =>
      throw _privateConstructorUsedError;
  CareGiverServiceRequestListResponse? get serviceRequestListResponse =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  List<ServiceDates> get selectedScheduleServices =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CareGiverDetailStateCopyWith<CareGiverDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiverDetailStateCopyWith<$Res> {
  factory $CareGiverDetailStateCopyWith(CareGiverDetailState value,
          $Res Function(CareGiverDetailState) then) =
      _$CareGiverDetailStateCopyWithImpl<$Res, CareGiverDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingServices,
      dynamic isLoadingEarnings,
      dynamic isLoadingServiceRequest,
      bool isError,
      CareGiverDetailResponse? response,
      CareGiverServiceListResponse? serviceListResponse,
      CareGiverEarningsListResponse? earningsListResponse,
      CareGiverServiceRequestListResponse? serviceRequestListResponse,
      String? error,
      DateTime selectedDate,
      List<ServiceDates> selectedScheduleServices});
}

/// @nodoc
class _$CareGiverDetailStateCopyWithImpl<$Res,
        $Val extends CareGiverDetailState>
    implements $CareGiverDetailStateCopyWith<$Res> {
  _$CareGiverDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingServices = null,
    Object? isLoadingEarnings = null,
    Object? isLoadingServiceRequest = null,
    Object? isError = null,
    Object? response = freezed,
    Object? serviceListResponse = freezed,
    Object? earningsListResponse = freezed,
    Object? serviceRequestListResponse = freezed,
    Object? error = freezed,
    Object? selectedDate = null,
    Object? selectedScheduleServices = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingServices: null == isLoadingServices
          ? _value.isLoadingServices
          : isLoadingServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingEarnings: null == isLoadingEarnings
          ? _value.isLoadingEarnings
          : isLoadingEarnings // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoadingServiceRequest: null == isLoadingServiceRequest
          ? _value.isLoadingServiceRequest
          : isLoadingServiceRequest // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CareGiverDetailResponse?,
      serviceListResponse: freezed == serviceListResponse
          ? _value.serviceListResponse
          : serviceListResponse // ignore: cast_nullable_to_non_nullable
              as CareGiverServiceListResponse?,
      earningsListResponse: freezed == earningsListResponse
          ? _value.earningsListResponse
          : earningsListResponse // ignore: cast_nullable_to_non_nullable
              as CareGiverEarningsListResponse?,
      serviceRequestListResponse: freezed == serviceRequestListResponse
          ? _value.serviceRequestListResponse
          : serviceRequestListResponse // ignore: cast_nullable_to_non_nullable
              as CareGiverServiceRequestListResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedScheduleServices: null == selectedScheduleServices
          ? _value.selectedScheduleServices
          : selectedScheduleServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceDates>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CareGiversDetailStateCopyWith<$Res>
    implements $CareGiverDetailStateCopyWith<$Res> {
  factory _$$_CareGiversDetailStateCopyWith(_$_CareGiversDetailState value,
          $Res Function(_$_CareGiversDetailState) then) =
      __$$_CareGiversDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingServices,
      dynamic isLoadingEarnings,
      dynamic isLoadingServiceRequest,
      bool isError,
      CareGiverDetailResponse? response,
      CareGiverServiceListResponse? serviceListResponse,
      CareGiverEarningsListResponse? earningsListResponse,
      CareGiverServiceRequestListResponse? serviceRequestListResponse,
      String? error,
      DateTime selectedDate,
      List<ServiceDates> selectedScheduleServices});
}

/// @nodoc
class __$$_CareGiversDetailStateCopyWithImpl<$Res>
    extends _$CareGiverDetailStateCopyWithImpl<$Res, _$_CareGiversDetailState>
    implements _$$_CareGiversDetailStateCopyWith<$Res> {
  __$$_CareGiversDetailStateCopyWithImpl(_$_CareGiversDetailState _value,
      $Res Function(_$_CareGiversDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingServices = null,
    Object? isLoadingEarnings = null,
    Object? isLoadingServiceRequest = null,
    Object? isError = null,
    Object? response = freezed,
    Object? serviceListResponse = freezed,
    Object? earningsListResponse = freezed,
    Object? serviceRequestListResponse = freezed,
    Object? error = freezed,
    Object? selectedDate = null,
    Object? selectedScheduleServices = null,
  }) {
    return _then(_$_CareGiversDetailState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingServices: null == isLoadingServices
          ? _value.isLoadingServices
          : isLoadingServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingEarnings: null == isLoadingEarnings
          ? _value.isLoadingEarnings
          : isLoadingEarnings,
      isLoadingServiceRequest: null == isLoadingServiceRequest
          ? _value.isLoadingServiceRequest
          : isLoadingServiceRequest,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CareGiverDetailResponse?,
      serviceListResponse: freezed == serviceListResponse
          ? _value.serviceListResponse
          : serviceListResponse // ignore: cast_nullable_to_non_nullable
              as CareGiverServiceListResponse?,
      earningsListResponse: freezed == earningsListResponse
          ? _value.earningsListResponse
          : earningsListResponse // ignore: cast_nullable_to_non_nullable
              as CareGiverEarningsListResponse?,
      serviceRequestListResponse: freezed == serviceRequestListResponse
          ? _value.serviceRequestListResponse
          : serviceRequestListResponse // ignore: cast_nullable_to_non_nullable
              as CareGiverServiceRequestListResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedScheduleServices: null == selectedScheduleServices
          ? _value._selectedScheduleServices
          : selectedScheduleServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceDates>,
    ));
  }
}

/// @nodoc

class _$_CareGiversDetailState implements _CareGiversDetailState {
  const _$_CareGiversDetailState(
      {required this.isLoading,
      this.isLoadingServices = false,
      this.isLoadingEarnings = false,
      this.isLoadingServiceRequest = false,
      required this.isError,
      required this.response,
      required this.serviceListResponse,
      required this.earningsListResponse,
      required this.serviceRequestListResponse,
      required this.error,
      required this.selectedDate,
      required final List<ServiceDates> selectedScheduleServices})
      : _selectedScheduleServices = selectedScheduleServices;

  @override
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingServices;
  @override
  @JsonKey()
  final dynamic isLoadingEarnings;
  @override
  @JsonKey()
  final dynamic isLoadingServiceRequest;
  @override
  final bool isError;
  @override
  final CareGiverDetailResponse? response;
  @override
  final CareGiverServiceListResponse? serviceListResponse;
  @override
  final CareGiverEarningsListResponse? earningsListResponse;
  @override
  final CareGiverServiceRequestListResponse? serviceRequestListResponse;
  @override
  final String? error;
  @override
  final DateTime selectedDate;
  final List<ServiceDates> _selectedScheduleServices;
  @override
  List<ServiceDates> get selectedScheduleServices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedScheduleServices);
  }

  @override
  String toString() {
    return 'CareGiverDetailState(isLoading: $isLoading, isLoadingServices: $isLoadingServices, isLoadingEarnings: $isLoadingEarnings, isLoadingServiceRequest: $isLoadingServiceRequest, isError: $isError, response: $response, serviceListResponse: $serviceListResponse, earningsListResponse: $earningsListResponse, serviceRequestListResponse: $serviceRequestListResponse, error: $error, selectedDate: $selectedDate, selectedScheduleServices: $selectedScheduleServices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CareGiversDetailState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingServices, isLoadingServices) ||
                other.isLoadingServices == isLoadingServices) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingEarnings, isLoadingEarnings) &&
            const DeepCollectionEquality().equals(
                other.isLoadingServiceRequest, isLoadingServiceRequest) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.serviceListResponse, serviceListResponse) ||
                other.serviceListResponse == serviceListResponse) &&
            (identical(other.earningsListResponse, earningsListResponse) ||
                other.earningsListResponse == earningsListResponse) &&
            (identical(other.serviceRequestListResponse,
                    serviceRequestListResponse) ||
                other.serviceRequestListResponse ==
                    serviceRequestListResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality().equals(
                other._selectedScheduleServices, _selectedScheduleServices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoadingServices,
      const DeepCollectionEquality().hash(isLoadingEarnings),
      const DeepCollectionEquality().hash(isLoadingServiceRequest),
      isError,
      response,
      serviceListResponse,
      earningsListResponse,
      serviceRequestListResponse,
      error,
      selectedDate,
      const DeepCollectionEquality().hash(_selectedScheduleServices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CareGiversDetailStateCopyWith<_$_CareGiversDetailState> get copyWith =>
      __$$_CareGiversDetailStateCopyWithImpl<_$_CareGiversDetailState>(
          this, _$identity);
}

abstract class _CareGiversDetailState implements CareGiverDetailState {
  const factory _CareGiversDetailState(
          {required final bool isLoading,
          final bool isLoadingServices,
          final dynamic isLoadingEarnings,
          final dynamic isLoadingServiceRequest,
          required final bool isError,
          required final CareGiverDetailResponse? response,
          required final CareGiverServiceListResponse? serviceListResponse,
          required final CareGiverEarningsListResponse? earningsListResponse,
          required final CareGiverServiceRequestListResponse?
              serviceRequestListResponse,
          required final String? error,
          required final DateTime selectedDate,
          required final List<ServiceDates> selectedScheduleServices}) =
      _$_CareGiversDetailState;

  @override
  bool get isLoading;
  @override
  bool get isLoadingServices;
  @override
  dynamic get isLoadingEarnings;
  @override
  dynamic get isLoadingServiceRequest;
  @override
  bool get isError;
  @override
  CareGiverDetailResponse? get response;
  @override
  CareGiverServiceListResponse? get serviceListResponse;
  @override
  CareGiverEarningsListResponse? get earningsListResponse;
  @override
  CareGiverServiceRequestListResponse? get serviceRequestListResponse;
  @override
  String? get error;
  @override
  DateTime get selectedDate;
  @override
  List<ServiceDates> get selectedScheduleServices;
  @override
  @JsonKey(ignore: true)
  _$$_CareGiversDetailStateCopyWith<_$_CareGiversDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
