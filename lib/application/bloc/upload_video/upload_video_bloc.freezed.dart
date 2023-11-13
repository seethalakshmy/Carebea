// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoUploadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)
        addSettings,
    required TResult Function(int isSelected) radioForClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)?
        addSettings,
    TResult? Function(int isSelected)? radioForClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)?
        addSettings,
    TResult Function(int isSelected)? radioForClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadVideo value) addSettings,
    required TResult Function(_RadioForClient value) radioForClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadVideo value)? addSettings,
    TResult? Function(_RadioForClient value)? radioForClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadVideo value)? addSettings,
    TResult Function(_RadioForClient value)? radioForClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoUploadEventCopyWith<$Res> {
  factory $VideoUploadEventCopyWith(
          VideoUploadEvent value, $Res Function(VideoUploadEvent) then) =
      _$VideoUploadEventCopyWithImpl<$Res, VideoUploadEvent>;
}

/// @nodoc
class _$VideoUploadEventCopyWithImpl<$Res, $Val extends VideoUploadEvent>
    implements $VideoUploadEventCopyWith<$Res> {
  _$VideoUploadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UploadVideoCopyWith<$Res> {
  factory _$$_UploadVideoCopyWith(
          _$_UploadVideo value, $Res Function(_$_UploadVideo) then) =
      __$$_UploadVideoCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String adminId,
      String? settingsId,
      String title,
      String? description,
      String attachment,
      int userType,
      BuildContext context});
}

/// @nodoc
class __$$_UploadVideoCopyWithImpl<$Res>
    extends _$VideoUploadEventCopyWithImpl<$Res, _$_UploadVideo>
    implements _$$_UploadVideoCopyWith<$Res> {
  __$$_UploadVideoCopyWithImpl(
      _$_UploadVideo _value, $Res Function(_$_UploadVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminId = null,
    Object? settingsId = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? attachment = null,
    Object? userType = null,
    Object? context = null,
  }) {
    return _then(_$_UploadVideo(
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      settingsId: freezed == settingsId
          ? _value.settingsId
          : settingsId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_UploadVideo implements _UploadVideo {
  const _$_UploadVideo(
      {required this.adminId,
      this.settingsId,
      required this.title,
      this.description,
      required this.attachment,
      required this.userType,
      required this.context});

  @override
  final String adminId;
  @override
  final String? settingsId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String attachment;
  @override
  final int userType;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'VideoUploadEvent.addSettings(adminId: $adminId, settingsId: $settingsId, title: $title, description: $description, attachment: $attachment, userType: $userType, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadVideo &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.settingsId, settingsId) ||
                other.settingsId == settingsId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminId, settingsId, title,
      description, attachment, userType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadVideoCopyWith<_$_UploadVideo> get copyWith =>
      __$$_UploadVideoCopyWithImpl<_$_UploadVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)
        addSettings,
    required TResult Function(int isSelected) radioForClient,
  }) {
    return addSettings(
        adminId, settingsId, title, description, attachment, userType, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)?
        addSettings,
    TResult? Function(int isSelected)? radioForClient,
  }) {
    return addSettings?.call(
        adminId, settingsId, title, description, attachment, userType, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)?
        addSettings,
    TResult Function(int isSelected)? radioForClient,
    required TResult orElse(),
  }) {
    if (addSettings != null) {
      return addSettings(adminId, settingsId, title, description, attachment,
          userType, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadVideo value) addSettings,
    required TResult Function(_RadioForClient value) radioForClient,
  }) {
    return addSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadVideo value)? addSettings,
    TResult? Function(_RadioForClient value)? radioForClient,
  }) {
    return addSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadVideo value)? addSettings,
    TResult Function(_RadioForClient value)? radioForClient,
    required TResult orElse(),
  }) {
    if (addSettings != null) {
      return addSettings(this);
    }
    return orElse();
  }
}

abstract class _UploadVideo implements VideoUploadEvent {
  const factory _UploadVideo(
      {required final String adminId,
      final String? settingsId,
      required final String title,
      final String? description,
      required final String attachment,
      required final int userType,
      required final BuildContext context}) = _$_UploadVideo;

