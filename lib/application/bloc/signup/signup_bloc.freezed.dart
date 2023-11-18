// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String get deviceToken => throw _privateConstructorUsedError;
  String get profilePic => throw _privateConstructorUsedError;
  String get deviceType => throw _privateConstructorUsedError;
  int get userType => throw _privateConstructorUsedError;
  bool get isSocialLogin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String email,
            String password,
            String firstName,
            String lastName,
            String mobileNumber,
            String deviceToken,
            String profilePic,
            String deviceType,
            int userType,
            bool isSocialLogin)
        signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String email,
            String password,
            String firstName,
            String lastName,
            String mobileNumber,
            String deviceToken,
            String profilePic,
            String deviceType,
            int userType,
            bool isSocialLogin)?
        signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String email,
            String password,
            String firstName,
            String lastName,
            String mobileNumber,
            String deviceToken,
            String profilePic,
            String deviceType,
            int userType,
            bool isSocialLogin)?
        signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupEventCopyWith<SignupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
  @useResult
  $Res call(
      {BuildContext context,
      String email,
      String password,
      String firstName,
      String lastName,
      String mobileNumber,
      String deviceToken,
      String profilePic,
      String deviceType,
      int userType,
      bool isSocialLogin});
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? mobileNumber = null,
    Object? deviceToken = null,
    Object? profilePic = null,
    Object? deviceType = null,
    Object? userType = null,
    Object? isSocialLogin = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      isSocialLogin: null == isSocialLogin
          ? _value.isSocialLogin
          : isSocialLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory _$$_SignupCopyWith(_$_Signup value, $Res Function(_$_Signup) then) =
      __$$_SignupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context,
      String email,
      String password,
      String firstName,
      String lastName,
      String mobileNumber,
      String deviceToken,
      String profilePic,
      String deviceType,
      int userType,
      bool isSocialLogin});
}

/// @nodoc
class __$$_SignupCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$_Signup>
    implements _$$_SignupCopyWith<$Res> {
  __$$_SignupCopyWithImpl(_$_Signup _value, $Res Function(_$_Signup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? mobileNumber = null,
    Object? deviceToken = null,
    Object? profilePic = null,
    Object? deviceType = null,
    Object? userType = null,
    Object? isSocialLogin = null,
  }) {
    return _then(_$_Signup(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      isSocialLogin: null == isSocialLogin
          ? _value.isSocialLogin
          : isSocialLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Signup implements _Signup {
  const _$_Signup(
      {required this.context,
      required this.email,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.mobileNumber,
      required this.deviceToken,
      required this.profilePic,
      required this.deviceType,
      required this.userType,
      required this.isSocialLogin});

  @override
  final BuildContext context;
  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String mobileNumber;
  @override
  final String deviceToken;
  @override
  final String profilePic;
  @override
  final String deviceType;
  @override
  final int userType;
  @override
  final bool isSocialLogin;

  @override
  String toString() {
    return 'SignupEvent.signup(context: $context, email: $email, password: $password, firstName: $firstName, lastName: $lastName, mobileNumber: $mobileNumber, deviceToken: $deviceToken, profilePic: $profilePic, deviceType: $deviceType, userType: $userType, isSocialLogin: $isSocialLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Signup &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.isSocialLogin, isSocialLogin) ||
                other.isSocialLogin == isSocialLogin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      context,
      email,
      password,
      firstName,
      lastName,
      mobileNumber,
      deviceToken,
      profilePic,
      deviceType,
      userType,
      isSocialLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupCopyWith<_$_Signup> get copyWith =>
      __$$_SignupCopyWithImpl<_$_Signup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context,
            String email,
            String password,
            String firstName,
            String lastName,
            String mobileNumber,
            String deviceToken,
            String profilePic,
            String deviceType,
            int userType,
            bool isSocialLogin)
        signup,
  }) {
    return signup(context, email, password, firstName, lastName, mobileNumber,
        deviceToken, profilePic, deviceType, userType, isSocialLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context,
            String email,
            String password,
            String firstName,
            String lastName,
            String mobileNumber,
            String deviceToken,
            String profilePic,
            String deviceType,
            int userType,
            bool isSocialLogin)?
        signup,
  }) {
    return signup?.call(
        context,
        email,
        password,
        firstName,
        lastName,
        mobileNumber,
        deviceToken,
        profilePic,
        deviceType,
        userType,
        isSocialLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context,
            String email,
            String password,
            String firstName,
            String lastName,
            String mobileNumber,
            String deviceToken,
            String profilePic,
            String deviceType,
            int userType,
            bool isSocialLogin)?
        signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(context, email, password, firstName, lastName, mobileNumber,
          deviceToken, profilePic, deviceType, userType, isSocialLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _Signup implements SignupEvent {
  const factory _Signup(
      {required final BuildContext context,
      required final String email,
      required final String password,
      required final String firstName,
      required final String lastName,
      required final String mobileNumber,
      required final String deviceToken,
      required final String profilePic,
      required final String deviceType,
      required final int userType,
      required final bool isSocialLogin}) = _$_Signup;

  @override
  BuildContext get context;
  @override
  String get email;
  @override
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get mobileNumber;
  @override
  String get deviceToken;
  @override
  String get profilePic;
  @override
  String get deviceType;
  @override
  int get userType;
  @override
  bool get isSocialLogin;
  @override
  @JsonKey(ignore: true)
  _$$_SignupCopyWith<_$_Signup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SignUpResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SignUpResponse? response,
      String? error,
      bool isClientError});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

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
              as SignUpResponse?,
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
abstract class _$$_SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupStateCopyWith(
          _$_SignupState value, $Res Function(_$_SignupState) then) =
      __$$_SignupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SignUpResponse? response,
      String? error,
      bool isClientError});
}

/// @nodoc
class __$$_SignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupState>
    implements _$$_SignupStateCopyWith<$Res> {
  __$$_SignupStateCopyWithImpl(
      _$_SignupState _value, $Res Function(_$_SignupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? error = freezed,
    Object? isClientError = null,
  }) {
    return _then(_$_SignupState(
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
              as SignUpResponse?,
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

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.error,
      this.isClientError = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final SignUpResponse? response;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'SignupState(isLoading: $isLoading, isError: $isError, response: $response, error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, response, error, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      __$$_SignupStateCopyWithImpl<_$_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required final bool isLoading,
      required final bool isError,
      required final SignUpResponse? response,
      required final String? error,
      final bool isClientError}) = _$_SignupState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SignUpResponse? get response;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
