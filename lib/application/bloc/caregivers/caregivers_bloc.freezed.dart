// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caregivers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CareGiversEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId, int page,
            int limit, int type, String? searchTerm, int? filterId)
        getCareGivers,
    required TResult Function(Caregivers caregiver, String userId,
            String adminId, bool status, BuildContext context)
        isUserActive,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function() resetValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult? Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function()? resetValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult Function(Types type)? isSelectedTab,
    TResult Function()? resetValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
    required TResult Function(_IsUserActive value) isUserActive,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_ResetValue value) resetValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
    TResult? Function(_IsUserActive value)? isUserActive,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_ResetValue value)? resetValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    TResult Function(_IsUserActive value)? isUserActive,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_ResetValue value)? resetValue,
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
  $Res call(
      {String userId,
      String adminId,
      int page,
      int limit,
      int type,
      String? searchTerm,
      int? filterId});
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
    Object? adminId = null,
    Object? page = null,
    Object? limit = null,
    Object? type = null,
    Object? searchTerm = freezed,
    Object? filterId = freezed,
  }) {
    return _then(_$_GetCareGivers(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      filterId: freezed == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_GetCareGivers implements _GetCareGivers {
  const _$_GetCareGivers(
      {required this.userId,
      required this.adminId,
      required this.page,
      required this.limit,
      required this.type,
      this.searchTerm,
      this.filterId});

  @override
  final String userId;
  @override
  final String adminId;
  @override
  final int page;
  @override
  final int limit;
  @override
  final int type;
  @override
  final String? searchTerm;
  @override
  final int? filterId;

  @override
  String toString() {
    return 'CareGiversEvent.getCareGivers(userId: $userId, adminId: $adminId, page: $page, limit: $limit, type: $type, searchTerm: $searchTerm, filterId: $filterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGivers &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, adminId, page, limit, type, searchTerm, filterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiversCopyWith<_$_GetCareGivers> get copyWith =>
      __$$_GetCareGiversCopyWithImpl<_$_GetCareGivers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId, int page,
            int limit, int type, String? searchTerm, int? filterId)
        getCareGivers,
    required TResult Function(Caregivers caregiver, String userId,
            String adminId, bool status, BuildContext context)
        isUserActive,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function() resetValue,
  }) {
    return getCareGivers(
        userId, adminId, page, limit, type, searchTerm, filterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult? Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function()? resetValue,
  }) {
    return getCareGivers?.call(
        userId, adminId, page, limit, type, searchTerm, filterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult Function(Types type)? isSelectedTab,
    TResult Function()? resetValue,
    required TResult orElse(),
  }) {
    if (getCareGivers != null) {
      return getCareGivers(
          userId, adminId, page, limit, type, searchTerm, filterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
    required TResult Function(_IsUserActive value) isUserActive,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_ResetValue value) resetValue,
  }) {
    return getCareGivers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
    TResult? Function(_IsUserActive value)? isUserActive,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_ResetValue value)? resetValue,
  }) {
    return getCareGivers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    TResult Function(_IsUserActive value)? isUserActive,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_ResetValue value)? resetValue,
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
      required final String adminId,
      required final int page,
      required final int limit,
      required final int type,
      final String? searchTerm,
      final int? filterId}) = _$_GetCareGivers;

  String get userId;
  String get adminId;
  int get page;
  int get limit;
  int get type;
  String? get searchTerm;
  int? get filterId;
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
  $Res call(
      {Caregivers caregiver,
      String userId,
      String adminId,
      bool status,
      BuildContext context});
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
    Object? userId = null,
    Object? adminId = null,
    Object? status = null,
    Object? context = null,
  }) {
    return _then(_$_IsUserActive(
      caregiver: null == caregiver
          ? _value.caregiver
          : caregiver // ignore: cast_nullable_to_non_nullable
              as Caregivers,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_IsUserActive implements _IsUserActive {
  const _$_IsUserActive(
      {required this.caregiver,
      required this.userId,
      required this.adminId,
      required this.status,
      required this.context});

  @override
  final Caregivers caregiver;
  @override
  final String userId;
  @override
  final String adminId;
  @override
  final bool status;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CareGiversEvent.isUserActive(caregiver: $caregiver, userId: $userId, adminId: $adminId, status: $status, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsUserActive &&
            (identical(other.caregiver, caregiver) ||
                other.caregiver == caregiver) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, caregiver, userId, adminId, status, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsUserActiveCopyWith<_$_IsUserActive> get copyWith =>
      __$$_IsUserActiveCopyWithImpl<_$_IsUserActive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId, int page,
            int limit, int type, String? searchTerm, int? filterId)
        getCareGivers,
    required TResult Function(Caregivers caregiver, String userId,
            String adminId, bool status, BuildContext context)
        isUserActive,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function() resetValue,
  }) {
    return isUserActive(caregiver, userId, adminId, status, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult? Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function()? resetValue,
  }) {
    return isUserActive?.call(caregiver, userId, adminId, status, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult Function(Types type)? isSelectedTab,
    TResult Function()? resetValue,
    required TResult orElse(),
  }) {
    if (isUserActive != null) {
      return isUserActive(caregiver, userId, adminId, status, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
    required TResult Function(_IsUserActive value) isUserActive,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_ResetValue value) resetValue,
  }) {
    return isUserActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
    TResult? Function(_IsUserActive value)? isUserActive,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_ResetValue value)? resetValue,
  }) {
    return isUserActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    TResult Function(_IsUserActive value)? isUserActive,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_ResetValue value)? resetValue,
    required TResult orElse(),
  }) {
    if (isUserActive != null) {
      return isUserActive(this);
    }
    return orElse();
  }
}

