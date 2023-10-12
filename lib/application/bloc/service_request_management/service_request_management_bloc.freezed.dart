// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_request_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceRequestManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestManagementEventCopyWith<$Res> {
  factory $ServiceRequestManagementEventCopyWith(
          ServiceRequestManagementEvent value,
          $Res Function(ServiceRequestManagementEvent) then) =
      _$ServiceRequestManagementEventCopyWithImpl<$Res,
          ServiceRequestManagementEvent>;
}

/// @nodoc
class _$ServiceRequestManagementEventCopyWithImpl<$Res,
        $Val extends ServiceRequestManagementEvent>
    implements $ServiceRequestManagementEventCopyWith<$Res> {
  _$ServiceRequestManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCareGiverProfileCopyWith<$Res> {
  factory _$$_GetCareGiverProfileCopyWith(_$_GetCareGiverProfile value,
          $Res Function(_$_GetCareGiverProfile) then) =
      __$$_GetCareGiverProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String adminId});
}

/// @nodoc
class __$$_GetCareGiverProfileCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_GetCareGiverProfile>
    implements _$$_GetCareGiverProfileCopyWith<$Res> {
  __$$_GetCareGiverProfileCopyWithImpl(_$_GetCareGiverProfile _value,
      $Res Function(_$_GetCareGiverProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
  }) {
    return _then(_$_GetCareGiverProfile(
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

class _$_GetCareGiverProfile implements _GetCareGiverProfile {
  const _$_GetCareGiverProfile({required this.userId, required this.adminId});

  @override
  final String userId;
  @override
  final String adminId;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.getCareGiverProfile(userId: $userId, adminId: $adminId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGiverProfile &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, adminId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiverProfileCopyWith<_$_GetCareGiverProfile> get copyWith =>
      __$$_GetCareGiverProfileCopyWithImpl<_$_GetCareGiverProfile>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return getCareGiverProfile(userId, adminId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return getCareGiverProfile?.call(userId, adminId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getCareGiverProfile != null) {
      return getCareGiverProfile(userId, adminId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return getCareGiverProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return getCareGiverProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getCareGiverProfile != null) {
      return getCareGiverProfile(this);
    }
    return orElse();
  }
}

abstract class _GetCareGiverProfile implements ServiceRequestManagementEvent {
  const factory _GetCareGiverProfile(
      {required final String userId,
      required final String adminId}) = _$_GetCareGiverProfile;

  String get userId;
  String get adminId;
  @JsonKey(ignore: true)
  _$$_GetCareGiverProfileCopyWith<_$_GetCareGiverProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ServiceRequestManagementEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_IsSelectedTabCopyWith<$Res> {
  factory _$$_IsSelectedTabCopyWith(
          _$_IsSelectedTab value, $Res Function(_$_IsSelectedTab) then) =
      __$$_IsSelectedTabCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Types type,
      int? filterId,
      String? searchQuery,
      String? dateFilterId,
      String? fromDate,
      String? toDate});
}

/// @nodoc
class __$$_IsSelectedTabCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_IsSelectedTab>
    implements _$$_IsSelectedTabCopyWith<$Res> {
  __$$_IsSelectedTabCopyWithImpl(
      _$_IsSelectedTab _value, $Res Function(_$_IsSelectedTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? filterId = freezed,
    Object? searchQuery = freezed,
    Object? dateFilterId = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$_IsSelectedTab(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Types,
      filterId: freezed == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFilterId: freezed == dateFilterId
          ? _value.dateFilterId
          : dateFilterId // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_IsSelectedTab implements _IsSelectedTab {
  const _$_IsSelectedTab(this.type,
      {this.filterId,
      this.searchQuery,
      this.dateFilterId,
      this.fromDate,
      this.toDate});

  @override
  final Types type;
  @override
  final int? filterId;
  @override
  final String? searchQuery;
  @override
  final String? dateFilterId;
  @override
  final String? fromDate;
  @override
  final String? toDate;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.isSelectedTab(type: $type, filterId: $filterId, searchQuery: $searchQuery, dateFilterId: $dateFilterId, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsSelectedTab &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.dateFilterId, dateFilterId) ||
                other.dateFilterId == dateFilterId) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, filterId, searchQuery, dateFilterId, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsSelectedTabCopyWith<_$_IsSelectedTab> get copyWith =>
      __$$_IsSelectedTabCopyWithImpl<_$_IsSelectedTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return isSelectedTab(
        type, filterId, searchQuery, dateFilterId, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return isSelectedTab?.call(
        type, filterId, searchQuery, dateFilterId, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isSelectedTab != null) {
      return isSelectedTab(
          type, filterId, searchQuery, dateFilterId, fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return isSelectedTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return isSelectedTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isSelectedTab != null) {
      return isSelectedTab(this);
    }
    return orElse();
  }
}

abstract class _IsSelectedTab implements ServiceRequestManagementEvent {
  const factory _IsSelectedTab(final Types type,
      {final int? filterId,
      final String? searchQuery,
      final String? dateFilterId,
      final String? fromDate,
      final String? toDate}) = _$_IsSelectedTab;

  Types get type;
  int? get filterId;
  String? get searchQuery;
  String? get dateFilterId;
  String? get fromDate;
  String? get toDate;
  @JsonKey(ignore: true)
  _$$_IsSelectedTabCopyWith<_$_IsSelectedTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RescheduleCopyWith<$Res> {
  factory _$$_RescheduleCopyWith(
          _$_Reschedule value, $Res Function(_$_Reschedule) then) =
      __$$_RescheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({RescheduleParams rescheduleParams, BuildContext context});
}

/// @nodoc
class __$$_RescheduleCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_Reschedule>
    implements _$$_RescheduleCopyWith<$Res> {
  __$$_RescheduleCopyWithImpl(
      _$_Reschedule _value, $Res Function(_$_Reschedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rescheduleParams = null,
    Object? context = null,
  }) {
    return _then(_$_Reschedule(
      rescheduleParams: null == rescheduleParams
          ? _value.rescheduleParams
          : rescheduleParams // ignore: cast_nullable_to_non_nullable
              as RescheduleParams,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_Reschedule implements _Reschedule {
  const _$_Reschedule({required this.rescheduleParams, required this.context});

  @override
  final RescheduleParams rescheduleParams;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.reschedule(rescheduleParams: $rescheduleParams, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reschedule &&
            (identical(other.rescheduleParams, rescheduleParams) ||
                other.rescheduleParams == rescheduleParams) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rescheduleParams, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RescheduleCopyWith<_$_Reschedule> get copyWith =>
      __$$_RescheduleCopyWithImpl<_$_Reschedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return reschedule(rescheduleParams, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return reschedule?.call(rescheduleParams, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (reschedule != null) {
      return reschedule(rescheduleParams, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return reschedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return reschedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (reschedule != null) {
      return reschedule(this);
    }
    return orElse();
  }
}

abstract class _Reschedule implements ServiceRequestManagementEvent {
  const factory _Reschedule(
      {required final RescheduleParams rescheduleParams,
      required final BuildContext context}) = _$_Reschedule;

  RescheduleParams get rescheduleParams;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_RescheduleCopyWith<_$_Reschedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AssignCaregiverCopyWith<$Res> {
  factory _$$_AssignCaregiverCopyWith(
          _$_AssignCaregiver value, $Res Function(_$_AssignCaregiver) then) =
      __$$_AssignCaregiverCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AssignCareGiverParams assignCareGiverParams, BuildContext context});
}

/// @nodoc
class __$$_AssignCaregiverCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_AssignCaregiver> implements _$$_AssignCaregiverCopyWith<$Res> {
  __$$_AssignCaregiverCopyWithImpl(
      _$_AssignCaregiver _value, $Res Function(_$_AssignCaregiver) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignCareGiverParams = null,
    Object? context = null,
  }) {
    return _then(_$_AssignCaregiver(
      assignCareGiverParams: null == assignCareGiverParams
          ? _value.assignCareGiverParams
          : assignCareGiverParams // ignore: cast_nullable_to_non_nullable
              as AssignCareGiverParams,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_AssignCaregiver implements _AssignCaregiver {
  const _$_AssignCaregiver(
      {required this.assignCareGiverParams, required this.context});

  @override
  final AssignCareGiverParams assignCareGiverParams;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.assignCaregiver(assignCareGiverParams: $assignCareGiverParams, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignCaregiver &&
            (identical(other.assignCareGiverParams, assignCareGiverParams) ||
                other.assignCareGiverParams == assignCareGiverParams) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assignCareGiverParams, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignCaregiverCopyWith<_$_AssignCaregiver> get copyWith =>
      __$$_AssignCaregiverCopyWithImpl<_$_AssignCaregiver>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return assignCaregiver(assignCareGiverParams, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return assignCaregiver?.call(assignCareGiverParams, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (assignCaregiver != null) {
      return assignCaregiver(assignCareGiverParams, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return assignCaregiver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return assignCaregiver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (assignCaregiver != null) {
      return assignCaregiver(this);
    }
    return orElse();
  }
}

abstract class _AssignCaregiver implements ServiceRequestManagementEvent {
  const factory _AssignCaregiver(
      {required final AssignCareGiverParams assignCareGiverParams,
      required final BuildContext context}) = _$_AssignCaregiver;

  AssignCareGiverParams get assignCareGiverParams;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AssignCaregiverCopyWith<_$_AssignCaregiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartServiceCopyWith<$Res> {
  factory _$$_StartServiceCopyWith(
          _$_StartService value, $Res Function(_$_StartService) then) =
      __$$_StartServiceCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String serviceId, BuildContext context});
}

/// @nodoc
class __$$_StartServiceCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_StartService>
    implements _$$_StartServiceCopyWith<$Res> {
  __$$_StartServiceCopyWithImpl(
      _$_StartService _value, $Res Function(_$_StartService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? serviceId = null,
    Object? context = null,
  }) {
    return _then(_$_StartService(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_StartService implements _StartService {
  const _$_StartService(
      {required this.userId, required this.serviceId, required this.context});

  @override
  final String userId;
  @override
  final String serviceId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.startService(userId: $userId, serviceId: $serviceId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartService &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, serviceId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartServiceCopyWith<_$_StartService> get copyWith =>
      __$$_StartServiceCopyWithImpl<_$_StartService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return startService(userId, serviceId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return startService?.call(userId, serviceId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (startService != null) {
      return startService(userId, serviceId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return startService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return startService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (startService != null) {
      return startService(this);
    }
    return orElse();
  }
}

abstract class _StartService implements ServiceRequestManagementEvent {
  const factory _StartService(
      {required final String userId,
      required final String serviceId,
      required final BuildContext context}) = _$_StartService;

  String get userId;
  String get serviceId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_StartServiceCopyWith<_$_StartService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelServiceCopyWith<$Res> {
  factory _$$_CancelServiceCopyWith(
          _$_CancelService value, $Res Function(_$_CancelService) then) =
      __$$_CancelServiceCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String serviceId,
      String description,
      BuildContext context});
}

/// @nodoc
class __$$_CancelServiceCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_CancelService>
    implements _$$_CancelServiceCopyWith<$Res> {
  __$$_CancelServiceCopyWithImpl(
      _$_CancelService _value, $Res Function(_$_CancelService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? serviceId = null,
    Object? description = null,
    Object? context = null,
  }) {
    return _then(_$_CancelService(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_CancelService implements _CancelService {
  const _$_CancelService(
      {required this.userId,
      required this.serviceId,
      required this.description,
      required this.context});

  @override
  final String userId;
  @override
  final String serviceId;
  @override
  final String description;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.cancelService(userId: $userId, serviceId: $serviceId, description: $description, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelService &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, serviceId, description, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelServiceCopyWith<_$_CancelService> get copyWith =>
      __$$_CancelServiceCopyWithImpl<_$_CancelService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return cancelService(userId, serviceId, description, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return cancelService?.call(userId, serviceId, description, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (cancelService != null) {
      return cancelService(userId, serviceId, description, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return cancelService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return cancelService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (cancelService != null) {
      return cancelService(this);
    }
    return orElse();
  }
}

abstract class _CancelService implements ServiceRequestManagementEvent {
  const factory _CancelService(
      {required final String userId,
      required final String serviceId,
      required final String description,
      required final BuildContext context}) = _$_CancelService;

  String get userId;
  String get serviceId;
  String get description;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_CancelServiceCopyWith<_$_CancelService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetDateCopyWith<$Res> {
  factory _$$_SetDateCopyWith(
          _$_SetDate value, $Res Function(_$_SetDate) then) =
      __$$_SetDateCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$_SetDateCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_SetDate>
    implements _$$_SetDateCopyWith<$Res> {
  __$$_SetDateCopyWithImpl(_$_SetDate _value, $Res Function(_$_SetDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$_SetDate(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SetDate implements _SetDate {
  const _$_SetDate(this.selectedDate);

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.setDate(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetDate &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetDateCopyWith<_$_SetDate> get copyWith =>
      __$$_SetDateCopyWithImpl<_$_SetDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return setDate(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return setDate?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return setDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return setDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(this);
    }
    return orElse();
  }
}

abstract class _SetDate implements ServiceRequestManagementEvent {
  const factory _SetDate(final DateTime selectedDate) = _$_SetDate;

  DateTime get selectedDate;
  @JsonKey(ignore: true)
  _$$_SetDateCopyWith<_$_SetDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetFromTimeCopyWith<$Res> {
  factory _$$_SetFromTimeCopyWith(
          _$_SetFromTime value, $Res Function(_$_SetFromTime) then) =
      __$$_SetFromTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$_SetFromTimeCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_SetFromTime>
    implements _$$_SetFromTimeCopyWith<$Res> {
  __$$_SetFromTimeCopyWithImpl(
      _$_SetFromTime _value, $Res Function(_$_SetFromTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$_SetFromTime(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_SetFromTime implements _SetFromTime {
  const _$_SetFromTime(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.setFromTime(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetFromTime &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetFromTimeCopyWith<_$_SetFromTime> get copyWith =>
      __$$_SetFromTimeCopyWithImpl<_$_SetFromTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return setFromTime(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return setFromTime?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (setFromTime != null) {
      return setFromTime(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return setFromTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return setFromTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (setFromTime != null) {
      return setFromTime(this);
    }
    return orElse();
  }
}

abstract class _SetFromTime implements ServiceRequestManagementEvent {
  const factory _SetFromTime(final TimeOfDay time) = _$_SetFromTime;

  TimeOfDay get time;
  @JsonKey(ignore: true)
  _$$_SetFromTimeCopyWith<_$_SetFromTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetToTimeCopyWith<$Res> {
  factory _$$_SetToTimeCopyWith(
          _$_SetToTime value, $Res Function(_$_SetToTime) then) =
      __$$_SetToTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$_SetToTimeCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_SetToTime>
    implements _$$_SetToTimeCopyWith<$Res> {
  __$$_SetToTimeCopyWithImpl(
      _$_SetToTime _value, $Res Function(_$_SetToTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$_SetToTime(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_SetToTime implements _SetToTime {
  const _$_SetToTime(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.setToTime(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetToTime &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetToTimeCopyWith<_$_SetToTime> get copyWith =>
      __$$_SetToTimeCopyWithImpl<_$_SetToTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return setToTime(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return setToTime?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (setToTime != null) {
      return setToTime(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return setToTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return setToTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (setToTime != null) {
      return setToTime(this);
    }
    return orElse();
  }
}

abstract class _SetToTime implements ServiceRequestManagementEvent {
  const factory _SetToTime(final TimeOfDay time) = _$_SetToTime;

  TimeOfDay get time;
  @JsonKey(ignore: true)
  _$$_SetToTimeCopyWith<_$_SetToTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsRescheduleInitialViewCopyWith<$Res> {
  factory _$$_IsRescheduleInitialViewCopyWith(_$_IsRescheduleInitialView value,
          $Res Function(_$_IsRescheduleInitialView) then) =
      __$$_IsRescheduleInitialViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsRescheduleInitialViewCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_IsRescheduleInitialView>
    implements _$$_IsRescheduleInitialViewCopyWith<$Res> {
  __$$_IsRescheduleInitialViewCopyWithImpl(_$_IsRescheduleInitialView _value,
      $Res Function(_$_IsRescheduleInitialView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsRescheduleInitialView implements _IsRescheduleInitialView {
  const _$_IsRescheduleInitialView();

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.isRescheduleInitialView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsRescheduleInitialView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return isRescheduleInitialView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return isRescheduleInitialView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleInitialView != null) {
      return isRescheduleInitialView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return isRescheduleInitialView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return isRescheduleInitialView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleInitialView != null) {
      return isRescheduleInitialView(this);
    }
    return orElse();
  }
}

abstract class _IsRescheduleInitialView
    implements ServiceRequestManagementEvent {
  const factory _IsRescheduleInitialView() = _$_IsRescheduleInitialView;
}

/// @nodoc
abstract class _$$_IsRescheduleLoaderViewCopyWith<$Res> {
  factory _$$_IsRescheduleLoaderViewCopyWith(_$_IsRescheduleLoaderView value,
          $Res Function(_$_IsRescheduleLoaderView) then) =
      __$$_IsRescheduleLoaderViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsRescheduleLoaderViewCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_IsRescheduleLoaderView>
    implements _$$_IsRescheduleLoaderViewCopyWith<$Res> {
  __$$_IsRescheduleLoaderViewCopyWithImpl(_$_IsRescheduleLoaderView _value,
      $Res Function(_$_IsRescheduleLoaderView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsRescheduleLoaderView implements _IsRescheduleLoaderView {
  const _$_IsRescheduleLoaderView();

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.isRescheduleLoaderView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsRescheduleLoaderView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return isRescheduleLoaderView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return isRescheduleLoaderView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleLoaderView != null) {
      return isRescheduleLoaderView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return isRescheduleLoaderView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return isRescheduleLoaderView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleLoaderView != null) {
      return isRescheduleLoaderView(this);
    }
    return orElse();
  }
}

abstract class _IsRescheduleLoaderView
    implements ServiceRequestManagementEvent {
  const factory _IsRescheduleLoaderView() = _$_IsRescheduleLoaderView;
}

/// @nodoc
abstract class _$$_IsRescheduleAvailableViewCopyWith<$Res> {
  factory _$$_IsRescheduleAvailableViewCopyWith(
          _$_IsRescheduleAvailableView value,
          $Res Function(_$_IsRescheduleAvailableView) then) =
      __$$_IsRescheduleAvailableViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsRescheduleAvailableViewCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_IsRescheduleAvailableView>
    implements _$$_IsRescheduleAvailableViewCopyWith<$Res> {
  __$$_IsRescheduleAvailableViewCopyWithImpl(
      _$_IsRescheduleAvailableView _value,
      $Res Function(_$_IsRescheduleAvailableView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsRescheduleAvailableView implements _IsRescheduleAvailableView {
  const _$_IsRescheduleAvailableView();

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.isRescheduleAvailableView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsRescheduleAvailableView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return isRescheduleAvailableView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return isRescheduleAvailableView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleAvailableView != null) {
      return isRescheduleAvailableView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return isRescheduleAvailableView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return isRescheduleAvailableView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleAvailableView != null) {
      return isRescheduleAvailableView(this);
    }
    return orElse();
  }
}

abstract class _IsRescheduleAvailableView
    implements ServiceRequestManagementEvent {
  const factory _IsRescheduleAvailableView() = _$_IsRescheduleAvailableView;
}

/// @nodoc
abstract class _$$_IsRescheduleNotAvailableViewCopyWith<$Res> {
  factory _$$_IsRescheduleNotAvailableViewCopyWith(
          _$_IsRescheduleNotAvailableView value,
          $Res Function(_$_IsRescheduleNotAvailableView) then) =
      __$$_IsRescheduleNotAvailableViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsRescheduleNotAvailableViewCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_IsRescheduleNotAvailableView>
    implements _$$_IsRescheduleNotAvailableViewCopyWith<$Res> {
  __$$_IsRescheduleNotAvailableViewCopyWithImpl(
      _$_IsRescheduleNotAvailableView _value,
      $Res Function(_$_IsRescheduleNotAvailableView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsRescheduleNotAvailableView implements _IsRescheduleNotAvailableView {
  const _$_IsRescheduleNotAvailableView();

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.isRescheduleNotAvailableView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsRescheduleNotAvailableView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return isRescheduleNotAvailableView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return isRescheduleNotAvailableView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleNotAvailableView != null) {
      return isRescheduleNotAvailableView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return isRescheduleNotAvailableView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return isRescheduleNotAvailableView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleNotAvailableView != null) {
      return isRescheduleNotAvailableView(this);
    }
    return orElse();
  }
}

abstract class _IsRescheduleNotAvailableView
    implements ServiceRequestManagementEvent {
  const factory _IsRescheduleNotAvailableView() =
      _$_IsRescheduleNotAvailableView;
}

/// @nodoc
abstract class _$$_IsRescheduleOtherMatchingViewViewCopyWith<$Res> {
  factory _$$_IsRescheduleOtherMatchingViewViewCopyWith(
          _$_IsRescheduleOtherMatchingViewView value,
          $Res Function(_$_IsRescheduleOtherMatchingViewView) then) =
      __$$_IsRescheduleOtherMatchingViewViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsRescheduleOtherMatchingViewViewCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_IsRescheduleOtherMatchingViewView>
    implements _$$_IsRescheduleOtherMatchingViewViewCopyWith<$Res> {
  __$$_IsRescheduleOtherMatchingViewViewCopyWithImpl(
      _$_IsRescheduleOtherMatchingViewView _value,
      $Res Function(_$_IsRescheduleOtherMatchingViewView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsRescheduleOtherMatchingViewView
    implements _IsRescheduleOtherMatchingViewView {
  const _$_IsRescheduleOtherMatchingViewView();

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.isRescheduleOtherMatchingView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsRescheduleOtherMatchingViewView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return isRescheduleOtherMatchingView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return isRescheduleOtherMatchingView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleOtherMatchingView != null) {
      return isRescheduleOtherMatchingView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return isRescheduleOtherMatchingView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return isRescheduleOtherMatchingView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (isRescheduleOtherMatchingView != null) {
      return isRescheduleOtherMatchingView(this);
    }
    return orElse();
  }
}

abstract class _IsRescheduleOtherMatchingViewView
    implements ServiceRequestManagementEvent {
  const factory _IsRescheduleOtherMatchingViewView() =
      _$_IsRescheduleOtherMatchingViewView;
}

/// @nodoc
abstract class _$$_GetFiltersCopyWith<$Res> {
  factory _$$_GetFiltersCopyWith(
          _$_GetFilters value, $Res Function(_$_GetFilters) then) =
      __$$_GetFiltersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFiltersCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_GetFilters>
    implements _$$_GetFiltersCopyWith<$Res> {
  __$$_GetFiltersCopyWithImpl(
      _$_GetFilters _value, $Res Function(_$_GetFilters) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetFilters implements _GetFilters {
  const _$_GetFilters();

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.getFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFilters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return getFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return getFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getFilters != null) {
      return getFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return getFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return getFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getFilters != null) {
      return getFilters(this);
    }
    return orElse();
  }
}

abstract class _GetFilters implements ServiceRequestManagementEvent {
  const factory _GetFilters() = _$_GetFilters;
}

/// @nodoc
abstract class _$$_GetServiceStatusCopyWith<$Res> {
  factory _$$_GetServiceStatusCopyWith(
          _$_GetServiceStatus value, $Res Function(_$_GetServiceStatus) then) =
      __$$_GetServiceStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetServiceStatusCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_GetServiceStatus> implements _$$_GetServiceStatusCopyWith<$Res> {
  __$$_GetServiceStatusCopyWithImpl(
      _$_GetServiceStatus _value, $Res Function(_$_GetServiceStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetServiceStatus implements _GetServiceStatus {
  const _$_GetServiceStatus();

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.getServiceStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetServiceStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return getServiceStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return getServiceStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getServiceStatus != null) {
      return getServiceStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return getServiceStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return getServiceStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getServiceStatus != null) {
      return getServiceStatus(this);
    }
    return orElse();
  }
}

abstract class _GetServiceStatus implements ServiceRequestManagementEvent {
  const factory _GetServiceStatus() = _$_GetServiceStatus;
}

/// @nodoc
abstract class _$$_GetServiceRequestsCopyWith<$Res> {
  factory _$$_GetServiceRequestsCopyWith(_$_GetServiceRequests value,
          $Res Function(_$_GetServiceRequests) then) =
      __$$_GetServiceRequestsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      int page,
      int limit,
      int? statusFilterId,
      int? dateFilterId,
      String? searchTerm,
      String? fromDate,
      String? toDate});
}

/// @nodoc
class __$$_GetServiceRequestsCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_GetServiceRequests> implements _$$_GetServiceRequestsCopyWith<$Res> {
  __$$_GetServiceRequestsCopyWithImpl(
      _$_GetServiceRequests _value, $Res Function(_$_GetServiceRequests) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? page = null,
    Object? limit = null,
    Object? statusFilterId = freezed,
    Object? dateFilterId = freezed,
    Object? searchTerm = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$_GetServiceRequests(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      statusFilterId: freezed == statusFilterId
          ? _value.statusFilterId
          : statusFilterId // ignore: cast_nullable_to_non_nullable
              as int?,
      dateFilterId: freezed == dateFilterId
          ? _value.dateFilterId
          : dateFilterId // ignore: cast_nullable_to_non_nullable
              as int?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetServiceRequests implements _GetServiceRequests {
  const _$_GetServiceRequests(
      {required this.context,
      required this.page,
      required this.limit,
      this.statusFilterId,
      this.dateFilterId,
      this.searchTerm,
      this.fromDate,
      this.toDate});

  @override
  final BuildContext context;
  @override
  final int page;
  @override
  final int limit;
  @override
  final int? statusFilterId;
  @override
  final int? dateFilterId;
  @override
  final String? searchTerm;
  @override
  final String? fromDate;
  @override
  final String? toDate;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.getServiceRequests(context: $context, page: $page, limit: $limit, statusFilterId: $statusFilterId, dateFilterId: $dateFilterId, searchTerm: $searchTerm, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetServiceRequests &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.statusFilterId, statusFilterId) ||
                other.statusFilterId == statusFilterId) &&
            (identical(other.dateFilterId, dateFilterId) ||
                other.dateFilterId == dateFilterId) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, page, limit,
      statusFilterId, dateFilterId, searchTerm, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetServiceRequestsCopyWith<_$_GetServiceRequests> get copyWith =>
      __$$_GetServiceRequestsCopyWithImpl<_$_GetServiceRequests>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return getServiceRequests(context, page, limit, statusFilterId,
        dateFilterId, searchTerm, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return getServiceRequests?.call(context, page, limit, statusFilterId,
        dateFilterId, searchTerm, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getServiceRequests != null) {
      return getServiceRequests(context, page, limit, statusFilterId,
          dateFilterId, searchTerm, fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return getServiceRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return getServiceRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getServiceRequests != null) {
      return getServiceRequests(this);
    }
    return orElse();
  }
}

abstract class _GetServiceRequests implements ServiceRequestManagementEvent {
  const factory _GetServiceRequests(
      {required final BuildContext context,
      required final int page,
      required final int limit,
      final int? statusFilterId,
      final int? dateFilterId,
      final String? searchTerm,
      final String? fromDate,
      final String? toDate}) = _$_GetServiceRequests;

  BuildContext get context;
  int get page;
  int get limit;
  int? get statusFilterId;
  int? get dateFilterId;
  String? get searchTerm;
  String? get fromDate;
  String? get toDate;
  @JsonKey(ignore: true)
  _$$_GetServiceRequestsCopyWith<_$_GetServiceRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetServiceDetailsCopyWith<$Res> {
  factory _$$_GetServiceDetailsCopyWith(_$_GetServiceDetails value,
          $Res Function(_$_GetServiceDetails) then) =
      __$$_GetServiceDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String serviceId});
}

/// @nodoc
class __$$_GetServiceDetailsCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_GetServiceDetails> implements _$$_GetServiceDetailsCopyWith<$Res> {
  __$$_GetServiceDetailsCopyWithImpl(
      _$_GetServiceDetails _value, $Res Function(_$_GetServiceDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? serviceId = null,
  }) {
    return _then(_$_GetServiceDetails(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetServiceDetails implements _GetServiceDetails {
  const _$_GetServiceDetails({required this.context, required this.serviceId});

  @override
  final BuildContext context;
  @override
  final String serviceId;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.getServiceDetails(context: $context, serviceId: $serviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetServiceDetails &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, serviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetServiceDetailsCopyWith<_$_GetServiceDetails> get copyWith =>
      __$$_GetServiceDetailsCopyWithImpl<_$_GetServiceDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return getServiceDetails(context, serviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return getServiceDetails?.call(context, serviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getServiceDetails != null) {
      return getServiceDetails(context, serviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return getServiceDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return getServiceDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (getServiceDetails != null) {
      return getServiceDetails(this);
    }
    return orElse();
  }
}

abstract class _GetServiceDetails implements ServiceRequestManagementEvent {
  const factory _GetServiceDetails(
      {required final BuildContext context,
      required final String serviceId}) = _$_GetServiceDetails;

  BuildContext get context;
  String get serviceId;
  @JsonKey(ignore: true)
  _$$_GetServiceDetailsCopyWith<_$_GetServiceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowOrHideTransactionDetailsCopyWith<$Res> {
  factory _$$_ShowOrHideTransactionDetailsCopyWith(
          _$_ShowOrHideTransactionDetails value,
          $Res Function(_$_ShowOrHideTransactionDetails) then) =
      __$$_ShowOrHideTransactionDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_ShowOrHideTransactionDetailsCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_ShowOrHideTransactionDetails>
    implements _$$_ShowOrHideTransactionDetailsCopyWith<$Res> {
  __$$_ShowOrHideTransactionDetailsCopyWithImpl(
      _$_ShowOrHideTransactionDetails _value,
      $Res Function(_$_ShowOrHideTransactionDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowing = null,
  }) {
    return _then(_$_ShowOrHideTransactionDetails(
      isShowing: null == isShowing
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHideTransactionDetails implements _ShowOrHideTransactionDetails {
  const _$_ShowOrHideTransactionDetails({required this.isShowing});

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.showOrHideTransactionDetails(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHideTransactionDetails &&
            (identical(other.isShowing, isShowing) ||
                other.isShowing == isShowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowOrHideTransactionDetailsCopyWith<_$_ShowOrHideTransactionDetails>
      get copyWith => __$$_ShowOrHideTransactionDetailsCopyWithImpl<
          _$_ShowOrHideTransactionDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return showOrHideTransactionDetails(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return showOrHideTransactionDetails?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideTransactionDetails != null) {
      return showOrHideTransactionDetails(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return showOrHideTransactionDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return showOrHideTransactionDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideTransactionDetails != null) {
      return showOrHideTransactionDetails(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHideTransactionDetails
    implements ServiceRequestManagementEvent {
  const factory _ShowOrHideTransactionDetails({required final bool isShowing}) =
      _$_ShowOrHideTransactionDetails;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$$_ShowOrHideTransactionDetailsCopyWith<_$_ShowOrHideTransactionDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowOrHideNeededServicesCopyWith<$Res> {
  factory _$$_ShowOrHideNeededServicesCopyWith(
          _$_ShowOrHideNeededServices value,
          $Res Function(_$_ShowOrHideNeededServices) then) =
      __$$_ShowOrHideNeededServicesCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_ShowOrHideNeededServicesCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_ShowOrHideNeededServices>
    implements _$$_ShowOrHideNeededServicesCopyWith<$Res> {
  __$$_ShowOrHideNeededServicesCopyWithImpl(_$_ShowOrHideNeededServices _value,
      $Res Function(_$_ShowOrHideNeededServices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowing = null,
  }) {
    return _then(_$_ShowOrHideNeededServices(
      isShowing: null == isShowing
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHideNeededServices implements _ShowOrHideNeededServices {
  const _$_ShowOrHideNeededServices({required this.isShowing});

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.showOrHideNeededServices(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHideNeededServices &&
            (identical(other.isShowing, isShowing) ||
                other.isShowing == isShowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowOrHideNeededServicesCopyWith<_$_ShowOrHideNeededServices>
      get copyWith => __$$_ShowOrHideNeededServicesCopyWithImpl<
          _$_ShowOrHideNeededServices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return showOrHideNeededServices(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return showOrHideNeededServices?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideNeededServices != null) {
      return showOrHideNeededServices(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return showOrHideNeededServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return showOrHideNeededServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideNeededServices != null) {
      return showOrHideNeededServices(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHideNeededServices
    implements ServiceRequestManagementEvent {
  const factory _ShowOrHideNeededServices({required final bool isShowing}) =
      _$_ShowOrHideNeededServices;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$$_ShowOrHideNeededServicesCopyWith<_$_ShowOrHideNeededServices>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowOrHideCompletedServicesCopyWith<$Res> {
  factory _$$_ShowOrHideCompletedServicesCopyWith(
          _$_ShowOrHideCompletedServices value,
          $Res Function(_$_ShowOrHideCompletedServices) then) =
      __$$_ShowOrHideCompletedServicesCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_ShowOrHideCompletedServicesCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_ShowOrHideCompletedServices>
    implements _$$_ShowOrHideCompletedServicesCopyWith<$Res> {
  __$$_ShowOrHideCompletedServicesCopyWithImpl(
      _$_ShowOrHideCompletedServices _value,
      $Res Function(_$_ShowOrHideCompletedServices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowing = null,
  }) {
    return _then(_$_ShowOrHideCompletedServices(
      isShowing: null == isShowing
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHideCompletedServices implements _ShowOrHideCompletedServices {
  const _$_ShowOrHideCompletedServices({required this.isShowing});

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.showOrHideCompletedServices(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHideCompletedServices &&
            (identical(other.isShowing, isShowing) ||
                other.isShowing == isShowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowOrHideCompletedServicesCopyWith<_$_ShowOrHideCompletedServices>
      get copyWith => __$$_ShowOrHideCompletedServicesCopyWithImpl<
          _$_ShowOrHideCompletedServices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return showOrHideCompletedServices(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return showOrHideCompletedServices?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideCompletedServices != null) {
      return showOrHideCompletedServices(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return showOrHideCompletedServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return showOrHideCompletedServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideCompletedServices != null) {
      return showOrHideCompletedServices(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHideCompletedServices
    implements ServiceRequestManagementEvent {
  const factory _ShowOrHideCompletedServices({required final bool isShowing}) =
      _$_ShowOrHideCompletedServices;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$$_ShowOrHideCompletedServicesCopyWith<_$_ShowOrHideCompletedServices>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowOrHideIncompleteServicesCopyWith<$Res> {
  factory _$$_ShowOrHideIncompleteServicesCopyWith(
          _$_ShowOrHideIncompleteServices value,
          $Res Function(_$_ShowOrHideIncompleteServices) then) =
      __$$_ShowOrHideIncompleteServicesCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_ShowOrHideIncompleteServicesCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_ShowOrHideIncompleteServices>
    implements _$$_ShowOrHideIncompleteServicesCopyWith<$Res> {
  __$$_ShowOrHideIncompleteServicesCopyWithImpl(
      _$_ShowOrHideIncompleteServices _value,
      $Res Function(_$_ShowOrHideIncompleteServices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowing = null,
  }) {
    return _then(_$_ShowOrHideIncompleteServices(
      isShowing: null == isShowing
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHideIncompleteServices implements _ShowOrHideIncompleteServices {
  const _$_ShowOrHideIncompleteServices({required this.isShowing});

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.showOrHideIncompleteServices(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHideIncompleteServices &&
            (identical(other.isShowing, isShowing) ||
                other.isShowing == isShowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowOrHideIncompleteServicesCopyWith<_$_ShowOrHideIncompleteServices>
      get copyWith => __$$_ShowOrHideIncompleteServicesCopyWithImpl<
          _$_ShowOrHideIncompleteServices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return showOrHideIncompleteServices(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return showOrHideIncompleteServices?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideIncompleteServices != null) {
      return showOrHideIncompleteServices(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return showOrHideIncompleteServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return showOrHideIncompleteServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideIncompleteServices != null) {
      return showOrHideIncompleteServices(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHideIncompleteServices
    implements ServiceRequestManagementEvent {
  const factory _ShowOrHideIncompleteServices({required final bool isShowing}) =
      _$_ShowOrHideIncompleteServices;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$$_ShowOrHideIncompleteServicesCopyWith<_$_ShowOrHideIncompleteServices>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowOrHideExtraServicesCopyWith<$Res> {
  factory _$$_ShowOrHideExtraServicesCopyWith(_$_ShowOrHideExtraServices value,
          $Res Function(_$_ShowOrHideExtraServices) then) =
      __$$_ShowOrHideExtraServicesCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_ShowOrHideExtraServicesCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_ShowOrHideExtraServices>
    implements _$$_ShowOrHideExtraServicesCopyWith<$Res> {
  __$$_ShowOrHideExtraServicesCopyWithImpl(_$_ShowOrHideExtraServices _value,
      $Res Function(_$_ShowOrHideExtraServices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowing = null,
  }) {
    return _then(_$_ShowOrHideExtraServices(
      isShowing: null == isShowing
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHideExtraServices implements _ShowOrHideExtraServices {
  const _$_ShowOrHideExtraServices({required this.isShowing});

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.showOrHideExtraServices(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHideExtraServices &&
            (identical(other.isShowing, isShowing) ||
                other.isShowing == isShowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowOrHideExtraServicesCopyWith<_$_ShowOrHideExtraServices>
      get copyWith =>
          __$$_ShowOrHideExtraServicesCopyWithImpl<_$_ShowOrHideExtraServices>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return showOrHideExtraServices(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return showOrHideExtraServices?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideExtraServices != null) {
      return showOrHideExtraServices(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return showOrHideExtraServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return showOrHideExtraServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideExtraServices != null) {
      return showOrHideExtraServices(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHideExtraServices
    implements ServiceRequestManagementEvent {
  const factory _ShowOrHideExtraServices({required final bool isShowing}) =
      _$_ShowOrHideExtraServices;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$$_ShowOrHideExtraServicesCopyWith<_$_ShowOrHideExtraServices>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowOrHideRefundDetailsCopyWith<$Res> {
  factory _$$_ShowOrHideRefundDetailsCopyWith(_$_ShowOrHideRefundDetails value,
          $Res Function(_$_ShowOrHideRefundDetails) then) =
      __$$_ShowOrHideRefundDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_ShowOrHideRefundDetailsCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_ShowOrHideRefundDetails>
    implements _$$_ShowOrHideRefundDetailsCopyWith<$Res> {
  __$$_ShowOrHideRefundDetailsCopyWithImpl(_$_ShowOrHideRefundDetails _value,
      $Res Function(_$_ShowOrHideRefundDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowing = null,
  }) {
    return _then(_$_ShowOrHideRefundDetails(
      isShowing: null == isShowing
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHideRefundDetails implements _ShowOrHideRefundDetails {
  const _$_ShowOrHideRefundDetails({required this.isShowing});

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.showOrHideRefundDetails(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHideRefundDetails &&
            (identical(other.isShowing, isShowing) ||
                other.isShowing == isShowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowOrHideRefundDetailsCopyWith<_$_ShowOrHideRefundDetails>
      get copyWith =>
          __$$_ShowOrHideRefundDetailsCopyWithImpl<_$_ShowOrHideRefundDetails>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return showOrHideRefundDetails(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return showOrHideRefundDetails?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideRefundDetails != null) {
      return showOrHideRefundDetails(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return showOrHideRefundDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return showOrHideRefundDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideRefundDetails != null) {
      return showOrHideRefundDetails(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHideRefundDetails
    implements ServiceRequestManagementEvent {
  const factory _ShowOrHideRefundDetails({required final bool isShowing}) =
      _$_ShowOrHideRefundDetails;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$$_ShowOrHideRefundDetailsCopyWith<_$_ShowOrHideRefundDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WhoRequestedCancelRadioButtonCopyWith<$Res> {
  factory _$$_WhoRequestedCancelRadioButtonCopyWith(
          _$_WhoRequestedCancelRadioButton value,
          $Res Function(_$_WhoRequestedCancelRadioButton) then) =
      __$$_WhoRequestedCancelRadioButtonCopyWithImpl<$Res>;
  @useResult
  $Res call({int whoRequested});
}

/// @nodoc
class __$$_WhoRequestedCancelRadioButtonCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_WhoRequestedCancelRadioButton>
    implements _$$_WhoRequestedCancelRadioButtonCopyWith<$Res> {
  __$$_WhoRequestedCancelRadioButtonCopyWithImpl(
      _$_WhoRequestedCancelRadioButton _value,
      $Res Function(_$_WhoRequestedCancelRadioButton) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whoRequested = null,
  }) {
    return _then(_$_WhoRequestedCancelRadioButton(
      whoRequested: null == whoRequested
          ? _value.whoRequested
          : whoRequested // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WhoRequestedCancelRadioButton
    implements _WhoRequestedCancelRadioButton {
  const _$_WhoRequestedCancelRadioButton({required this.whoRequested});

  @override
  final int whoRequested;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.whoRequestedCancelRadioButton(whoRequested: $whoRequested)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WhoRequestedCancelRadioButton &&
            (identical(other.whoRequested, whoRequested) ||
                other.whoRequested == whoRequested));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whoRequested);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WhoRequestedCancelRadioButtonCopyWith<_$_WhoRequestedCancelRadioButton>
      get copyWith => __$$_WhoRequestedCancelRadioButtonCopyWithImpl<
          _$_WhoRequestedCancelRadioButton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return whoRequestedCancelRadioButton(whoRequested);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return whoRequestedCancelRadioButton?.call(whoRequested);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (whoRequestedCancelRadioButton != null) {
      return whoRequestedCancelRadioButton(whoRequested);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return whoRequestedCancelRadioButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return whoRequestedCancelRadioButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (whoRequestedCancelRadioButton != null) {
      return whoRequestedCancelRadioButton(this);
    }
    return orElse();
  }
}

abstract class _WhoRequestedCancelRadioButton
    implements ServiceRequestManagementEvent {
  const factory _WhoRequestedCancelRadioButton(
      {required final int whoRequested}) = _$_WhoRequestedCancelRadioButton;

  int get whoRequested;
  @JsonKey(ignore: true)
  _$$_WhoRequestedCancelRadioButtonCopyWith<_$_WhoRequestedCancelRadioButton>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowOrHideTimelineCopyWith<$Res> {
  factory _$$_ShowOrHideTimelineCopyWith(_$_ShowOrHideTimeline value,
          $Res Function(_$_ShowOrHideTimeline) then) =
      __$$_ShowOrHideTimelineCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowing});
}

/// @nodoc
class __$$_ShowOrHideTimelineCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res,
        _$_ShowOrHideTimeline> implements _$$_ShowOrHideTimelineCopyWith<$Res> {
  __$$_ShowOrHideTimelineCopyWithImpl(
      _$_ShowOrHideTimeline _value, $Res Function(_$_ShowOrHideTimeline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowing = null,
  }) {
    return _then(_$_ShowOrHideTimeline(
      isShowing: null == isShowing
          ? _value.isShowing
          : isShowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHideTimeline implements _ShowOrHideTimeline {
  const _$_ShowOrHideTimeline({required this.isShowing});

  @override
  final bool isShowing;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.showOrHideTimeline(isShowing: $isShowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHideTimeline &&
            (identical(other.isShowing, isShowing) ||
                other.isShowing == isShowing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowOrHideTimelineCopyWith<_$_ShowOrHideTimeline> get copyWith =>
      __$$_ShowOrHideTimelineCopyWithImpl<_$_ShowOrHideTimeline>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function() started,
    required TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)
        isSelectedTab,
    required TResult Function(
            RescheduleParams rescheduleParams, BuildContext context)
        reschedule,
    required TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)
        assignCaregiver,
    required TResult Function(
            String userId, String serviceId, BuildContext context)
        startService,
    required TResult Function(String userId, String serviceId,
            String description, BuildContext context)
        cancelService,
    required TResult Function(DateTime selectedDate) setDate,
    required TResult Function(TimeOfDay time) setFromTime,
    required TResult Function(TimeOfDay time) setToTime,
    required TResult Function() isRescheduleInitialView,
    required TResult Function() isRescheduleLoaderView,
    required TResult Function() isRescheduleAvailableView,
    required TResult Function() isRescheduleNotAvailableView,
    required TResult Function() isRescheduleOtherMatchingView,
    required TResult Function() getFilters,
    required TResult Function() getServiceStatus,
    required TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)
        getServiceRequests,
    required TResult Function(BuildContext context, String serviceId)
        getServiceDetails,
    required TResult Function(bool isShowing) showOrHideTransactionDetails,
    required TResult Function(bool isShowing) showOrHideNeededServices,
    required TResult Function(bool isShowing) showOrHideCompletedServices,
    required TResult Function(bool isShowing) showOrHideIncompleteServices,
    required TResult Function(bool isShowing) showOrHideExtraServices,
    required TResult Function(bool isShowing) showOrHideRefundDetails,
    required TResult Function(int whoRequested) whoRequestedCancelRadioButton,
    required TResult Function(bool isShowing) showOrHideTimeline,
  }) {
    return showOrHideTimeline(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function()? started,
    TResult? Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult? Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult? Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult? Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult? Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult? Function(DateTime selectedDate)? setDate,
    TResult? Function(TimeOfDay time)? setFromTime,
    TResult? Function(TimeOfDay time)? setToTime,
    TResult? Function()? isRescheduleInitialView,
    TResult? Function()? isRescheduleLoaderView,
    TResult? Function()? isRescheduleAvailableView,
    TResult? Function()? isRescheduleNotAvailableView,
    TResult? Function()? isRescheduleOtherMatchingView,
    TResult? Function()? getFilters,
    TResult? Function()? getServiceStatus,
    TResult? Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult? Function(BuildContext context, String serviceId)?
        getServiceDetails,
    TResult? Function(bool isShowing)? showOrHideTransactionDetails,
    TResult? Function(bool isShowing)? showOrHideNeededServices,
    TResult? Function(bool isShowing)? showOrHideCompletedServices,
    TResult? Function(bool isShowing)? showOrHideIncompleteServices,
    TResult? Function(bool isShowing)? showOrHideExtraServices,
    TResult? Function(bool isShowing)? showOrHideRefundDetails,
    TResult? Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult? Function(bool isShowing)? showOrHideTimeline,
  }) {
    return showOrHideTimeline?.call(isShowing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function()? started,
    TResult Function(Types type, int? filterId, String? searchQuery,
            String? dateFilterId, String? fromDate, String? toDate)?
        isSelectedTab,
    TResult Function(RescheduleParams rescheduleParams, BuildContext context)?
        reschedule,
    TResult Function(
            AssignCareGiverParams assignCareGiverParams, BuildContext context)?
        assignCaregiver,
    TResult Function(String userId, String serviceId, BuildContext context)?
        startService,
    TResult Function(String userId, String serviceId, String description,
            BuildContext context)?
        cancelService,
    TResult Function(DateTime selectedDate)? setDate,
    TResult Function(TimeOfDay time)? setFromTime,
    TResult Function(TimeOfDay time)? setToTime,
    TResult Function()? isRescheduleInitialView,
    TResult Function()? isRescheduleLoaderView,
    TResult Function()? isRescheduleAvailableView,
    TResult Function()? isRescheduleNotAvailableView,
    TResult Function()? isRescheduleOtherMatchingView,
    TResult Function()? getFilters,
    TResult Function()? getServiceStatus,
    TResult Function(
            BuildContext context,
            int page,
            int limit,
            int? statusFilterId,
            int? dateFilterId,
            String? searchTerm,
            String? fromDate,
            String? toDate)?
        getServiceRequests,
    TResult Function(BuildContext context, String serviceId)? getServiceDetails,
    TResult Function(bool isShowing)? showOrHideTransactionDetails,
    TResult Function(bool isShowing)? showOrHideNeededServices,
    TResult Function(bool isShowing)? showOrHideCompletedServices,
    TResult Function(bool isShowing)? showOrHideIncompleteServices,
    TResult Function(bool isShowing)? showOrHideExtraServices,
    TResult Function(bool isShowing)? showOrHideRefundDetails,
    TResult Function(int whoRequested)? whoRequestedCancelRadioButton,
    TResult Function(bool isShowing)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideTimeline != null) {
      return showOrHideTimeline(isShowing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_Reschedule value) reschedule,
    required TResult Function(_AssignCaregiver value) assignCaregiver,
    required TResult Function(_StartService value) startService,
    required TResult Function(_CancelService value) cancelService,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_SetFromTime value) setFromTime,
    required TResult Function(_SetToTime value) setToTime,
    required TResult Function(_IsRescheduleInitialView value)
        isRescheduleInitialView,
    required TResult Function(_IsRescheduleLoaderView value)
        isRescheduleLoaderView,
    required TResult Function(_IsRescheduleAvailableView value)
        isRescheduleAvailableView,
    required TResult Function(_IsRescheduleNotAvailableView value)
        isRescheduleNotAvailableView,
    required TResult Function(_IsRescheduleOtherMatchingViewView value)
        isRescheduleOtherMatchingView,
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetServiceStatus value) getServiceStatus,
    required TResult Function(_GetServiceRequests value) getServiceRequests,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
    required TResult Function(_ShowOrHideTransactionDetails value)
        showOrHideTransactionDetails,
    required TResult Function(_ShowOrHideNeededServices value)
        showOrHideNeededServices,
    required TResult Function(_ShowOrHideCompletedServices value)
        showOrHideCompletedServices,
    required TResult Function(_ShowOrHideIncompleteServices value)
        showOrHideIncompleteServices,
    required TResult Function(_ShowOrHideExtraServices value)
        showOrHideExtraServices,
    required TResult Function(_ShowOrHideRefundDetails value)
        showOrHideRefundDetails,
    required TResult Function(_WhoRequestedCancelRadioButton value)
        whoRequestedCancelRadioButton,
    required TResult Function(_ShowOrHideTimeline value) showOrHideTimeline,
  }) {
    return showOrHideTimeline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_Reschedule value)? reschedule,
    TResult? Function(_AssignCaregiver value)? assignCaregiver,
    TResult? Function(_StartService value)? startService,
    TResult? Function(_CancelService value)? cancelService,
    TResult? Function(_SetDate value)? setDate,
    TResult? Function(_SetFromTime value)? setFromTime,
    TResult? Function(_SetToTime value)? setToTime,
    TResult? Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult? Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult? Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult? Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult? Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetServiceStatus value)? getServiceStatus,
    TResult? Function(_GetServiceRequests value)? getServiceRequests,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
    TResult? Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult? Function(_ShowOrHideNeededServices value)?
        showOrHideNeededServices,
    TResult? Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult? Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult? Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult? Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult? Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult? Function(_ShowOrHideTimeline value)? showOrHideTimeline,
  }) {
    return showOrHideTimeline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_Reschedule value)? reschedule,
    TResult Function(_AssignCaregiver value)? assignCaregiver,
    TResult Function(_StartService value)? startService,
    TResult Function(_CancelService value)? cancelService,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_SetFromTime value)? setFromTime,
    TResult Function(_SetToTime value)? setToTime,
    TResult Function(_IsRescheduleInitialView value)? isRescheduleInitialView,
    TResult Function(_IsRescheduleLoaderView value)? isRescheduleLoaderView,
    TResult Function(_IsRescheduleAvailableView value)?
        isRescheduleAvailableView,
    TResult Function(_IsRescheduleNotAvailableView value)?
        isRescheduleNotAvailableView,
    TResult Function(_IsRescheduleOtherMatchingViewView value)?
        isRescheduleOtherMatchingView,
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetServiceStatus value)? getServiceStatus,
    TResult Function(_GetServiceRequests value)? getServiceRequests,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    TResult Function(_ShowOrHideTransactionDetails value)?
        showOrHideTransactionDetails,
    TResult Function(_ShowOrHideNeededServices value)? showOrHideNeededServices,
    TResult Function(_ShowOrHideCompletedServices value)?
        showOrHideCompletedServices,
    TResult Function(_ShowOrHideIncompleteServices value)?
        showOrHideIncompleteServices,
    TResult Function(_ShowOrHideExtraServices value)? showOrHideExtraServices,
    TResult Function(_ShowOrHideRefundDetails value)? showOrHideRefundDetails,
    TResult Function(_WhoRequestedCancelRadioButton value)?
        whoRequestedCancelRadioButton,
    TResult Function(_ShowOrHideTimeline value)? showOrHideTimeline,
    required TResult orElse(),
  }) {
    if (showOrHideTimeline != null) {
      return showOrHideTimeline(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHideTimeline implements ServiceRequestManagementEvent {
  const factory _ShowOrHideTimeline({required final bool isShowing}) =
      _$_ShowOrHideTimeline;

  bool get isShowing;
  @JsonKey(ignore: true)
  _$$_ShowOrHideTimelineCopyWith<_$_ShowOrHideTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceRequestManagementState {
  List<Types> get types => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isListLoading => throw _privateConstructorUsedError;
  bool? get isDetailsLoading => throw _privateConstructorUsedError;
  bool get isShowingTransactionDetails => throw _privateConstructorUsedError;
  bool get isShowingNeededServices => throw _privateConstructorUsedError;
  bool get isShowingCompletedServices => throw _privateConstructorUsedError;
  bool get isShowingIncompleteServices => throw _privateConstructorUsedError;
  bool get isShowingExtraServices => throw _privateConstructorUsedError;
  bool get isShowingRefundDetails => throw _privateConstructorUsedError;
  bool get isShowingTimeline => throw _privateConstructorUsedError;
  int get whoRequestedCancel => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  String get fromDate => throw _privateConstructorUsedError;
  String get toDate => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  TimeOfDay? get fromTime => throw _privateConstructorUsedError;
  TimeOfDay? get toTime => throw _privateConstructorUsedError;
  RescheduleResponse? get rescheduleResponse =>
      throw _privateConstructorUsedError;
  CommonResponseUse? get caregiverAssignResponse =>
      throw _privateConstructorUsedError;
  CommonResponseUse? get startServiceResponse =>
      throw _privateConstructorUsedError;
  CommonResponseUse? get cancelServiceResponse =>
      throw _privateConstructorUsedError;
  CaregiverProfileResponse? get caregiverProfileResponse =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, GetFiltersResponse>> get filterOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, ServiceDetailsResponseModel>>
      get serviceDetailsOption => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, ServiceRequestListResponseModel>>
      get serviceOption => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>
      get serviceStatusOption => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isCancelLoading => throw _privateConstructorUsedError;
  bool get isStartServiceLoading => throw _privateConstructorUsedError;
  bool get isReScheduleError => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isRescheduleInitialView => throw _privateConstructorUsedError;
  bool get isRescheduleLoaderView => throw _privateConstructorUsedError;
  bool get isRescheduleAvailableCaregiverView =>
      throw _privateConstructorUsedError;
  bool get isRescheduleNotAvailableCaregiverView =>
      throw _privateConstructorUsedError;
  bool get isRescheduleOtherMatchingListView =>
      throw _privateConstructorUsedError;
  List<ServiceList> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceRequestManagementStateCopyWith<ServiceRequestManagementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestManagementStateCopyWith<$Res> {
  factory $ServiceRequestManagementStateCopyWith(
          ServiceRequestManagementState value,
          $Res Function(ServiceRequestManagementState) then) =
      _$ServiceRequestManagementStateCopyWithImpl<$Res,
          ServiceRequestManagementState>;
  @useResult
  $Res call(
      {List<Types> types,
      bool? isLoading,
      bool? isListLoading,
      bool? isDetailsLoading,
      bool isShowingTransactionDetails,
      bool isShowingNeededServices,
      bool isShowingCompletedServices,
      bool isShowingIncompleteServices,
      bool isShowingExtraServices,
      bool isShowingRefundDetails,
      bool isShowingTimeline,
      int whoRequestedCancel,
      String? error,
      DateTime selectedDate,
      String fromDate,
      String toDate,
      String searchQuery,
      TimeOfDay? fromTime,
      TimeOfDay? toTime,
      RescheduleResponse? rescheduleResponse,
      CommonResponseUse? caregiverAssignResponse,
      CommonResponseUse? startServiceResponse,
      CommonResponseUse? cancelServiceResponse,
      CaregiverProfileResponse? caregiverProfileResponse,
      Option<Either<ApiErrorHandler, GetFiltersResponse>> filterOption,
      Option<Either<ApiErrorHandler, ServiceDetailsResponseModel>>
          serviceDetailsOption,
      Option<Either<ApiErrorHandler, ServiceRequestListResponseModel>>
          serviceOption,
      Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>
          serviceStatusOption,
      bool isError,
      bool isCancelLoading,
      bool isStartServiceLoading,
      bool isReScheduleError,
      bool isClientError,
      bool isRescheduleInitialView,
      bool isRescheduleLoaderView,
      bool isRescheduleAvailableCaregiverView,
      bool isRescheduleNotAvailableCaregiverView,
      bool isRescheduleOtherMatchingListView,
      List<ServiceList> services});
}

/// @nodoc
class _$ServiceRequestManagementStateCopyWithImpl<$Res,
        $Val extends ServiceRequestManagementState>
    implements $ServiceRequestManagementStateCopyWith<$Res> {
  _$ServiceRequestManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? isLoading = freezed,
    Object? isListLoading = freezed,
    Object? isDetailsLoading = freezed,
    Object? isShowingTransactionDetails = null,
    Object? isShowingNeededServices = null,
    Object? isShowingCompletedServices = null,
    Object? isShowingIncompleteServices = null,
    Object? isShowingExtraServices = null,
    Object? isShowingRefundDetails = null,
    Object? isShowingTimeline = null,
    Object? whoRequestedCancel = null,
    Object? error = freezed,
    Object? selectedDate = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? searchQuery = null,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? rescheduleResponse = freezed,
    Object? caregiverAssignResponse = freezed,
    Object? startServiceResponse = freezed,
    Object? cancelServiceResponse = freezed,
    Object? caregiverProfileResponse = freezed,
    Object? filterOption = null,
    Object? serviceDetailsOption = null,
    Object? serviceOption = null,
    Object? serviceStatusOption = null,
    Object? isError = null,
    Object? isCancelLoading = null,
    Object? isStartServiceLoading = null,
    Object? isReScheduleError = null,
    Object? isClientError = null,
    Object? isRescheduleInitialView = null,
    Object? isRescheduleLoaderView = null,
    Object? isRescheduleAvailableCaregiverView = null,
    Object? isRescheduleNotAvailableCaregiverView = null,
    Object? isRescheduleOtherMatchingListView = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isListLoading: freezed == isListLoading
          ? _value.isListLoading
          : isListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDetailsLoading: freezed == isDetailsLoading
          ? _value.isDetailsLoading
          : isDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isShowingTransactionDetails: null == isShowingTransactionDetails
          ? _value.isShowingTransactionDetails
          : isShowingTransactionDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingNeededServices: null == isShowingNeededServices
          ? _value.isShowingNeededServices
          : isShowingNeededServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingCompletedServices: null == isShowingCompletedServices
          ? _value.isShowingCompletedServices
          : isShowingCompletedServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingIncompleteServices: null == isShowingIncompleteServices
          ? _value.isShowingIncompleteServices
          : isShowingIncompleteServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingExtraServices: null == isShowingExtraServices
          ? _value.isShowingExtraServices
          : isShowingExtraServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingRefundDetails: null == isShowingRefundDetails
          ? _value.isShowingRefundDetails
          : isShowingRefundDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingTimeline: null == isShowingTimeline
          ? _value.isShowingTimeline
          : isShowingTimeline // ignore: cast_nullable_to_non_nullable
              as bool,
      whoRequestedCancel: null == whoRequestedCancel
          ? _value.whoRequestedCancel
          : whoRequestedCancel // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      fromTime: freezed == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      toTime: freezed == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      rescheduleResponse: freezed == rescheduleResponse
          ? _value.rescheduleResponse
          : rescheduleResponse // ignore: cast_nullable_to_non_nullable
              as RescheduleResponse?,
      caregiverAssignResponse: freezed == caregiverAssignResponse
          ? _value.caregiverAssignResponse
          : caregiverAssignResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      startServiceResponse: freezed == startServiceResponse
          ? _value.startServiceResponse
          : startServiceResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      cancelServiceResponse: freezed == cancelServiceResponse
          ? _value.cancelServiceResponse
          : cancelServiceResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      caregiverProfileResponse: freezed == caregiverProfileResponse
          ? _value.caregiverProfileResponse
          : caregiverProfileResponse // ignore: cast_nullable_to_non_nullable
              as CaregiverProfileResponse?,
      filterOption: null == filterOption
          ? _value.filterOption
          : filterOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, GetFiltersResponse>>,
      serviceDetailsOption: null == serviceDetailsOption
          ? _value.serviceDetailsOption
          : serviceDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, ServiceDetailsResponseModel>>,
      serviceOption: null == serviceOption
          ? _value.serviceOption
          : serviceOption // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<ApiErrorHandler, ServiceRequestListResponseModel>>,
      serviceStatusOption: null == serviceStatusOption
          ? _value.serviceStatusOption
          : serviceStatusOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelLoading: null == isCancelLoading
          ? _value.isCancelLoading
          : isCancelLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isStartServiceLoading: null == isStartServiceLoading
          ? _value.isStartServiceLoading
          : isStartServiceLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReScheduleError: null == isReScheduleError
          ? _value.isReScheduleError
          : isReScheduleError // ignore: cast_nullable_to_non_nullable
              as bool,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleInitialView: null == isRescheduleInitialView
          ? _value.isRescheduleInitialView
          : isRescheduleInitialView // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleLoaderView: null == isRescheduleLoaderView
          ? _value.isRescheduleLoaderView
          : isRescheduleLoaderView // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleAvailableCaregiverView: null ==
              isRescheduleAvailableCaregiverView
          ? _value.isRescheduleAvailableCaregiverView
          : isRescheduleAvailableCaregiverView // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleNotAvailableCaregiverView: null ==
              isRescheduleNotAvailableCaregiverView
          ? _value.isRescheduleNotAvailableCaregiverView
          : isRescheduleNotAvailableCaregiverView // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleOtherMatchingListView: null ==
              isRescheduleOtherMatchingListView
          ? _value.isRescheduleOtherMatchingListView
          : isRescheduleOtherMatchingListView // ignore: cast_nullable_to_non_nullable
              as bool,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceRequestManagementStateCopyWith<$Res>
    implements $ServiceRequestManagementStateCopyWith<$Res> {
  factory _$$_ServiceRequestManagementStateCopyWith(
          _$_ServiceRequestManagementState value,
          $Res Function(_$_ServiceRequestManagementState) then) =
      __$$_ServiceRequestManagementStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Types> types,
      bool? isLoading,
      bool? isListLoading,
      bool? isDetailsLoading,
      bool isShowingTransactionDetails,
      bool isShowingNeededServices,
      bool isShowingCompletedServices,
      bool isShowingIncompleteServices,
      bool isShowingExtraServices,
      bool isShowingRefundDetails,
      bool isShowingTimeline,
      int whoRequestedCancel,
      String? error,
      DateTime selectedDate,
      String fromDate,
      String toDate,
      String searchQuery,
      TimeOfDay? fromTime,
      TimeOfDay? toTime,
      RescheduleResponse? rescheduleResponse,
      CommonResponseUse? caregiverAssignResponse,
      CommonResponseUse? startServiceResponse,
      CommonResponseUse? cancelServiceResponse,
      CaregiverProfileResponse? caregiverProfileResponse,
      Option<Either<ApiErrorHandler, GetFiltersResponse>> filterOption,
      Option<Either<ApiErrorHandler, ServiceDetailsResponseModel>>
          serviceDetailsOption,
      Option<Either<ApiErrorHandler, ServiceRequestListResponseModel>>
          serviceOption,
      Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>
          serviceStatusOption,
      bool isError,
      bool isCancelLoading,
      bool isStartServiceLoading,
      bool isReScheduleError,
      bool isClientError,
      bool isRescheduleInitialView,
      bool isRescheduleLoaderView,
      bool isRescheduleAvailableCaregiverView,
      bool isRescheduleNotAvailableCaregiverView,
      bool isRescheduleOtherMatchingListView,
      List<ServiceList> services});
}

/// @nodoc
class __$$_ServiceRequestManagementStateCopyWithImpl<$Res>
    extends _$ServiceRequestManagementStateCopyWithImpl<$Res,
        _$_ServiceRequestManagementState>
    implements _$$_ServiceRequestManagementStateCopyWith<$Res> {
  __$$_ServiceRequestManagementStateCopyWithImpl(
      _$_ServiceRequestManagementState _value,
      $Res Function(_$_ServiceRequestManagementState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? isLoading = freezed,
    Object? isListLoading = freezed,
    Object? isDetailsLoading = freezed,
    Object? isShowingTransactionDetails = null,
    Object? isShowingNeededServices = null,
    Object? isShowingCompletedServices = null,
    Object? isShowingIncompleteServices = null,
    Object? isShowingExtraServices = null,
    Object? isShowingRefundDetails = null,
    Object? isShowingTimeline = null,
    Object? whoRequestedCancel = null,
    Object? error = freezed,
    Object? selectedDate = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? searchQuery = null,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? rescheduleResponse = freezed,
    Object? caregiverAssignResponse = freezed,
    Object? startServiceResponse = freezed,
    Object? cancelServiceResponse = freezed,
    Object? caregiverProfileResponse = freezed,
    Object? filterOption = null,
    Object? serviceDetailsOption = null,
    Object? serviceOption = null,
    Object? serviceStatusOption = null,
    Object? isError = null,
    Object? isCancelLoading = null,
    Object? isStartServiceLoading = null,
    Object? isReScheduleError = null,
    Object? isClientError = null,
    Object? isRescheduleInitialView = null,
    Object? isRescheduleLoaderView = null,
    Object? isRescheduleAvailableCaregiverView = null,
    Object? isRescheduleNotAvailableCaregiverView = null,
    Object? isRescheduleOtherMatchingListView = null,
    Object? services = null,
  }) {
    return _then(_$_ServiceRequestManagementState(
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isListLoading: freezed == isListLoading
          ? _value.isListLoading
          : isListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDetailsLoading: freezed == isDetailsLoading
          ? _value.isDetailsLoading
          : isDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isShowingTransactionDetails: null == isShowingTransactionDetails
          ? _value.isShowingTransactionDetails
          : isShowingTransactionDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingNeededServices: null == isShowingNeededServices
          ? _value.isShowingNeededServices
          : isShowingNeededServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingCompletedServices: null == isShowingCompletedServices
          ? _value.isShowingCompletedServices
          : isShowingCompletedServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingIncompleteServices: null == isShowingIncompleteServices
          ? _value.isShowingIncompleteServices
          : isShowingIncompleteServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingExtraServices: null == isShowingExtraServices
          ? _value.isShowingExtraServices
          : isShowingExtraServices // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingRefundDetails: null == isShowingRefundDetails
          ? _value.isShowingRefundDetails
          : isShowingRefundDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingTimeline: null == isShowingTimeline
          ? _value.isShowingTimeline
          : isShowingTimeline // ignore: cast_nullable_to_non_nullable
              as bool,
      whoRequestedCancel: null == whoRequestedCancel
          ? _value.whoRequestedCancel
          : whoRequestedCancel // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      fromTime: freezed == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      toTime: freezed == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      rescheduleResponse: freezed == rescheduleResponse
          ? _value.rescheduleResponse
          : rescheduleResponse // ignore: cast_nullable_to_non_nullable
              as RescheduleResponse?,
      caregiverAssignResponse: freezed == caregiverAssignResponse
          ? _value.caregiverAssignResponse
          : caregiverAssignResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      startServiceResponse: freezed == startServiceResponse
          ? _value.startServiceResponse
          : startServiceResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      cancelServiceResponse: freezed == cancelServiceResponse
          ? _value.cancelServiceResponse
          : cancelServiceResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      caregiverProfileResponse: freezed == caregiverProfileResponse
          ? _value.caregiverProfileResponse
          : caregiverProfileResponse // ignore: cast_nullable_to_non_nullable
              as CaregiverProfileResponse?,
      filterOption: null == filterOption
          ? _value.filterOption
          : filterOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, GetFiltersResponse>>,
      serviceDetailsOption: null == serviceDetailsOption
          ? _value.serviceDetailsOption
          : serviceDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, ServiceDetailsResponseModel>>,
      serviceOption: null == serviceOption
          ? _value.serviceOption
          : serviceOption // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<ApiErrorHandler, ServiceRequestListResponseModel>>,
      serviceStatusOption: null == serviceStatusOption
          ? _value.serviceStatusOption
          : serviceStatusOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelLoading: null == isCancelLoading
          ? _value.isCancelLoading
          : isCancelLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isStartServiceLoading: null == isStartServiceLoading
          ? _value.isStartServiceLoading
          : isStartServiceLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReScheduleError: null == isReScheduleError
          ? _value.isReScheduleError
          : isReScheduleError // ignore: cast_nullable_to_non_nullable
              as bool,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleInitialView: null == isRescheduleInitialView
          ? _value.isRescheduleInitialView
          : isRescheduleInitialView // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleLoaderView: null == isRescheduleLoaderView
          ? _value.isRescheduleLoaderView
          : isRescheduleLoaderView // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleAvailableCaregiverView: null ==
              isRescheduleAvailableCaregiverView
          ? _value.isRescheduleAvailableCaregiverView
          : isRescheduleAvailableCaregiverView // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleNotAvailableCaregiverView: null ==
              isRescheduleNotAvailableCaregiverView
          ? _value.isRescheduleNotAvailableCaregiverView
          : isRescheduleNotAvailableCaregiverView // ignore: cast_nullable_to_non_nullable
              as bool,
      isRescheduleOtherMatchingListView: null ==
              isRescheduleOtherMatchingListView
          ? _value.isRescheduleOtherMatchingListView
          : isRescheduleOtherMatchingListView // ignore: cast_nullable_to_non_nullable
              as bool,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceList>,
    ));
  }
}

/// @nodoc

class _$_ServiceRequestManagementState
    implements _ServiceRequestManagementState {
  const _$_ServiceRequestManagementState(
      {required final List<Types> types,
      this.isLoading,
      this.isListLoading,
      this.isDetailsLoading,
      required this.isShowingTransactionDetails,
      required this.isShowingNeededServices,
      required this.isShowingCompletedServices,
      required this.isShowingIncompleteServices,
      required this.isShowingExtraServices,
      required this.isShowingRefundDetails,
      required this.isShowingTimeline,
      required this.whoRequestedCancel,
      required this.error,
      required this.selectedDate,
      required this.fromDate,
      required this.toDate,
      required this.searchQuery,
      this.fromTime,
      this.toTime,
      this.rescheduleResponse,
      this.caregiverAssignResponse,
      this.startServiceResponse,
      this.cancelServiceResponse,
      this.caregiverProfileResponse,
      required this.filterOption,
      required this.serviceDetailsOption,
      required this.serviceOption,
      required this.serviceStatusOption,
      this.isError = false,
      this.isCancelLoading = false,
      this.isStartServiceLoading = false,
      this.isReScheduleError = false,
      this.isClientError = false,
      this.isRescheduleInitialView = false,
      this.isRescheduleLoaderView = false,
      this.isRescheduleAvailableCaregiverView = false,
      this.isRescheduleNotAvailableCaregiverView = false,
      this.isRescheduleOtherMatchingListView = false,
      required final List<ServiceList> services})
      : _types = types,
        _services = services;

  final List<Types> _types;
  @override
  List<Types> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final bool? isLoading;
  @override
  final bool? isListLoading;
  @override
  final bool? isDetailsLoading;
  @override
  final bool isShowingTransactionDetails;
  @override
  final bool isShowingNeededServices;
  @override
  final bool isShowingCompletedServices;
  @override
  final bool isShowingIncompleteServices;
  @override
  final bool isShowingExtraServices;
  @override
  final bool isShowingRefundDetails;
  @override
  final bool isShowingTimeline;
  @override
  final int whoRequestedCancel;
  @override
  final String? error;
  @override
  final DateTime selectedDate;
  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final String searchQuery;
  @override
  final TimeOfDay? fromTime;
  @override
  final TimeOfDay? toTime;
  @override
  final RescheduleResponse? rescheduleResponse;
  @override
  final CommonResponseUse? caregiverAssignResponse;
  @override
  final CommonResponseUse? startServiceResponse;
  @override
  final CommonResponseUse? cancelServiceResponse;
  @override
  final CaregiverProfileResponse? caregiverProfileResponse;
  @override
  final Option<Either<ApiErrorHandler, GetFiltersResponse>> filterOption;
  @override
  final Option<Either<ApiErrorHandler, ServiceDetailsResponseModel>>
      serviceDetailsOption;
  @override
  final Option<Either<ApiErrorHandler, ServiceRequestListResponseModel>>
      serviceOption;
  @override
  final Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>
      serviceStatusOption;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isCancelLoading;
  @override
  @JsonKey()
  final bool isStartServiceLoading;
  @override
  @JsonKey()
  final bool isReScheduleError;
  @override
  @JsonKey()
  final bool isClientError;
  @override
  @JsonKey()
  final bool isRescheduleInitialView;
  @override
  @JsonKey()
  final bool isRescheduleLoaderView;
  @override
  @JsonKey()
  final bool isRescheduleAvailableCaregiverView;
  @override
  @JsonKey()
  final bool isRescheduleNotAvailableCaregiverView;
  @override
  @JsonKey()
  final bool isRescheduleOtherMatchingListView;
  final List<ServiceList> _services;
  @override
  List<ServiceList> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceRequestManagementState(types: $types, isLoading: $isLoading, isListLoading: $isListLoading, isDetailsLoading: $isDetailsLoading, isShowingTransactionDetails: $isShowingTransactionDetails, isShowingNeededServices: $isShowingNeededServices, isShowingCompletedServices: $isShowingCompletedServices, isShowingIncompleteServices: $isShowingIncompleteServices, isShowingExtraServices: $isShowingExtraServices, isShowingRefundDetails: $isShowingRefundDetails, isShowingTimeline: $isShowingTimeline, whoRequestedCancel: $whoRequestedCancel, error: $error, selectedDate: $selectedDate, fromDate: $fromDate, toDate: $toDate, searchQuery: $searchQuery, fromTime: $fromTime, toTime: $toTime, rescheduleResponse: $rescheduleResponse, caregiverAssignResponse: $caregiverAssignResponse, startServiceResponse: $startServiceResponse, cancelServiceResponse: $cancelServiceResponse, caregiverProfileResponse: $caregiverProfileResponse, filterOption: $filterOption, serviceDetailsOption: $serviceDetailsOption, serviceOption: $serviceOption, serviceStatusOption: $serviceStatusOption, isError: $isError, isCancelLoading: $isCancelLoading, isStartServiceLoading: $isStartServiceLoading, isReScheduleError: $isReScheduleError, isClientError: $isClientError, isRescheduleInitialView: $isRescheduleInitialView, isRescheduleLoaderView: $isRescheduleLoaderView, isRescheduleAvailableCaregiverView: $isRescheduleAvailableCaregiverView, isRescheduleNotAvailableCaregiverView: $isRescheduleNotAvailableCaregiverView, isRescheduleOtherMatchingListView: $isRescheduleOtherMatchingListView, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceRequestManagementState &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isListLoading, isListLoading) ||
                other.isListLoading == isListLoading) &&
            (identical(other.isDetailsLoading, isDetailsLoading) ||
                other.isDetailsLoading == isDetailsLoading) &&
            (identical(other.isShowingTransactionDetails, isShowingTransactionDetails) ||
                other.isShowingTransactionDetails ==
                    isShowingTransactionDetails) &&
            (identical(other.isShowingNeededServices, isShowingNeededServices) ||
                other.isShowingNeededServices == isShowingNeededServices) &&
            (identical(other.isShowingCompletedServices, isShowingCompletedServices) ||
                other.isShowingCompletedServices ==
                    isShowingCompletedServices) &&
            (identical(other.isShowingIncompleteServices, isShowingIncompleteServices) ||
                other.isShowingIncompleteServices ==
                    isShowingIncompleteServices) &&
            (identical(other.isShowingExtraServices, isShowingExtraServices) ||
                other.isShowingExtraServices == isShowingExtraServices) &&
            (identical(other.isShowingRefundDetails, isShowingRefundDetails) ||
                other.isShowingRefundDetails == isShowingRefundDetails) &&
            (identical(other.isShowingTimeline, isShowingTimeline) ||
                other.isShowingTimeline == isShowingTimeline) &&
            (identical(other.whoRequestedCancel, whoRequestedCancel) ||
                other.whoRequestedCancel == whoRequestedCancel) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.fromTime, fromTime) ||
                other.fromTime == fromTime) &&
            (identical(other.toTime, toTime) || other.toTime == toTime) &&
            (identical(other.rescheduleResponse, rescheduleResponse) ||
                other.rescheduleResponse == rescheduleResponse) &&
            (identical(other.caregiverAssignResponse, caregiverAssignResponse) ||
                other.caregiverAssignResponse == caregiverAssignResponse) &&
            (identical(other.startServiceResponse, startServiceResponse) ||
                other.startServiceResponse == startServiceResponse) &&
            (identical(other.cancelServiceResponse, cancelServiceResponse) ||
                other.cancelServiceResponse == cancelServiceResponse) &&
            (identical(other.caregiverProfileResponse, caregiverProfileResponse) ||
                other.caregiverProfileResponse == caregiverProfileResponse) &&
            (identical(other.filterOption, filterOption) ||
                other.filterOption == filterOption) &&
            (identical(other.serviceDetailsOption, serviceDetailsOption) || other.serviceDetailsOption == serviceDetailsOption) &&
            (identical(other.serviceOption, serviceOption) || other.serviceOption == serviceOption) &&
            (identical(other.serviceStatusOption, serviceStatusOption) || other.serviceStatusOption == serviceStatusOption) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isCancelLoading, isCancelLoading) || other.isCancelLoading == isCancelLoading) &&
            (identical(other.isStartServiceLoading, isStartServiceLoading) || other.isStartServiceLoading == isStartServiceLoading) &&
            (identical(other.isReScheduleError, isReScheduleError) || other.isReScheduleError == isReScheduleError) &&
            (identical(other.isClientError, isClientError) || other.isClientError == isClientError) &&
            (identical(other.isRescheduleInitialView, isRescheduleInitialView) || other.isRescheduleInitialView == isRescheduleInitialView) &&
            (identical(other.isRescheduleLoaderView, isRescheduleLoaderView) || other.isRescheduleLoaderView == isRescheduleLoaderView) &&
            (identical(other.isRescheduleAvailableCaregiverView, isRescheduleAvailableCaregiverView) || other.isRescheduleAvailableCaregiverView == isRescheduleAvailableCaregiverView) &&
            (identical(other.isRescheduleNotAvailableCaregiverView, isRescheduleNotAvailableCaregiverView) || other.isRescheduleNotAvailableCaregiverView == isRescheduleNotAvailableCaregiverView) &&
            (identical(other.isRescheduleOtherMatchingListView, isRescheduleOtherMatchingListView) || other.isRescheduleOtherMatchingListView == isRescheduleOtherMatchingListView) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_types),
        isLoading,
        isListLoading,
        isDetailsLoading,
        isShowingTransactionDetails,
        isShowingNeededServices,
        isShowingCompletedServices,
        isShowingIncompleteServices,
        isShowingExtraServices,
        isShowingRefundDetails,
        isShowingTimeline,
        whoRequestedCancel,
        error,
        selectedDate,
        fromDate,
        toDate,
        searchQuery,
        fromTime,
        toTime,
        rescheduleResponse,
        caregiverAssignResponse,
        startServiceResponse,
        cancelServiceResponse,
        caregiverProfileResponse,
        filterOption,
        serviceDetailsOption,
        serviceOption,
        serviceStatusOption,
        isError,
        isCancelLoading,
        isStartServiceLoading,
        isReScheduleError,
        isClientError,
        isRescheduleInitialView,
        isRescheduleLoaderView,
        isRescheduleAvailableCaregiverView,
        isRescheduleNotAvailableCaregiverView,
        isRescheduleOtherMatchingListView,
        const DeepCollectionEquality().hash(_services)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceRequestManagementStateCopyWith<_$_ServiceRequestManagementState>
      get copyWith => __$$_ServiceRequestManagementStateCopyWithImpl<
          _$_ServiceRequestManagementState>(this, _$identity);
}

abstract class _ServiceRequestManagementState
    implements ServiceRequestManagementState {
  const factory _ServiceRequestManagementState(
      {required final List<Types> types,
      final bool? isLoading,
      final bool? isListLoading,
      final bool? isDetailsLoading,
      required final bool isShowingTransactionDetails,
      required final bool isShowingNeededServices,
      required final bool isShowingCompletedServices,
      required final bool isShowingIncompleteServices,
      required final bool isShowingExtraServices,
      required final bool isShowingRefundDetails,
      required final bool isShowingTimeline,
      required final int whoRequestedCancel,
      required final String? error,
      required final DateTime selectedDate,
      required final String fromDate,
      required final String toDate,
      required final String searchQuery,
      final TimeOfDay? fromTime,
      final TimeOfDay? toTime,
      final RescheduleResponse? rescheduleResponse,
      final CommonResponseUse? caregiverAssignResponse,
      final CommonResponseUse? startServiceResponse,
      final CommonResponseUse? cancelServiceResponse,
      final CaregiverProfileResponse? caregiverProfileResponse,
      required final Option<Either<ApiErrorHandler, GetFiltersResponse>>
          filterOption,
      required final Option<
              Either<ApiErrorHandler, ServiceDetailsResponseModel>>
          serviceDetailsOption,
      required final Option<
              Either<ApiErrorHandler, ServiceRequestListResponseModel>>
          serviceOption,
      required final Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>
          serviceStatusOption,
      final bool isError,
      final bool isCancelLoading,
      final bool isStartServiceLoading,
      final bool isReScheduleError,
      final bool isClientError,
      final bool isRescheduleInitialView,
      final bool isRescheduleLoaderView,
      final bool isRescheduleAvailableCaregiverView,
      final bool isRescheduleNotAvailableCaregiverView,
      final bool isRescheduleOtherMatchingListView,
      required final List<ServiceList>
          services}) = _$_ServiceRequestManagementState;

  @override
  List<Types> get types;
  @override
  bool? get isLoading;
  @override
  bool? get isListLoading;
  @override
  bool? get isDetailsLoading;
  @override
  bool get isShowingTransactionDetails;
  @override
  bool get isShowingNeededServices;
  @override
  bool get isShowingCompletedServices;
  @override
  bool get isShowingIncompleteServices;
  @override
  bool get isShowingExtraServices;
  @override
  bool get isShowingRefundDetails;
  @override
  bool get isShowingTimeline;
  @override
  int get whoRequestedCancel;
  @override
  String? get error;
  @override
  DateTime get selectedDate;
  @override
  String get fromDate;
  @override
  String get toDate;
  @override
  String get searchQuery;
  @override
  TimeOfDay? get fromTime;
  @override
  TimeOfDay? get toTime;
  @override
  RescheduleResponse? get rescheduleResponse;
  @override
  CommonResponseUse? get caregiverAssignResponse;
  @override
  CommonResponseUse? get startServiceResponse;
  @override
  CommonResponseUse? get cancelServiceResponse;
  @override
  CaregiverProfileResponse? get caregiverProfileResponse;
  @override
  Option<Either<ApiErrorHandler, GetFiltersResponse>> get filterOption;
  @override
  Option<Either<ApiErrorHandler, ServiceDetailsResponseModel>>
      get serviceDetailsOption;
  @override
  Option<Either<ApiErrorHandler, ServiceRequestListResponseModel>>
      get serviceOption;
  @override
  Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>
      get serviceStatusOption;
  @override
  bool get isError;
  @override
  bool get isCancelLoading;
  @override
  bool get isStartServiceLoading;
  @override
  bool get isReScheduleError;
  @override
  bool get isClientError;
  @override
  bool get isRescheduleInitialView;
  @override
  bool get isRescheduleLoaderView;
  @override
  bool get isRescheduleAvailableCaregiverView;
  @override
  bool get isRescheduleNotAvailableCaregiverView;
  @override
  bool get isRescheduleOtherMatchingListView;
  @override
  List<ServiceList> get services;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceRequestManagementStateCopyWith<_$_ServiceRequestManagementState>
      get copyWith => throw _privateConstructorUsedError;
}
