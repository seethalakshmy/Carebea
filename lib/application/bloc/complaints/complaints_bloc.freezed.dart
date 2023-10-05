// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaints_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComplaintsEvent {
  String get userId => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  String get limit => throw _privateConstructorUsedError;
  String get searchTerm => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String page, String limit,
            String searchTerm, int status)
        getComplaints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String page, String limit,
            String searchTerm, int status)?
        getComplaints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String page, String limit,
            String searchTerm, int status)?
        getComplaints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComplaints value) getComplaints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComplaints value)? getComplaints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComplaints value)? getComplaints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplaintsEventCopyWith<ComplaintsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintsEventCopyWith<$Res> {
  factory $ComplaintsEventCopyWith(
          ComplaintsEvent value, $Res Function(ComplaintsEvent) then) =
      _$ComplaintsEventCopyWithImpl<$Res, ComplaintsEvent>;
  @useResult
  $Res call(
      {String userId,
      String page,
      String limit,
      String searchTerm,
      int status});
}

/// @nodoc
class _$ComplaintsEventCopyWithImpl<$Res, $Val extends ComplaintsEvent>
    implements $ComplaintsEventCopyWith<$Res> {
  _$ComplaintsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
    Object? searchTerm = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetComplaintsCopyWith<$Res>
    implements $ComplaintsEventCopyWith<$Res> {
  factory _$$_GetComplaintsCopyWith(
          _$_GetComplaints value, $Res Function(_$_GetComplaints) then) =
      __$$_GetComplaintsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String page,
      String limit,
      String searchTerm,
      int status});
}

/// @nodoc
class __$$_GetComplaintsCopyWithImpl<$Res>
    extends _$ComplaintsEventCopyWithImpl<$Res, _$_GetComplaints>
    implements _$$_GetComplaintsCopyWith<$Res> {
  __$$_GetComplaintsCopyWithImpl(
      _$_GetComplaints _value, $Res Function(_$_GetComplaints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
    Object? searchTerm = null,
    Object? status = null,
  }) {
    return _then(_$_GetComplaints(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetComplaints implements _GetComplaints {
  const _$_GetComplaints(
      {required this.userId,
      required this.page,
      required this.limit,
      required this.searchTerm,
      required this.status});

  @override
  final String userId;
  @override
  final String page;
  @override
  final String limit;
  @override
  final String searchTerm;
  @override
  final int status;

  @override
  String toString() {
    return 'ComplaintsEvent.getComplaints(userId: $userId, page: $page, limit: $limit, searchTerm: $searchTerm, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetComplaints &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, page, limit, searchTerm, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetComplaintsCopyWith<_$_GetComplaints> get copyWith =>
      __$$_GetComplaintsCopyWithImpl<_$_GetComplaints>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String page, String limit,
            String searchTerm, int status)
        getComplaints,
  }) {
    return getComplaints(userId, page, limit, searchTerm, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String page, String limit,
            String searchTerm, int status)?
        getComplaints,
  }) {
    return getComplaints?.call(userId, page, limit, searchTerm, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String page, String limit,
            String searchTerm, int status)?
        getComplaints,
    required TResult orElse(),
  }) {
    if (getComplaints != null) {
      return getComplaints(userId, page, limit, searchTerm, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComplaints value) getComplaints,
  }) {
    return getComplaints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComplaints value)? getComplaints,
  }) {
    return getComplaints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComplaints value)? getComplaints,
    required TResult orElse(),
  }) {
    if (getComplaints != null) {
      return getComplaints(this);
    }
    return orElse();
  }
}

abstract class _GetComplaints implements ComplaintsEvent {
  const factory _GetComplaints(
      {required final String userId,
      required final String page,
      required final String limit,
      required final String searchTerm,
      required final int status}) = _$_GetComplaints;

  @override
  String get userId;
  @override
  String get page;
  @override
  String get limit;
  @override
  String get searchTerm;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_GetComplaintsCopyWith<_$_GetComplaints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComplaintsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, ComplaintsListResponseModel>>
      get complaintListOption => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplaintsStateCopyWith<ComplaintsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintsStateCopyWith<$Res> {
  factory $ComplaintsStateCopyWith(
          ComplaintsState value, $Res Function(ComplaintsState) then) =
      _$ComplaintsStateCopyWithImpl<$Res, ComplaintsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Option<Either<ApiErrorHandler, ComplaintsListResponseModel>>
          complaintListOption,
      String? error});
}

/// @nodoc
class _$ComplaintsStateCopyWithImpl<$Res, $Val extends ComplaintsState>
    implements $ComplaintsStateCopyWith<$Res> {
  _$ComplaintsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? complaintListOption = null,
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
      complaintListOption: null == complaintListOption
          ? _value.complaintListOption
          : complaintListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, ComplaintsListResponseModel>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComplaintsStateCopyWith<$Res>
    implements $ComplaintsStateCopyWith<$Res> {
  factory _$$_ComplaintsStateCopyWith(
          _$_ComplaintsState value, $Res Function(_$_ComplaintsState) then) =
      __$$_ComplaintsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Option<Either<ApiErrorHandler, ComplaintsListResponseModel>>
          complaintListOption,
      String? error});
}

/// @nodoc
class __$$_ComplaintsStateCopyWithImpl<$Res>
    extends _$ComplaintsStateCopyWithImpl<$Res, _$_ComplaintsState>
    implements _$$_ComplaintsStateCopyWith<$Res> {
  __$$_ComplaintsStateCopyWithImpl(
      _$_ComplaintsState _value, $Res Function(_$_ComplaintsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? complaintListOption = null,
    Object? error = freezed,
  }) {
    return _then(_$_ComplaintsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      complaintListOption: null == complaintListOption
          ? _value.complaintListOption
          : complaintListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, ComplaintsListResponseModel>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ComplaintsState implements _ComplaintsState {
  const _$_ComplaintsState(
      {required this.isLoading,
      required this.isError,
      required this.complaintListOption,
      required this.error});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final Option<Either<ApiErrorHandler, ComplaintsListResponseModel>>
      complaintListOption;
  @override
  final String? error;

  @override
  String toString() {
    return 'ComplaintsState(isLoading: $isLoading, isError: $isError, complaintListOption: $complaintListOption, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComplaintsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.complaintListOption, complaintListOption) ||
                other.complaintListOption == complaintListOption) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, complaintListOption, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComplaintsStateCopyWith<_$_ComplaintsState> get copyWith =>
      __$$_ComplaintsStateCopyWithImpl<_$_ComplaintsState>(this, _$identity);
}

abstract class _ComplaintsState implements ComplaintsState {
  const factory _ComplaintsState(
      {required final bool isLoading,
      required final bool isError,
      required final Option<
              Either<ApiErrorHandler, ComplaintsListResponseModel>>
          complaintListOption,
      required final String? error}) = _$_ComplaintsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  Option<Either<ApiErrorHandler, ComplaintsListResponseModel>>
      get complaintListOption;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ComplaintsStateCopyWith<_$_ComplaintsState> get copyWith =>
      throw _privateConstructorUsedError;
}
