// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComplaintDetailEvent {
  String get complaintId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String complaintId) getComplaintDetails,
    required TResult Function(String complaintId, int status, String comment)
        updateComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String complaintId)? getComplaintDetails,
    TResult? Function(String complaintId, int status, String comment)?
        updateComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String complaintId)? getComplaintDetails,
    TResult Function(String complaintId, int status, String comment)?
        updateComplaint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComplaintDetails value) getComplaintDetails,
    required TResult Function(_UpdateComplaint value) updateComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComplaintDetails value)? getComplaintDetails,
    TResult? Function(_UpdateComplaint value)? updateComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComplaintDetails value)? getComplaintDetails,
    TResult Function(_UpdateComplaint value)? updateComplaint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplaintDetailEventCopyWith<ComplaintDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintDetailEventCopyWith<$Res> {
  factory $ComplaintDetailEventCopyWith(ComplaintDetailEvent value,
          $Res Function(ComplaintDetailEvent) then) =
      _$ComplaintDetailEventCopyWithImpl<$Res, ComplaintDetailEvent>;
  @useResult
  $Res call({String complaintId});
}

/// @nodoc
class _$ComplaintDetailEventCopyWithImpl<$Res,
        $Val extends ComplaintDetailEvent>
    implements $ComplaintDetailEventCopyWith<$Res> {
  _$ComplaintDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintId = null,
  }) {
    return _then(_value.copyWith(
      complaintId: null == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetComplaintDetailsCopyWith<$Res>
    implements $ComplaintDetailEventCopyWith<$Res> {
  factory _$$_GetComplaintDetailsCopyWith(_$_GetComplaintDetails value,
          $Res Function(_$_GetComplaintDetails) then) =
      __$$_GetComplaintDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String complaintId});
}

/// @nodoc
class __$$_GetComplaintDetailsCopyWithImpl<$Res>
    extends _$ComplaintDetailEventCopyWithImpl<$Res, _$_GetComplaintDetails>
    implements _$$_GetComplaintDetailsCopyWith<$Res> {
  __$$_GetComplaintDetailsCopyWithImpl(_$_GetComplaintDetails _value,
      $Res Function(_$_GetComplaintDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintId = null,
  }) {
    return _then(_$_GetComplaintDetails(
      complaintId: null == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetComplaintDetails implements _GetComplaintDetails {
  const _$_GetComplaintDetails({required this.complaintId});

  @override
  final String complaintId;

  @override
  String toString() {
    return 'ComplaintDetailEvent.getComplaintDetails(complaintId: $complaintId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetComplaintDetails &&
            (identical(other.complaintId, complaintId) ||
                other.complaintId == complaintId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, complaintId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetComplaintDetailsCopyWith<_$_GetComplaintDetails> get copyWith =>
      __$$_GetComplaintDetailsCopyWithImpl<_$_GetComplaintDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String complaintId) getComplaintDetails,
    required TResult Function(String complaintId, int status, String comment)
        updateComplaint,
  }) {
    return getComplaintDetails(complaintId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String complaintId)? getComplaintDetails,
    TResult? Function(String complaintId, int status, String comment)?
        updateComplaint,
  }) {
    return getComplaintDetails?.call(complaintId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String complaintId)? getComplaintDetails,
    TResult Function(String complaintId, int status, String comment)?
        updateComplaint,
    required TResult orElse(),
  }) {
    if (getComplaintDetails != null) {
      return getComplaintDetails(complaintId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComplaintDetails value) getComplaintDetails,
    required TResult Function(_UpdateComplaint value) updateComplaint,
  }) {
    return getComplaintDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComplaintDetails value)? getComplaintDetails,
    TResult? Function(_UpdateComplaint value)? updateComplaint,
  }) {
    return getComplaintDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComplaintDetails value)? getComplaintDetails,
    TResult Function(_UpdateComplaint value)? updateComplaint,
    required TResult orElse(),
  }) {
    if (getComplaintDetails != null) {
      return getComplaintDetails(this);
    }
    return orElse();
  }
}

abstract class _GetComplaintDetails implements ComplaintDetailEvent {
  const factory _GetComplaintDetails({required final String complaintId}) =
      _$_GetComplaintDetails;

  @override
  String get complaintId;
  @override
  @JsonKey(ignore: true)
  _$$_GetComplaintDetailsCopyWith<_$_GetComplaintDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateComplaintCopyWith<$Res>
    implements $ComplaintDetailEventCopyWith<$Res> {
  factory _$$_UpdateComplaintCopyWith(
          _$_UpdateComplaint value, $Res Function(_$_UpdateComplaint) then) =
      __$$_UpdateComplaintCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String complaintId, int status, String comment});
}

