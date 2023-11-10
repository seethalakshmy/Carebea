// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'master_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MasterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRegionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRegionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRegionList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRegionList value) getRegionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRegionList value)? getRegionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRegionList value)? getRegionList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterEventCopyWith<$Res> {
  factory $MasterEventCopyWith(
          MasterEvent value, $Res Function(MasterEvent) then) =
      _$MasterEventCopyWithImpl<$Res, MasterEvent>;
}

/// @nodoc
class _$MasterEventCopyWithImpl<$Res, $Val extends MasterEvent>
    implements $MasterEventCopyWith<$Res> {
  _$MasterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRegionListCopyWith<$Res> {
  factory _$$_GetRegionListCopyWith(
          _$_GetRegionList value, $Res Function(_$_GetRegionList) then) =
      __$$_GetRegionListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRegionListCopyWithImpl<$Res>
    extends _$MasterEventCopyWithImpl<$Res, _$_GetRegionList>
    implements _$$_GetRegionListCopyWith<$Res> {
  __$$_GetRegionListCopyWithImpl(
      _$_GetRegionList _value, $Res Function(_$_GetRegionList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRegionList implements _GetRegionList {
  const _$_GetRegionList();

  @override
  String toString() {
    return 'MasterEvent.getRegionList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRegionList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRegionList,
  }) {
    return getRegionList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRegionList,
  }) {
    return getRegionList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRegionList,
    required TResult orElse(),
  }) {
    if (getRegionList != null) {
      return getRegionList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRegionList value) getRegionList,
  }) {
    return getRegionList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRegionList value)? getRegionList,
  }) {
    return getRegionList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRegionList value)? getRegionList,
    required TResult orElse(),
  }) {
    if (getRegionList != null) {
      return getRegionList(this);
    }
    return orElse();
  }
}

abstract class _GetRegionList implements MasterEvent {
  const factory _GetRegionList() = _$_GetRegionList;
}

/// @nodoc
mixin _$MasterState {
  bool get isRegionLoading => throw _privateConstructorUsedError;
  bool get isFilterLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  RegionListResponse? get regionListResponse =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MasterStateCopyWith<MasterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterStateCopyWith<$Res> {
  factory $MasterStateCopyWith(
          MasterState value, $Res Function(MasterState) then) =
      _$MasterStateCopyWithImpl<$Res, MasterState>;
  @useResult
  $Res call(
      {bool isRegionLoading,
      bool isFilterLoading,
      bool isError,
      RegionListResponse? regionListResponse,
      String? error});
}

/// @nodoc
class _$MasterStateCopyWithImpl<$Res, $Val extends MasterState>
    implements $MasterStateCopyWith<$Res> {
  _$MasterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegionLoading = null,
    Object? isFilterLoading = null,
    Object? isError = null,
    Object? regionListResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isRegionLoading: null == isRegionLoading
          ? _value.isRegionLoading
          : isRegionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterLoading: null == isFilterLoading
          ? _value.isFilterLoading
          : isFilterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      regionListResponse: freezed == regionListResponse
          ? _value.regionListResponse
          : regionListResponse // ignore: cast_nullable_to_non_nullable
              as RegionListResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MasterStateCopyWith<$Res>
    implements $MasterStateCopyWith<$Res> {
  factory _$$_MasterStateCopyWith(
          _$_MasterState value, $Res Function(_$_MasterState) then) =
      __$$_MasterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isRegionLoading,
      bool isFilterLoading,
      bool isError,
      RegionListResponse? regionListResponse,
      String? error});
}

/// @nodoc
class __$$_MasterStateCopyWithImpl<$Res>
    extends _$MasterStateCopyWithImpl<$Res, _$_MasterState>
    implements _$$_MasterStateCopyWith<$Res> {
  __$$_MasterStateCopyWithImpl(
      _$_MasterState _value, $Res Function(_$_MasterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegionLoading = null,
    Object? isFilterLoading = null,
    Object? isError = null,
    Object? regionListResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_MasterState(
      isRegionLoading: null == isRegionLoading
          ? _value.isRegionLoading
          : isRegionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterLoading: null == isFilterLoading
          ? _value.isFilterLoading
          : isFilterLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      regionListResponse: freezed == regionListResponse
          ? _value.regionListResponse
          : regionListResponse // ignore: cast_nullable_to_non_nullable
              as RegionListResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MasterState implements _MasterState {
  const _$_MasterState(
      {required this.isRegionLoading,
      required this.isFilterLoading,
      required this.isError,
      required this.regionListResponse,
      required this.error});

  @override
  final bool isRegionLoading;
  @override
  final bool isFilterLoading;
  @override
  final bool isError;
  @override
  final RegionListResponse? regionListResponse;
  @override
  final String? error;

  @override
  String toString() {
    return 'MasterState(isRegionLoading: $isRegionLoading, isFilterLoading: $isFilterLoading, isError: $isError, regionListResponse: $regionListResponse, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterState &&
            (identical(other.isRegionLoading, isRegionLoading) ||
                other.isRegionLoading == isRegionLoading) &&
            (identical(other.isFilterLoading, isFilterLoading) ||
                other.isFilterLoading == isFilterLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.regionListResponse, regionListResponse) ||
                other.regionListResponse == regionListResponse) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRegionLoading, isFilterLoading,
      isError, regionListResponse, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterStateCopyWith<_$_MasterState> get copyWith =>
      __$$_MasterStateCopyWithImpl<_$_MasterState>(this, _$identity);
}

abstract class _MasterState implements MasterState {
  const factory _MasterState(
      {required final bool isRegionLoading,
      required final bool isFilterLoading,
      required final bool isError,
      required final RegionListResponse? regionListResponse,
      required final String? error}) = _$_MasterState;

  @override
  bool get isRegionLoading;
  @override
  bool get isFilterLoading;
  @override
  bool get isError;
  @override
  RegionListResponse? get regionListResponse;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_MasterStateCopyWith<_$_MasterState> get copyWith =>
      throw _privateConstructorUsedError;
}
