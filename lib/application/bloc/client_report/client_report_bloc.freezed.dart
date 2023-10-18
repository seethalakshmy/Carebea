// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientReportState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<String> get xAxis => throw _privateConstructorUsedError;
  List<String> get yAxis => throw _privateConstructorUsedError;
  ClientReportResponse? get clientReportResponse =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientReportStateCopyWith<ClientReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientReportStateCopyWith<$Res> {
  factory $ClientReportStateCopyWith(
          ClientReportState value, $Res Function(ClientReportState) then) =
      _$ClientReportStateCopyWithImpl<$Res, ClientReportState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<String> xAxis,
      List<String> yAxis,
      ClientReportResponse? clientReportResponse,
      String? error});
}

/// @nodoc
class _$ClientReportStateCopyWithImpl<$Res, $Val extends ClientReportState>
    implements $ClientReportStateCopyWith<$Res> {
  _$ClientReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? xAxis = null,
    Object? yAxis = null,
    Object? clientReportResponse = freezed,
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
      xAxis: null == xAxis
          ? _value.xAxis
          : xAxis // ignore: cast_nullable_to_non_nullable
              as List<String>,
      yAxis: null == yAxis
          ? _value.yAxis
          : yAxis // ignore: cast_nullable_to_non_nullable
              as List<String>,
      clientReportResponse: freezed == clientReportResponse
          ? _value.clientReportResponse
          : clientReportResponse // ignore: cast_nullable_to_non_nullable
              as ClientReportResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientReportStateCopyWith<$Res>
    implements $ClientReportStateCopyWith<$Res> {
  factory _$$_ClientReportStateCopyWith(_$_ClientReportState value,
          $Res Function(_$_ClientReportState) then) =
      __$$_ClientReportStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<String> xAxis,
      List<String> yAxis,
      ClientReportResponse? clientReportResponse,
      String? error});
}

/// @nodoc
class __$$_ClientReportStateCopyWithImpl<$Res>
    extends _$ClientReportStateCopyWithImpl<$Res, _$_ClientReportState>
    implements _$$_ClientReportStateCopyWith<$Res> {
  __$$_ClientReportStateCopyWithImpl(
      _$_ClientReportState _value, $Res Function(_$_ClientReportState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? xAxis = null,
    Object? yAxis = null,
    Object? clientReportResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ClientReportState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      xAxis: null == xAxis
          ? _value._xAxis
          : xAxis // ignore: cast_nullable_to_non_nullable
              as List<String>,
      yAxis: null == yAxis
          ? _value._yAxis
          : yAxis // ignore: cast_nullable_to_non_nullable
              as List<String>,
      clientReportResponse: freezed == clientReportResponse
          ? _value.clientReportResponse
          : clientReportResponse // ignore: cast_nullable_to_non_nullable
              as ClientReportResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ClientReportState implements _ClientReportState {
  const _$_ClientReportState(
      {required this.isLoading,
      required this.isError,
      required final List<String> xAxis,
      required final List<String> yAxis,
      required this.clientReportResponse,
      required this.error})
      : _xAxis = xAxis,
        _yAxis = yAxis;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<String> _xAxis;
  @override
  List<String> get xAxis {
    if (_xAxis is EqualUnmodifiableListView) return _xAxis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_xAxis);
  }

  final List<String> _yAxis;
  @override
  List<String> get yAxis {
    if (_yAxis is EqualUnmodifiableListView) return _yAxis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yAxis);
  }

  @override
  final ClientReportResponse? clientReportResponse;
  @override
  final String? error;

  @override
  String toString() {
    return 'ClientReportState(isLoading: $isLoading, isError: $isError, xAxis: $xAxis, yAxis: $yAxis, clientReportResponse: $clientReportResponse, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientReportState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._xAxis, _xAxis) &&
            const DeepCollectionEquality().equals(other._yAxis, _yAxis) &&
            (identical(other.clientReportResponse, clientReportResponse) ||
                other.clientReportResponse == clientReportResponse) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_xAxis),
      const DeepCollectionEquality().hash(_yAxis),
      clientReportResponse,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientReportStateCopyWith<_$_ClientReportState> get copyWith =>
      __$$_ClientReportStateCopyWithImpl<_$_ClientReportState>(
          this, _$identity);
}

abstract class _ClientReportState implements ClientReportState {
  const factory _ClientReportState(
      {required final bool isLoading,
      required final bool isError,
      required final List<String> xAxis,
      required final List<String> yAxis,
      required final ClientReportResponse? clientReportResponse,
      required final String? error}) = _$_ClientReportState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<String> get xAxis;
  @override
  List<String> get yAxis;
  @override
  ClientReportResponse? get clientReportResponse;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ClientReportStateCopyWith<_$_ClientReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientReportEvent {
  String get userId => throw _privateConstructorUsedError;
  String get roleId => throw _privateConstructorUsedError;
  String get filterId => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get toDate => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            String filterId,
            String year,
            String month,
            String startDate,
            String toDate,
            String region)
        getClientReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            String filterId,
            String year,
            String month,
            String startDate,
            String toDate,
            String region)?
        getClientReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String roleId, String filterId, String year,
            String month, String startDate, String toDate, String region)?
        getClientReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClientReport value) getClientReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClientReport value)? getClientReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClientReport value)? getClientReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientReportEventCopyWith<ClientReportEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientReportEventCopyWith<$Res> {
  factory $ClientReportEventCopyWith(
          ClientReportEvent value, $Res Function(ClientReportEvent) then) =
      _$ClientReportEventCopyWithImpl<$Res, ClientReportEvent>;
  @useResult
  $Res call(
      {String userId,
      String roleId,
      String filterId,
      String year,
      String month,
      String startDate,
      String toDate,
      String region});
}