abstract class _IsUserActive implements CareGiversEvent {
  const factory _IsUserActive(
      {required final Caregivers caregiver,
      required final String userId,
      required final String adminId,
      required final bool status,
      required final BuildContext context}) = _$_IsUserActive;

  Caregivers get caregiver;
  String get userId;
  String get adminId;
  bool get status;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_IsUserActiveCopyWith<_$_IsUserActive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsSelectedTabCopyWith<$Res> {
  factory _$$_IsSelectedTabCopyWith(
          _$_IsSelectedTab value, $Res Function(_$_IsSelectedTab) then) =
      __$$_IsSelectedTabCopyWithImpl<$Res>;
  @useResult
  $Res call({Types type});
}

/// @nodoc
class __$$_IsSelectedTabCopyWithImpl<$Res>
    extends _$CareGiversEventCopyWithImpl<$Res, _$_IsSelectedTab>
    implements _$$_IsSelectedTabCopyWith<$Res> {
  __$$_IsSelectedTabCopyWithImpl(
      _$_IsSelectedTab _value, $Res Function(_$_IsSelectedTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_IsSelectedTab(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Types,
    ));
  }
}

/// @nodoc

class _$_IsSelectedTab implements _IsSelectedTab {
  const _$_IsSelectedTab(this.type);

  @override
  final Types type;

  @override
  String toString() {
    return 'CareGiversEvent.isSelectedTab(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsSelectedTab &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsSelectedTabCopyWith<_$_IsSelectedTab> get copyWith =>
      __$$_IsSelectedTabCopyWithImpl<_$_IsSelectedTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId, int page,
            int limit, int type, String? searchTerm, int? filterId)
        getCareGivers,
    required TResult Function(Caregivers caregiver, String userId,
            String adminId, bool status, BuildContext context)
        isUserActive,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function() resetValue,
  }) {
    return isSelectedTab(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult? Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function()? resetValue,
  }) {
    return isSelectedTab?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult Function(Types type)? isSelectedTab,
    TResult Function()? resetValue,
    required TResult orElse(),
  }) {
    if (isSelectedTab != null) {
      return isSelectedTab(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
    required TResult Function(_IsUserActive value) isUserActive,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_ResetValue value) resetValue,
  }) {
    return isSelectedTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
    TResult? Function(_IsUserActive value)? isUserActive,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_ResetValue value)? resetValue,
  }) {
    return isSelectedTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    TResult Function(_IsUserActive value)? isUserActive,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_ResetValue value)? resetValue,
    required TResult orElse(),
  }) {
    if (isSelectedTab != null) {
      return isSelectedTab(this);
    }
    return orElse();
  }
}

abstract class _IsSelectedTab implements CareGiversEvent {
  const factory _IsSelectedTab(final Types type) = _$_IsSelectedTab;

