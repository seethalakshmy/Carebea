// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int filterId) changeAxis,
    required TResult Function(String userId, String year,
            bool isCallAlertApiCall, String? fromData, String? toDate)
        getDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int filterId)? changeAxis,
    TResult? Function(String userId, String year, bool isCallAlertApiCall,
            String? fromData, String? toDate)?
        getDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int filterId)? changeAxis,
    TResult Function(String userId, String year, bool isCallAlertApiCall,
            String? fromData, String? toDate)?
        getDashboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeAxis value) changeAxis,
    required TResult Function(_GetDashboard value) getDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeAxis value)? changeAxis,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeAxis value)? changeAxis,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeAxisCopyWith<$Res> {
  factory _$$_ChangeAxisCopyWith(
          _$_ChangeAxis value, $Res Function(_$_ChangeAxis) then) =
      __$$_ChangeAxisCopyWithImpl<$Res>;
  @useResult
  $Res call({int filterId});
}

/// @nodoc
class __$$_ChangeAxisCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_ChangeAxis>
    implements _$$_ChangeAxisCopyWith<$Res> {
  __$$_ChangeAxisCopyWithImpl(
      _$_ChangeAxis _value, $Res Function(_$_ChangeAxis) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterId = null,
  }) {
    return _then(_$_ChangeAxis(
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeAxis implements _ChangeAxis {
  const _$_ChangeAxis({required this.filterId});

  @override
  final int filterId;

  @override
  String toString() {
    return 'DashboardEvent.changeAxis(filterId: $filterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAxis &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAxisCopyWith<_$_ChangeAxis> get copyWith =>
      __$$_ChangeAxisCopyWithImpl<_$_ChangeAxis>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int filterId) changeAxis,
    required TResult Function(String userId, String year,
            bool isCallAlertApiCall, String? fromData, String? toDate)
        getDashboard,
  }) {
    return changeAxis(filterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int filterId)? changeAxis,
    TResult? Function(String userId, String year, bool isCallAlertApiCall,
            String? fromData, String? toDate)?
        getDashboard,
  }) {
    return changeAxis?.call(filterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int filterId)? changeAxis,
    TResult Function(String userId, String year, bool isCallAlertApiCall,
            String? fromData, String? toDate)?
        getDashboard,
    required TResult orElse(),
  }) {
    if (changeAxis != null) {
      return changeAxis(filterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeAxis value) changeAxis,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return changeAxis(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeAxis value)? changeAxis,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return changeAxis?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeAxis value)? changeAxis,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (changeAxis != null) {
      return changeAxis(this);
    }
    return orElse();
  }
}

abstract class _ChangeAxis implements DashboardEvent {
  const factory _ChangeAxis({required final int filterId}) = _$_ChangeAxis;

  int get filterId;
  @JsonKey(ignore: true)
  _$$_ChangeAxisCopyWith<_$_ChangeAxis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetDashboardCopyWith<$Res> {
  factory _$$_GetDashboardCopyWith(
          _$_GetDashboard value, $Res Function(_$_GetDashboard) then) =
      __$$_GetDashboardCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String year,
      bool isCallAlertApiCall,
      String? fromData,
      String? toDate});
}

/// @nodoc
class __$$_GetDashboardCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_GetDashboard>
    implements _$$_GetDashboardCopyWith<$Res> {
  __$$_GetDashboardCopyWithImpl(
      _$_GetDashboard _value, $Res Function(_$_GetDashboard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? year = null,
    Object? isCallAlertApiCall = null,
    Object? fromData = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$_GetDashboard(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      isCallAlertApiCall: null == isCallAlertApiCall
          ? _value.isCallAlertApiCall
          : isCallAlertApiCall // ignore: cast_nullable_to_non_nullable
              as bool,
      fromData: freezed == fromData
          ? _value.fromData
          : fromData // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetDashboard implements _GetDashboard {
  const _$_GetDashboard(
      {required this.userId,
      required this.year,
      required this.isCallAlertApiCall,
      this.fromData,
      this.toDate});

  @override
  final String userId;
  @override
  final String year;
  @override
  final bool isCallAlertApiCall;
  @override
  final String? fromData;
  @override
  final String? toDate;

  @override
  String toString() {
    return 'DashboardEvent.getDashboard(userId: $userId, year: $year, isCallAlertApiCall: $isCallAlertApiCall, fromData: $fromData, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDashboard &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.isCallAlertApiCall, isCallAlertApiCall) ||
                other.isCallAlertApiCall == isCallAlertApiCall) &&
            (identical(other.fromData, fromData) ||
                other.fromData == fromData) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, year, isCallAlertApiCall, fromData, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDashboardCopyWith<_$_GetDashboard> get copyWith =>
      __$$_GetDashboardCopyWithImpl<_$_GetDashboard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int filterId) changeAxis,
    required TResult Function(String userId, String year,
            bool isCallAlertApiCall, String? fromData, String? toDate)
        getDashboard,
  }) {
    return getDashboard(userId, year, isCallAlertApiCall, fromData, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int filterId)? changeAxis,
    TResult? Function(String userId, String year, bool isCallAlertApiCall,
            String? fromData, String? toDate)?
        getDashboard,
  }) {
    return getDashboard?.call(
        userId, year, isCallAlertApiCall, fromData, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int filterId)? changeAxis,
    TResult Function(String userId, String year, bool isCallAlertApiCall,
            String? fromData, String? toDate)?
        getDashboard,
    required TResult orElse(),
  }) {
    if (getDashboard != null) {
      return getDashboard(userId, year, isCallAlertApiCall, fromData, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeAxis value) changeAxis,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return getDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeAxis value)? changeAxis,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return getDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeAxis value)? changeAxis,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (getDashboard != null) {
      return getDashboard(this);
    }
    return orElse();
  }
}