  String get adminId;
  String? get settingsId;
  String get title;
  String? get description;
  String get attachment;
  int get userType;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_UploadVideoCopyWith<_$_UploadVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioForClientCopyWith<$Res> {
  factory _$$_RadioForClientCopyWith(
          _$_RadioForClient value, $Res Function(_$_RadioForClient) then) =
      __$$_RadioForClientCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioForClientCopyWithImpl<$Res>
    extends _$VideoUploadEventCopyWithImpl<$Res, _$_RadioForClient>
    implements _$$_RadioForClientCopyWith<$Res> {
  __$$_RadioForClientCopyWithImpl(
      _$_RadioForClient _value, $Res Function(_$_RadioForClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioForClient(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioForClient implements _RadioForClient {
  const _$_RadioForClient({required this.isSelected});

  @override
  final int isSelected;

  @override
  String toString() {
    return 'VideoUploadEvent.radioForClient(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioForClient &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioForClientCopyWith<_$_RadioForClient> get copyWith =>
      __$$_RadioForClientCopyWithImpl<_$_RadioForClient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)
        addSettings,
    required TResult Function(int isSelected) radioForClient,
  }) {
    return radioForClient(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)?
        addSettings,
    TResult? Function(int isSelected)? radioForClient,
  }) {
    return radioForClient?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String adminId,
            String? settingsId,
            String title,
            String? description,
            String attachment,
            int userType,
            BuildContext context)?
        addSettings,
    TResult Function(int isSelected)? radioForClient,
    required TResult orElse(),
  }) {
    if (radioForClient != null) {
      return radioForClient(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadVideo value) addSettings,
    required TResult Function(_RadioForClient value) radioForClient,
  }) {
    return radioForClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadVideo value)? addSettings,
    TResult? Function(_RadioForClient value)? radioForClient,
  }) {
    return radioForClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadVideo value)? addSettings,
    TResult Function(_RadioForClient value)? radioForClient,
    required TResult orElse(),
  }) {
    if (radioForClient != null) {
      return radioForClient(this);
    }
    return orElse();
  }
}

abstract class _RadioForClient implements VideoUploadEvent {
  const factory _RadioForClient({required final int isSelected}) =
      _$_RadioForClient;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioForClientCopyWith<_$_RadioForClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoUploadState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  int get isForClient => throw _privateConstructorUsedError;
  CommonResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isLoadingButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoUploadStateCopyWith<VideoUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoUploadStateCopyWith<$Res> {
  factory $VideoUploadStateCopyWith(
          VideoUploadState value, $Res Function(VideoUploadState) then) =
      _$VideoUploadStateCopyWithImpl<$Res, VideoUploadState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      int isForClient,
      CommonResponse? response,
      String? error,
      bool isLoadingButton});
}

/// @nodoc
class _$VideoUploadStateCopyWithImpl<$Res, $Val extends VideoUploadState>
    implements $VideoUploadStateCopyWith<$Res> {
  _$VideoUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isForClient = null,
    Object? response = freezed,
    Object? error = freezed,
    Object? isLoadingButton = null,
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
      isForClient: null == isForClient
          ? _value.isForClient
          : isForClient // ignore: cast_nullable_to_non_nullable
              as int,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoUploadStateCopyWith<$Res>
    implements $VideoUploadStateCopyWith<$Res> {
  factory _$$_VideoUploadStateCopyWith(
          _$_VideoUploadState value, $Res Function(_$_VideoUploadState) then) =
      __$$_VideoUploadStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      int isForClient,
      CommonResponse? response,
      String? error,
      bool isLoadingButton});
}

/// @nodoc
class __$$_VideoUploadStateCopyWithImpl<$Res>
    extends _$VideoUploadStateCopyWithImpl<$Res, _$_VideoUploadState>
    implements _$$_VideoUploadStateCopyWith<$Res> {
  __$$_VideoUploadStateCopyWithImpl(
      _$_VideoUploadState _value, $Res Function(_$_VideoUploadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isForClient = null,
    Object? response = freezed,
    Object? error = freezed,
    Object? isLoadingButton = null,
  }) {
    return _then(_$_VideoUploadState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isForClient: null == isForClient
          ? _value.isForClient
          : isForClient // ignore: cast_nullable_to_non_nullable
              as int,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoUploadState implements _VideoUploadState {
  const _$_VideoUploadState(
      {required this.isLoading,
      required this.isError,
      required this.isForClient,
      required this.response,
      required this.error,
      this.isLoadingButton = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final int isForClient;
  @override
  final CommonResponse? response;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isLoadingButton;

  @override
  String toString() {
    return 'VideoUploadState(isLoading: $isLoading, isError: $isError, isForClient: $isForClient, response: $response, error: $error, isLoadingButton: $isLoadingButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoUploadState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isForClient, isForClient) ||
                other.isForClient == isForClient) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoadingButton, isLoadingButton) ||
                other.isLoadingButton == isLoadingButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, isForClient,
      response, error, isLoadingButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoUploadStateCopyWith<_$_VideoUploadState> get copyWith =>
      __$$_VideoUploadStateCopyWithImpl<_$_VideoUploadState>(this, _$identity);
}

abstract class _VideoUploadState implements VideoUploadState {
  const factory _VideoUploadState(
      {required final bool isLoading,
      required final bool isError,
      required final int isForClient,
      required final CommonResponse? response,
      required final String? error,
      final bool isLoadingButton}) = _$_VideoUploadState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  int get isForClient;
  @override
  CommonResponse? get response;
  @override
  String? get error;
  @override
  bool get isLoadingButton;
  @override
  @JsonKey(ignore: true)
  _$$_VideoUploadStateCopyWith<_$_VideoUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}