  Types get type;
  @JsonKey(ignore: true)
  _$$_IsSelectedTabCopyWith<_$_IsSelectedTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetValueCopyWith<$Res> {
  factory _$$_ResetValueCopyWith(
          _$_ResetValue value, $Res Function(_$_ResetValue) then) =
      __$$_ResetValueCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetValueCopyWithImpl<$Res>
    extends _$CareGiversEventCopyWithImpl<$Res, _$_ResetValue>
    implements _$$_ResetValueCopyWith<$Res> {
  __$$_ResetValueCopyWithImpl(
      _$_ResetValue _value, $Res Function(_$_ResetValue) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetValue implements _ResetValue {
  const _$_ResetValue();

  @override
  String toString() {
    return 'CareGiversEvent.resetValue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId, int page,
            int limit, int type, String? searchTerm, int? filterId)
        getCareGivers,
    required TResult Function(Caregivers caregiver, String userId,
            String adminId, bool status, BuildContext context)
        isUserActive,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function() resetValue,
  }) {
    return resetValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult? Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function()? resetValue,
  }) {
    return resetValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId, int page, int limit,
            int type, String? searchTerm, int? filterId)?
        getCareGivers,
    TResult Function(Caregivers caregiver, String userId, String adminId,
            bool status, BuildContext context)?
        isUserActive,
    TResult Function(Types type)? isSelectedTab,
    TResult Function()? resetValue,
    required TResult orElse(),
  }) {
    if (resetValue != null) {
      return resetValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGivers value) getCareGivers,
    required TResult Function(_IsUserActive value) isUserActive,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_ResetValue value) resetValue,
  }) {
    return resetValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGivers value)? getCareGivers,
    TResult? Function(_IsUserActive value)? isUserActive,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_ResetValue value)? resetValue,
  }) {
    return resetValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGivers value)? getCareGivers,
    TResult Function(_IsUserActive value)? isUserActive,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_ResetValue value)? resetValue,
    required TResult orElse(),
  }) {
    if (resetValue != null) {
      return resetValue(this);
    }
    return orElse();
  }
}

abstract class _ResetValue implements CareGiversEvent {
  const factory _ResetValue() = _$_ResetValue;
}

/// @nodoc
mixin _$CareGiversState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CareGiverResponse? get response => throw _privateConstructorUsedError;
  VerifyResponse? get activeOrInactiveResponse =>
      throw _privateConstructorUsedError;
  List<Types> get types => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

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
      VerifyResponse? activeOrInactiveResponse,
      List<Types> types,
      String? error,
      bool isClientError});
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
    Object? activeOrInactiveResponse = freezed,
    Object? types = null,
    Object? error = freezed,
    Object? isClientError = null,
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
      activeOrInactiveResponse: freezed == activeOrInactiveResponse
          ? _value.activeOrInactiveResponse
          : activeOrInactiveResponse // ignore: cast_nullable_to_non_nullable
              as VerifyResponse?,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>,
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
      VerifyResponse? activeOrInactiveResponse,
      List<Types> types,
      String? error,
      bool isClientError});
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
    Object? activeOrInactiveResponse = freezed,
    Object? types = null,
    Object? error = freezed,
    Object? isClientError = null,
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
      activeOrInactiveResponse: freezed == activeOrInactiveResponse
          ? _value.activeOrInactiveResponse
          : activeOrInactiveResponse // ignore: cast_nullable_to_non_nullable
              as VerifyResponse?,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>,
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

class _$_CareGiversState implements _CareGiversState {
  const _$_CareGiversState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.activeOrInactiveResponse,
      required final List<Types> types,
      required this.error,
      this.isClientError = false})
      : _types = types;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final CareGiverResponse? response;
  @override
  final VerifyResponse? activeOrInactiveResponse;
  final List<Types> _types;
  @override
  List<Types> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'CareGiversState(isLoading: $isLoading, isError: $isError, response: $response, activeOrInactiveResponse: $activeOrInactiveResponse, types: $types, error: $error, isClientError: $isClientError)';
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
            (identical(
                    other.activeOrInactiveResponse, activeOrInactiveResponse) ||
                other.activeOrInactiveResponse == activeOrInactiveResponse) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      response,
      activeOrInactiveResponse,
      const DeepCollectionEquality().hash(_types),
      error,
      isClientError);

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
      required final VerifyResponse? activeOrInactiveResponse,
      required final List<Types> types,
      required final String? error,
      final bool isClientError}) = _$_CareGiversState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CareGiverResponse? get response;
  @override
  VerifyResponse? get activeOrInactiveResponse;
  @override
  List<Types> get types;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_CareGiversStateCopyWith<_$_CareGiversState> get copyWith =>
      throw _privateConstructorUsedError;
}