abstract class _GetDashboard implements DashboardEvent {
  const factory _GetDashboard(
      {required final String userId,
      required final String year,
      required final bool isCallAlertApiCall,
      final String? fromData,
      final String? toDate}) = _$_GetDashboard;

  String get userId;
  String get year;
  bool get isCallAlertApiCall;
  String? get fromData;
  String? get toDate;
  @JsonKey(ignore: true)
  _$$_GetDashboardCopyWith<_$_GetDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  int get filterId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  AlertResponse? get alertResponse => throw _privateConstructorUsedError;
  DashboardResponse? get dashboardResponse =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {int filterId,
      bool isLoading,
      bool isError,
      AlertResponse? alertResponse,
      DashboardResponse? dashboardResponse,
      String? error,
      bool isClientError});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterId = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? alertResponse = freezed,
    Object? dashboardResponse = freezed,
    Object? error = freezed,
    Object? isClientError = null,
  }) {
    return _then(_value.copyWith(
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      alertResponse: freezed == alertResponse
          ? _value.alertResponse
          : alertResponse // ignore: cast_nullable_to_non_nullable
              as AlertResponse?,
      dashboardResponse: freezed == dashboardResponse
          ? _value.dashboardResponse
          : dashboardResponse // ignore: cast_nullable_to_non_nullable
              as DashboardResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_DashboardStateCopyWith(
          _$_DashboardState value, $Res Function(_$_DashboardState) then) =
      __$$_DashboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int filterId,
      bool isLoading,
      bool isError,
      AlertResponse? alertResponse,
      DashboardResponse? dashboardResponse,
      String? error,
      bool isClientError});
}

/// @nodoc
class __$$_DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_DashboardState>
    implements _$$_DashboardStateCopyWith<$Res> {
  __$$_DashboardStateCopyWithImpl(
      _$_DashboardState _value, $Res Function(_$_DashboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterId = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? alertResponse = freezed,
    Object? dashboardResponse = freezed,
    Object? error = freezed,
    Object? isClientError = null,
  }) {
    return _then(_$_DashboardState(
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      alertResponse: freezed == alertResponse
          ? _value.alertResponse
          : alertResponse // ignore: cast_nullable_to_non_nullable
              as AlertResponse?,
      dashboardResponse: freezed == dashboardResponse
          ? _value.dashboardResponse
          : dashboardResponse // ignore: cast_nullable_to_non_nullable
              as DashboardResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {required this.filterId,
      required this.isLoading,
      required this.isError,
      required this.alertResponse,
      required this.dashboardResponse,
      required this.error,
      this.isClientError = false});

  @override
  final int filterId;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final AlertResponse? alertResponse;
  @override
  final DashboardResponse? dashboardResponse;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'DashboardState(filterId: $filterId, isLoading: $isLoading, isError: $isError, alertResponse: $alertResponse, dashboardResponse: $dashboardResponse, error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardState &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.alertResponse, alertResponse) ||
                other.alertResponse == alertResponse) &&
            (identical(other.dashboardResponse, dashboardResponse) ||
                other.dashboardResponse == dashboardResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterId, isLoading, isError,
      alertResponse, dashboardResponse, error, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      __$$_DashboardStateCopyWithImpl<_$_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final int filterId,
      required final bool isLoading,
      required final bool isError,
      required final AlertResponse? alertResponse,
      required final DashboardResponse? dashboardResponse,
      required final String? error,
      final bool isClientError}) = _$_DashboardState;

  @override
  int get filterId;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  AlertResponse? get alertResponse;
  @override
  DashboardResponse? get dashboardResponse;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
