// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caregiver_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CaregiverCreationEvent {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get mobileNo => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String mobileNo, BuildContext context)
        createCaregiver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String email,
            String mobileNo, BuildContext context)?
        createCaregiver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String mobileNo, BuildContext context)?
        createCaregiver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCaregiver value) createCaregiver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCaregiver value)? createCaregiver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCaregiver value)? createCaregiver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CaregiverCreationEventCopyWith<CaregiverCreationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaregiverCreationEventCopyWith<$Res> {
  factory $CaregiverCreationEventCopyWith(CaregiverCreationEvent value,
          $Res Function(CaregiverCreationEvent) then) =
      _$CaregiverCreationEventCopyWithImpl<$Res, CaregiverCreationEvent>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String mobileNo,
      BuildContext context});
}

/// @nodoc
class _$CaregiverCreationEventCopyWithImpl<$Res,
        $Val extends CaregiverCreationEvent>
    implements $CaregiverCreationEventCopyWith<$Res> {
  _$CaregiverCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? mobileNo = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateCaregiverCopyWith<$Res>
    implements $CaregiverCreationEventCopyWith<$Res> {
  factory _$$_CreateCaregiverCopyWith(
          _$_CreateCaregiver value, $Res Function(_$_CreateCaregiver) then) =
      __$$_CreateCaregiverCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String mobileNo,
      BuildContext context});
}

/// @nodoc
class __$$_CreateCaregiverCopyWithImpl<$Res>
    extends _$CaregiverCreationEventCopyWithImpl<$Res, _$_CreateCaregiver>
    implements _$$_CreateCaregiverCopyWith<$Res> {
  __$$_CreateCaregiverCopyWithImpl(
      _$_CreateCaregiver _value, $Res Function(_$_CreateCaregiver) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? mobileNo = null,
    Object? context = null,
  }) {
    return _then(_$_CreateCaregiver(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_CreateCaregiver implements _CreateCaregiver {
  const _$_CreateCaregiver(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.mobileNo,
      required this.context});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String mobileNo;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CaregiverCreationEvent.createCaregiver(firstName: $firstName, lastName: $lastName, email: $email, mobileNo: $mobileNo, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCaregiver &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, mobileNo, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCaregiverCopyWith<_$_CreateCaregiver> get copyWith =>
      __$$_CreateCaregiverCopyWithImpl<_$_CreateCaregiver>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String mobileNo, BuildContext context)
        createCaregiver,
  }) {
    return createCaregiver(firstName, lastName, email, mobileNo, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String email,
            String mobileNo, BuildContext context)?
        createCaregiver,
  }) {
    return createCaregiver?.call(firstName, lastName, email, mobileNo, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String mobileNo, BuildContext context)?
        createCaregiver,
    required TResult orElse(),
  }) {
    if (createCaregiver != null) {
      return createCaregiver(firstName, lastName, email, mobileNo, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCaregiver value) createCaregiver,
  }) {
    return createCaregiver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCaregiver value)? createCaregiver,
  }) {
    return createCaregiver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCaregiver value)? createCaregiver,
    required TResult orElse(),
  }) {
    if (createCaregiver != null) {
      return createCaregiver(this);
    }
    return orElse();
  }
}

abstract class _CreateCaregiver implements CaregiverCreationEvent {
  const factory _CreateCaregiver(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final String mobileNo,
      required final BuildContext context}) = _$_CreateCaregiver;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get mobileNo;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCaregiverCopyWith<_$_CreateCaregiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CaregiverCreationState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, CaregiverCreationResponse>>
      get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CaregiverCreationStateCopyWith<CaregiverCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaregiverCreationStateCopyWith<$Res> {
  factory $CaregiverCreationStateCopyWith(CaregiverCreationState value,
          $Res Function(CaregiverCreationState) then) =
      _$CaregiverCreationStateCopyWithImpl<$Res, CaregiverCreationState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ApiErrorHandler, CaregiverCreationResponse>>
          failureOrSuccessOption});
}

/// @nodoc
class _$CaregiverCreationStateCopyWithImpl<$Res,
        $Val extends CaregiverCreationState>
    implements $CaregiverCreationStateCopyWith<$Res> {
  _$CaregiverCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CaregiverCreationResponse>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CaregiverCreationStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ApiErrorHandler, CaregiverCreationResponse>>
          failureOrSuccessOption});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CaregiverCreationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CaregiverCreationResponse>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading, required this.failureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final Option<Either<ApiErrorHandler, CaregiverCreationResponse>>
      failureOrSuccessOption;

  @override
  String toString() {
    return 'CaregiverCreationState(isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CaregiverCreationState {
  const factory _Initial(
      {required final bool isLoading,
      required final Option<Either<ApiErrorHandler, CaregiverCreationResponse>>
          failureOrSuccessOption}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  Option<Either<ApiErrorHandler, CaregiverCreationResponse>>
      get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