/// @nodoc
class _$ClientReportEventCopyWithImpl<$Res, $Val extends ClientReportEvent>
    implements $ClientReportEventCopyWith<$Res> {
  _$ClientReportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
    Object? filterId = null,
    Object? year = null,
    Object? month = null,
    Object? startDate = null,
    Object? toDate = null,
    Object? region = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetClientReportCopyWith<$Res>
    implements $ClientReportEventCopyWith<$Res> {
  factory _$$_GetClientReportCopyWith(
          _$_GetClientReport value, $Res Function(_$_GetClientReport) then) =
      __$$_GetClientReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String roleId,
      String filterId,
      String year,
      String month,
      String startDate,
      String toDate,
      String region});
}

/// @nodoc
class __$$_GetClientReportCopyWithImpl<$Res>
    extends _$ClientReportEventCopyWithImpl<$Res, _$_GetClientReport>
    implements _$$_GetClientReportCopyWith<$Res> {
  __$$_GetClientReportCopyWithImpl(
      _$_GetClientReport _value, $Res Function(_$_GetClientReport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
    Object? filterId = null,
    Object? year = null,
    Object? month = null,
    Object? startDate = null,
    Object? toDate = null,
    Object? region = null,
  }) {
    return _then(_$_GetClientReport(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetClientReport implements _GetClientReport {
  const _$_GetClientReport(
      {required this.userId,
      required this.roleId,
      required this.filterId,
      required this.year,
      required this.month,
      required this.startDate,
      required this.toDate,
      required this.region});

  @override
  final String userId;
  @override
  final String roleId;
  @override
  final String filterId;
  @override
  final String year;
  @override
  final String month;
  @override
  final String startDate;
  @override
  final String toDate;
  @override
  final String region;

  @override
  String toString() {
    return 'ClientReportEvent.getClientReport(userId: $userId, roleId: $roleId, filterId: $filterId, year: $year, month: $month, startDate: $startDate, toDate: $toDate, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClientReport &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, roleId, filterId, year,
      month, startDate, toDate, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetClientReportCopyWith<_$_GetClientReport> get copyWith =>
      __$$_GetClientReportCopyWithImpl<_$_GetClientReport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            String filterId,
            String year,
            String month,
            String startDate,
            String toDate,
            String region)
        getClientReport,
  }) {
    return getClientReport(
        userId, roleId, filterId, year, month, startDate, toDate, region);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            String filterId,
            String year,
            String month,
            String startDate,
            String toDate,
            String region)?
        getClientReport,
  }) {
    return getClientReport?.call(
        userId, roleId, filterId, year, month, startDate, toDate, region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String roleId, String filterId, String year,
            String month, String startDate, String toDate, String region)?
        getClientReport,
    required TResult orElse(),
  }) {
    if (getClientReport != null) {
      return getClientReport(
          userId, roleId, filterId, year, month, startDate, toDate, region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClientReport value) getClientReport,
  }) {
    return getClientReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClientReport value)? getClientReport,
  }) {
    return getClientReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClientReport value)? getClientReport,
    required TResult orElse(),
  }) {
    if (getClientReport != null) {
      return getClientReport(this);
    }
    return orElse();
  }
}

abstract class _GetClientReport implements ClientReportEvent {
  const factory _GetClientReport(
      {required final String userId,
      required final String roleId,
      required final String filterId,
      required final String year,
      required final String month,
      required final String startDate,
      required final String toDate,
      required final String region}) = _$_GetClientReport;

  @override
  String get userId;
  @override
  String get roleId;
  @override
  String get filterId;
  @override
  String get year;
  @override
  String get month;
  @override
  String get startDate;
  @override
  String get toDate;
  @override
  String get region;
  @override
  @JsonKey(ignore: true)
  _$$_GetClientReportCopyWith<_$_GetClientReport> get copyWith =>
      throw _privateConstructorUsedError;
}