/// @nodoc
class __$$_UpdateComplaintCopyWithImpl<$Res>
    extends _$ComplaintDetailEventCopyWithImpl<$Res, _$_UpdateComplaint>
    implements _$$_UpdateComplaintCopyWith<$Res> {
  __$$_UpdateComplaintCopyWithImpl(
      _$_UpdateComplaint _value, $Res Function(_$_UpdateComplaint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintId = null,
    Object? status = null,
    Object? comment = null,
  }) {
    return _then(_$_UpdateComplaint(
      complaintId: null == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateComplaint implements _UpdateComplaint {
  const _$_UpdateComplaint(
      {required this.complaintId, required this.status, required this.comment});

  @override
  final String complaintId;
  @override
  final int status;
  @override
  final String comment;

  @override
  String toString() {
    return 'ComplaintDetailEvent.updateComplaint(complaintId: $complaintId, status: $status, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateComplaint &&
            (identical(other.complaintId, complaintId) ||
                other.complaintId == complaintId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, complaintId, status, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateComplaintCopyWith<_$_UpdateComplaint> get copyWith =>
      __$$_UpdateComplaintCopyWithImpl<_$_UpdateComplaint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String complaintId) getComplaintDetails,
    required TResult Function(String complaintId, int status, String comment)
        updateComplaint,
  }) {
    return updateComplaint(complaintId, status, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String complaintId)? getComplaintDetails,
    TResult? Function(String complaintId, int status, String comment)?
        updateComplaint,
  }) {
    return updateComplaint?.call(complaintId, status, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String complaintId)? getComplaintDetails,
    TResult Function(String complaintId, int status, String comment)?
        updateComplaint,
    required TResult orElse(),
  }) {
    if (updateComplaint != null) {
      return updateComplaint(complaintId, status, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComplaintDetails value) getComplaintDetails,
    required TResult Function(_UpdateComplaint value) updateComplaint,
  }) {
    return updateComplaint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComplaintDetails value)? getComplaintDetails,
    TResult? Function(_UpdateComplaint value)? updateComplaint,
  }) {
    return updateComplaint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComplaintDetails value)? getComplaintDetails,
    TResult Function(_UpdateComplaint value)? updateComplaint,
    required TResult orElse(),
  }) {
    if (updateComplaint != null) {
      return updateComplaint(this);
    }
    return orElse();
  }
}

abstract class _UpdateComplaint implements ComplaintDetailEvent {
  const factory _UpdateComplaint(
      {required final String complaintId,
      required final int status,
      required final String comment}) = _$_UpdateComplaint;

  @override
  String get complaintId;
  int get status;
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateComplaintCopyWith<_$_UpdateComplaint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComplaintDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
      get complaintDetailsOption => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, CommonResponse>> get updateComplaintOption =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplaintDetailStateCopyWith<ComplaintDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintDetailStateCopyWith<$Res> {
  factory $ComplaintDetailStateCopyWith(ComplaintDetailState value,
          $Res Function(ComplaintDetailState) then) =
      _$ComplaintDetailStateCopyWithImpl<$Res, ComplaintDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Option<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
          complaintDetailsOption,
      Option<Either<ApiErrorHandler, CommonResponse>> updateComplaintOption,
      String? error});
}

/// @nodoc
class _$ComplaintDetailStateCopyWithImpl<$Res,
        $Val extends ComplaintDetailState>
    implements $ComplaintDetailStateCopyWith<$Res> {
  _$ComplaintDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? complaintDetailsOption = null,
    Object? updateComplaintOption = null,
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
      complaintDetailsOption: null == complaintDetailsOption
          ? _value.complaintDetailsOption
          : complaintDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>,
      updateComplaintOption: null == updateComplaintOption
          ? _value.updateComplaintOption
          : updateComplaintOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CommonResponse>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComplaintStateCopyWith<$Res>
    implements $ComplaintDetailStateCopyWith<$Res> {
  factory _$$_ComplaintStateCopyWith(
          _$_ComplaintState value, $Res Function(_$_ComplaintState) then) =
      __$$_ComplaintStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Option<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
          complaintDetailsOption,
      Option<Either<ApiErrorHandler, CommonResponse>> updateComplaintOption,
      String? error});
}

/// @nodoc
class __$$_ComplaintStateCopyWithImpl<$Res>
    extends _$ComplaintDetailStateCopyWithImpl<$Res, _$_ComplaintState>
    implements _$$_ComplaintStateCopyWith<$Res> {
  __$$_ComplaintStateCopyWithImpl(
      _$_ComplaintState _value, $Res Function(_$_ComplaintState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? complaintDetailsOption = null,
    Object? updateComplaintOption = null,
    Object? error = freezed,
  }) {
    return _then(_$_ComplaintState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      complaintDetailsOption: null == complaintDetailsOption
          ? _value.complaintDetailsOption
          : complaintDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>,
      updateComplaintOption: null == updateComplaintOption
          ? _value.updateComplaintOption
          : updateComplaintOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CommonResponse>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ComplaintState implements _ComplaintState {
  const _$_ComplaintState(
      {required this.isLoading,
      required this.isError,
      required this.complaintDetailsOption,
      required this.updateComplaintOption,
      required this.error});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final Option<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
      complaintDetailsOption;
  @override
  final Option<Either<ApiErrorHandler, CommonResponse>> updateComplaintOption;
  @override
  final String? error;

  @override
  String toString() {
    return 'ComplaintDetailState(isLoading: $isLoading, isError: $isError, complaintDetailsOption: $complaintDetailsOption, updateComplaintOption: $updateComplaintOption, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComplaintState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.complaintDetailsOption, complaintDetailsOption) ||
                other.complaintDetailsOption == complaintDetailsOption) &&
            (identical(other.updateComplaintOption, updateComplaintOption) ||
                other.updateComplaintOption == updateComplaintOption) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      complaintDetailsOption, updateComplaintOption, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComplaintStateCopyWith<_$_ComplaintState> get copyWith =>
      __$$_ComplaintStateCopyWithImpl<_$_ComplaintState>(this, _$identity);
}

abstract class _ComplaintState implements ComplaintDetailState {
  const factory _ComplaintState(
      {required final bool isLoading,
      required final bool isError,
      required final Option<
              Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
          complaintDetailsOption,
      required final Option<Either<ApiErrorHandler, CommonResponse>>
          updateComplaintOption,
      required final String? error}) = _$_ComplaintState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  Option<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
      get complaintDetailsOption;
  @override
  Option<Either<ApiErrorHandler, CommonResponse>> get updateComplaintOption;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ComplaintStateCopyWith<_$_ComplaintState> get copyWith =>
      throw _privateConstructorUsedError;
}
