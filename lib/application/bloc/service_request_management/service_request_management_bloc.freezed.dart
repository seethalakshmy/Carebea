// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
    required TResult Function() started,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function(Types type) getServiceList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function(Types type)? getServiceList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Types type)? isSelectedTab,
    TResult Function(Types type)? getServiceList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_GetServiceList value) getServiceList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_GetServiceList value)? getServiceList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_GetServiceList value)? getServiceList,
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
    required TResult Function() started,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function(Types type) getServiceList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function(Types type)? getServiceList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Types type)? isSelectedTab,
    TResult Function(Types type)? getServiceList,
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
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_GetServiceList value) getServiceList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_GetServiceList value)? getServiceList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_GetServiceList value)? getServiceList,
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
  $Res call({Types type});
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
    return 'ServiceRequestManagementEvent.isSelectedTab(type: $type)';
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
    required TResult Function() started,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function(Types type) getServiceList,
  }) {
    return isSelectedTab(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function(Types type)? getServiceList,
  }) {
    return isSelectedTab?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Types type)? isSelectedTab,
    TResult Function(Types type)? getServiceList,
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
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_GetServiceList value) getServiceList,
  }) {
    return isSelectedTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_GetServiceList value)? getServiceList,
  }) {
    return isSelectedTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_GetServiceList value)? getServiceList,
    required TResult orElse(),
  }) {
    if (isSelectedTab != null) {
      return isSelectedTab(this);
    }
    return orElse();
  }
}

abstract class _IsSelectedTab implements ServiceRequestManagementEvent {
  const factory _IsSelectedTab(final Types type) = _$_IsSelectedTab;

  Types get type;
  @JsonKey(ignore: true)
  _$$_IsSelectedTabCopyWith<_$_IsSelectedTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetServiceListCopyWith<$Res> {
  factory _$$_GetServiceListCopyWith(
          _$_GetServiceList value, $Res Function(_$_GetServiceList) then) =
      __$$_GetServiceListCopyWithImpl<$Res>;
  @useResult
  $Res call({Types type});
}

/// @nodoc
class __$$_GetServiceListCopyWithImpl<$Res>
    extends _$ServiceRequestManagementEventCopyWithImpl<$Res, _$_GetServiceList>
    implements _$$_GetServiceListCopyWith<$Res> {
  __$$_GetServiceListCopyWithImpl(
      _$_GetServiceList _value, $Res Function(_$_GetServiceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_GetServiceList(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Types,
    ));
  }
}

/// @nodoc

class _$_GetServiceList implements _GetServiceList {
  const _$_GetServiceList(this.type);

  @override
  final Types type;

  @override
  String toString() {
    return 'ServiceRequestManagementEvent.getServiceList(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetServiceList &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetServiceListCopyWith<_$_GetServiceList> get copyWith =>
      __$$_GetServiceListCopyWithImpl<_$_GetServiceList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Types type) isSelectedTab,
    required TResult Function(Types type) getServiceList,
  }) {
    return getServiceList(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Types type)? isSelectedTab,
    TResult? Function(Types type)? getServiceList,
  }) {
    return getServiceList?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Types type)? isSelectedTab,
    TResult Function(Types type)? getServiceList,
    required TResult orElse(),
  }) {
    if (getServiceList != null) {
      return getServiceList(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IsSelectedTab value) isSelectedTab,
    required TResult Function(_GetServiceList value) getServiceList,
  }) {
    return getServiceList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IsSelectedTab value)? isSelectedTab,
    TResult? Function(_GetServiceList value)? getServiceList,
  }) {
    return getServiceList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IsSelectedTab value)? isSelectedTab,
    TResult Function(_GetServiceList value)? getServiceList,
    required TResult orElse(),
  }) {
    if (getServiceList != null) {
      return getServiceList(this);
    }
    return orElse();
  }
}

abstract class _GetServiceList implements ServiceRequestManagementEvent {
  const factory _GetServiceList(final Types type) = _$_GetServiceList;

  Types get type;
  @JsonKey(ignore: true)
  _$$_GetServiceListCopyWith<_$_GetServiceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceRequestManagementState {
  List<Types> get types => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<Services> get services => throw _privateConstructorUsedError;

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
      String? error,
      List<Services> services});
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
    Object? error = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Services>,
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
      String? error,
      List<Services> services});
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
    Object? error = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Services>,
    ));
  }
}

/// @nodoc

class _$_ServiceRequestManagementState
    implements _ServiceRequestManagementState {
  const _$_ServiceRequestManagementState(
      {required final List<Types> types,
      this.isLoading,
      required this.error,
      required final List<Services> services})
      : _types = types,
        _services = services;

  final List<Types> _types;
  @override
  List<Types> get types {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final bool? isLoading;
  @override
  final String? error;
  final List<Services> _services;
  @override
  List<Services> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceRequestManagementState(types: $types, isLoading: $isLoading, error: $error, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceRequestManagementState &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_types),
      isLoading,
      error,
      const DeepCollectionEquality().hash(_services));

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
          required final String? error,
          required final List<Services> services}) =
      _$_ServiceRequestManagementState;

  @override
  List<Types> get types;
  @override
  bool? get isLoading;
  @override
  String? get error;
  @override
  List<Services> get services;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceRequestManagementStateCopyWith<_$_ServiceRequestManagementState>
      get copyWith => throw _privateConstructorUsedError;
}
