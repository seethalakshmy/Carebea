// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'role_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoleCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)
        addUpdateRole,
    required TResult Function(String userId) getModules,
    required TResult Function(String userId, String roleId) viewRole,
    required TResult Function(Module module) isSelected,
    required TResult Function(bool value) isCheckedView,
    required TResult Function(bool value) isCheckedEdit,
    required TResult Function(bool value) isCheckedDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult? Function(String userId)? getModules,
    TResult? Function(String userId, String roleId)? viewRole,
    TResult? Function(Module module)? isSelected,
    TResult? Function(bool value)? isCheckedView,
    TResult? Function(bool value)? isCheckedEdit,
    TResult? Function(bool value)? isCheckedDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult Function(String userId)? getModules,
    TResult Function(String userId, String roleId)? viewRole,
    TResult Function(Module module)? isSelected,
    TResult Function(bool value)? isCheckedView,
    TResult Function(bool value)? isCheckedEdit,
    TResult Function(bool value)? isCheckedDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUpdateRole value) addUpdateRole,
    required TResult Function(_GetModules value) getModules,
    required TResult Function(_ViewRole value) viewRole,
    required TResult Function(_IsSelected value) isSelected,
    required TResult Function(_IsCheckedView value) isCheckedView,
    required TResult Function(_IsCheckedEdit value) isCheckedEdit,
    required TResult Function(_IsCheckedDelete value) isCheckedDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddUpdateRole value)? addUpdateRole,
    TResult? Function(_GetModules value)? getModules,
    TResult? Function(_ViewRole value)? viewRole,
    TResult? Function(_IsSelected value)? isSelected,
    TResult? Function(_IsCheckedView value)? isCheckedView,
    TResult? Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult? Function(_IsCheckedDelete value)? isCheckedDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUpdateRole value)? addUpdateRole,
    TResult Function(_GetModules value)? getModules,
    TResult Function(_ViewRole value)? viewRole,
    TResult Function(_IsSelected value)? isSelected,
    TResult Function(_IsCheckedView value)? isCheckedView,
    TResult Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult Function(_IsCheckedDelete value)? isCheckedDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCreationEventCopyWith<$Res> {
  factory $RoleCreationEventCopyWith(
          RoleCreationEvent value, $Res Function(RoleCreationEvent) then) =
      _$RoleCreationEventCopyWithImpl<$Res, RoleCreationEvent>;
}

/// @nodoc
class _$RoleCreationEventCopyWithImpl<$Res, $Val extends RoleCreationEvent>
    implements $RoleCreationEventCopyWith<$Res> {
  _$RoleCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddUpdateRoleCopyWith<$Res> {
  factory _$$_AddUpdateRoleCopyWith(
          _$_AddUpdateRole value, $Res Function(_$_AddUpdateRole) then) =
      __$$_AddUpdateRoleCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String role,
      String? roleId,
      List<String> moduleId,
      int isView,
      int isDelete,
      int isEdit,
      BuildContext context});
}

/// @nodoc
class __$$_AddUpdateRoleCopyWithImpl<$Res>
    extends _$RoleCreationEventCopyWithImpl<$Res, _$_AddUpdateRole>
    implements _$$_AddUpdateRoleCopyWith<$Res> {
  __$$_AddUpdateRoleCopyWithImpl(
      _$_AddUpdateRole _value, $Res Function(_$_AddUpdateRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? role = null,
    Object? roleId = freezed,
    Object? moduleId = null,
    Object? isView = null,
    Object? isDelete = null,
    Object? isEdit = null,
    Object? context = null,
  }) {
    return _then(_$_AddUpdateRole(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      moduleId: null == moduleId
          ? _value._moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isView: null == isView
          ? _value.isView
          : isView // ignore: cast_nullable_to_non_nullable
              as int,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as int,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as int,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_AddUpdateRole implements _AddUpdateRole {
  const _$_AddUpdateRole(
      {required this.userId,
      required this.role,
      this.roleId,
      required final List<String> moduleId,
      required this.isView,
      required this.isDelete,
      required this.isEdit,
      required this.context})
      : _moduleId = moduleId;

  @override
  final String userId;
  @override
  final String role;
  @override
  final String? roleId;
  final List<String> _moduleId;
  @override
  List<String> get moduleId {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moduleId);
  }

  @override
  final int isView;
  @override
  final int isDelete;
  @override
  final int isEdit;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RoleCreationEvent.addUpdateRole(userId: $userId, role: $role, roleId: $roleId, moduleId: $moduleId, isView: $isView, isDelete: $isDelete, isEdit: $isEdit, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddUpdateRole &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            const DeepCollectionEquality().equals(other._moduleId, _moduleId) &&
            (identical(other.isView, isView) || other.isView == isView) &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      role,
      roleId,
      const DeepCollectionEquality().hash(_moduleId),
      isView,
      isDelete,
      isEdit,
      context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddUpdateRoleCopyWith<_$_AddUpdateRole> get copyWith =>
      __$$_AddUpdateRoleCopyWithImpl<_$_AddUpdateRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)
        addUpdateRole,
    required TResult Function(String userId) getModules,
    required TResult Function(String userId, String roleId) viewRole,
    required TResult Function(Module module) isSelected,
    required TResult Function(bool value) isCheckedView,
    required TResult Function(bool value) isCheckedEdit,
    required TResult Function(bool value) isCheckedDelete,
  }) {
    return addUpdateRole(
        userId, role, roleId, moduleId, isView, isDelete, isEdit, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult? Function(String userId)? getModules,
    TResult? Function(String userId, String roleId)? viewRole,
    TResult? Function(Module module)? isSelected,
    TResult? Function(bool value)? isCheckedView,
    TResult? Function(bool value)? isCheckedEdit,
    TResult? Function(bool value)? isCheckedDelete,
  }) {
    return addUpdateRole?.call(
        userId, role, roleId, moduleId, isView, isDelete, isEdit, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult Function(String userId)? getModules,
    TResult Function(String userId, String roleId)? viewRole,
    TResult Function(Module module)? isSelected,
    TResult Function(bool value)? isCheckedView,
    TResult Function(bool value)? isCheckedEdit,
    TResult Function(bool value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (addUpdateRole != null) {
      return addUpdateRole(
          userId, role, roleId, moduleId, isView, isDelete, isEdit, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUpdateRole value) addUpdateRole,
    required TResult Function(_GetModules value) getModules,
    required TResult Function(_ViewRole value) viewRole,
    required TResult Function(_IsSelected value) isSelected,
    required TResult Function(_IsCheckedView value) isCheckedView,
    required TResult Function(_IsCheckedEdit value) isCheckedEdit,
    required TResult Function(_IsCheckedDelete value) isCheckedDelete,
  }) {
    return addUpdateRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddUpdateRole value)? addUpdateRole,
    TResult? Function(_GetModules value)? getModules,
    TResult? Function(_ViewRole value)? viewRole,
    TResult? Function(_IsSelected value)? isSelected,
    TResult? Function(_IsCheckedView value)? isCheckedView,
    TResult? Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult? Function(_IsCheckedDelete value)? isCheckedDelete,
  }) {
    return addUpdateRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUpdateRole value)? addUpdateRole,
    TResult Function(_GetModules value)? getModules,
    TResult Function(_ViewRole value)? viewRole,
    TResult Function(_IsSelected value)? isSelected,
    TResult Function(_IsCheckedView value)? isCheckedView,
    TResult Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult Function(_IsCheckedDelete value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (addUpdateRole != null) {
      return addUpdateRole(this);
    }
    return orElse();
  }
}

abstract class _AddUpdateRole implements RoleCreationEvent {
  const factory _AddUpdateRole(
      {required final String userId,
      required final String role,
      final String? roleId,
      required final List<String> moduleId,
      required final int isView,
      required final int isDelete,
      required final int isEdit,
      required final BuildContext context}) = _$_AddUpdateRole;

  String get userId;
  String get role;
  String? get roleId;
  List<String> get moduleId;
  int get isView;
  int get isDelete;
  int get isEdit;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AddUpdateRoleCopyWith<_$_AddUpdateRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetModulesCopyWith<$Res> {
  factory _$$_GetModulesCopyWith(
          _$_GetModules value, $Res Function(_$_GetModules) then) =
      __$$_GetModulesCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_GetModulesCopyWithImpl<$Res>
    extends _$RoleCreationEventCopyWithImpl<$Res, _$_GetModules>
    implements _$$_GetModulesCopyWith<$Res> {
  __$$_GetModulesCopyWithImpl(
      _$_GetModules _value, $Res Function(_$_GetModules) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_GetModules(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetModules implements _GetModules {
  const _$_GetModules({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'RoleCreationEvent.getModules(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetModules &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetModulesCopyWith<_$_GetModules> get copyWith =>
      __$$_GetModulesCopyWithImpl<_$_GetModules>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)
        addUpdateRole,
    required TResult Function(String userId) getModules,
    required TResult Function(String userId, String roleId) viewRole,
    required TResult Function(Module module) isSelected,
    required TResult Function(bool value) isCheckedView,
    required TResult Function(bool value) isCheckedEdit,
    required TResult Function(bool value) isCheckedDelete,
  }) {
    return getModules(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult? Function(String userId)? getModules,
    TResult? Function(String userId, String roleId)? viewRole,
    TResult? Function(Module module)? isSelected,
    TResult? Function(bool value)? isCheckedView,
    TResult? Function(bool value)? isCheckedEdit,
    TResult? Function(bool value)? isCheckedDelete,
  }) {
    return getModules?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult Function(String userId)? getModules,
    TResult Function(String userId, String roleId)? viewRole,
    TResult Function(Module module)? isSelected,
    TResult Function(bool value)? isCheckedView,
    TResult Function(bool value)? isCheckedEdit,
    TResult Function(bool value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (getModules != null) {
      return getModules(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUpdateRole value) addUpdateRole,
    required TResult Function(_GetModules value) getModules,
    required TResult Function(_ViewRole value) viewRole,
    required TResult Function(_IsSelected value) isSelected,
    required TResult Function(_IsCheckedView value) isCheckedView,
    required TResult Function(_IsCheckedEdit value) isCheckedEdit,
    required TResult Function(_IsCheckedDelete value) isCheckedDelete,
  }) {
    return getModules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddUpdateRole value)? addUpdateRole,
    TResult? Function(_GetModules value)? getModules,
    TResult? Function(_ViewRole value)? viewRole,
    TResult? Function(_IsSelected value)? isSelected,
    TResult? Function(_IsCheckedView value)? isCheckedView,
    TResult? Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult? Function(_IsCheckedDelete value)? isCheckedDelete,
  }) {
    return getModules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUpdateRole value)? addUpdateRole,
    TResult Function(_GetModules value)? getModules,
    TResult Function(_ViewRole value)? viewRole,
    TResult Function(_IsSelected value)? isSelected,
    TResult Function(_IsCheckedView value)? isCheckedView,
    TResult Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult Function(_IsCheckedDelete value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (getModules != null) {
      return getModules(this);
    }
    return orElse();
  }
}

abstract class _GetModules implements RoleCreationEvent {
  const factory _GetModules({required final String userId}) = _$_GetModules;

  String get userId;
  @JsonKey(ignore: true)
  _$$_GetModulesCopyWith<_$_GetModules> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ViewRoleCopyWith<$Res> {
  factory _$$_ViewRoleCopyWith(
          _$_ViewRole value, $Res Function(_$_ViewRole) then) =
      __$$_ViewRoleCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String roleId});
}

/// @nodoc
class __$$_ViewRoleCopyWithImpl<$Res>
    extends _$RoleCreationEventCopyWithImpl<$Res, _$_ViewRole>
    implements _$$_ViewRoleCopyWith<$Res> {
  __$$_ViewRoleCopyWithImpl(
      _$_ViewRole _value, $Res Function(_$_ViewRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
  }) {
    return _then(_$_ViewRole(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ViewRole implements _ViewRole {
  const _$_ViewRole({required this.userId, required this.roleId});

  @override
  final String userId;
  @override
  final String roleId;

  @override
  String toString() {
    return 'RoleCreationEvent.viewRole(userId: $userId, roleId: $roleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewRole &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, roleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewRoleCopyWith<_$_ViewRole> get copyWith =>
      __$$_ViewRoleCopyWithImpl<_$_ViewRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)
        addUpdateRole,
    required TResult Function(String userId) getModules,
    required TResult Function(String userId, String roleId) viewRole,
    required TResult Function(Module module) isSelected,
    required TResult Function(bool value) isCheckedView,
    required TResult Function(bool value) isCheckedEdit,
    required TResult Function(bool value) isCheckedDelete,
  }) {
    return viewRole(userId, roleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult? Function(String userId)? getModules,
    TResult? Function(String userId, String roleId)? viewRole,
    TResult? Function(Module module)? isSelected,
    TResult? Function(bool value)? isCheckedView,
    TResult? Function(bool value)? isCheckedEdit,
    TResult? Function(bool value)? isCheckedDelete,
  }) {
    return viewRole?.call(userId, roleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult Function(String userId)? getModules,
    TResult Function(String userId, String roleId)? viewRole,
    TResult Function(Module module)? isSelected,
    TResult Function(bool value)? isCheckedView,
    TResult Function(bool value)? isCheckedEdit,
    TResult Function(bool value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (viewRole != null) {
      return viewRole(userId, roleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUpdateRole value) addUpdateRole,
    required TResult Function(_GetModules value) getModules,
    required TResult Function(_ViewRole value) viewRole,
    required TResult Function(_IsSelected value) isSelected,
    required TResult Function(_IsCheckedView value) isCheckedView,
    required TResult Function(_IsCheckedEdit value) isCheckedEdit,
    required TResult Function(_IsCheckedDelete value) isCheckedDelete,
  }) {
    return viewRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddUpdateRole value)? addUpdateRole,
    TResult? Function(_GetModules value)? getModules,
    TResult? Function(_ViewRole value)? viewRole,
    TResult? Function(_IsSelected value)? isSelected,
    TResult? Function(_IsCheckedView value)? isCheckedView,
    TResult? Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult? Function(_IsCheckedDelete value)? isCheckedDelete,
  }) {
    return viewRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUpdateRole value)? addUpdateRole,
    TResult Function(_GetModules value)? getModules,
    TResult Function(_ViewRole value)? viewRole,
    TResult Function(_IsSelected value)? isSelected,
    TResult Function(_IsCheckedView value)? isCheckedView,
    TResult Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult Function(_IsCheckedDelete value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (viewRole != null) {
      return viewRole(this);
    }
    return orElse();
  }
}

abstract class _ViewRole implements RoleCreationEvent {
  const factory _ViewRole(
      {required final String userId,
      required final String roleId}) = _$_ViewRole;

  String get userId;
  String get roleId;
  @JsonKey(ignore: true)
  _$$_ViewRoleCopyWith<_$_ViewRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsSelectedCopyWith<$Res> {
  factory _$$_IsSelectedCopyWith(
          _$_IsSelected value, $Res Function(_$_IsSelected) then) =
      __$$_IsSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Module module});
}

/// @nodoc
class __$$_IsSelectedCopyWithImpl<$Res>
    extends _$RoleCreationEventCopyWithImpl<$Res, _$_IsSelected>
    implements _$$_IsSelectedCopyWith<$Res> {
  __$$_IsSelectedCopyWithImpl(
      _$_IsSelected _value, $Res Function(_$_IsSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
  }) {
    return _then(_$_IsSelected(
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
    ));
  }
}

/// @nodoc

class _$_IsSelected implements _IsSelected {
  const _$_IsSelected({required this.module});

  @override
  final Module module;

  @override
  String toString() {
    return 'RoleCreationEvent.isSelected(module: $module)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsSelected &&
            (identical(other.module, module) || other.module == module));
  }

  @override
  int get hashCode => Object.hash(runtimeType, module);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsSelectedCopyWith<_$_IsSelected> get copyWith =>
      __$$_IsSelectedCopyWithImpl<_$_IsSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)
        addUpdateRole,
    required TResult Function(String userId) getModules,
    required TResult Function(String userId, String roleId) viewRole,
    required TResult Function(Module module) isSelected,
    required TResult Function(bool value) isCheckedView,
    required TResult Function(bool value) isCheckedEdit,
    required TResult Function(bool value) isCheckedDelete,
  }) {
    return isSelected(module);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult? Function(String userId)? getModules,
    TResult? Function(String userId, String roleId)? viewRole,
    TResult? Function(Module module)? isSelected,
    TResult? Function(bool value)? isCheckedView,
    TResult? Function(bool value)? isCheckedEdit,
    TResult? Function(bool value)? isCheckedDelete,
  }) {
    return isSelected?.call(module);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult Function(String userId)? getModules,
    TResult Function(String userId, String roleId)? viewRole,
    TResult Function(Module module)? isSelected,
    TResult Function(bool value)? isCheckedView,
    TResult Function(bool value)? isCheckedEdit,
    TResult Function(bool value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (isSelected != null) {
      return isSelected(module);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUpdateRole value) addUpdateRole,
    required TResult Function(_GetModules value) getModules,
    required TResult Function(_ViewRole value) viewRole,
    required TResult Function(_IsSelected value) isSelected,
    required TResult Function(_IsCheckedView value) isCheckedView,
    required TResult Function(_IsCheckedEdit value) isCheckedEdit,
    required TResult Function(_IsCheckedDelete value) isCheckedDelete,
  }) {
    return isSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddUpdateRole value)? addUpdateRole,
    TResult? Function(_GetModules value)? getModules,
    TResult? Function(_ViewRole value)? viewRole,
    TResult? Function(_IsSelected value)? isSelected,
    TResult? Function(_IsCheckedView value)? isCheckedView,
    TResult? Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult? Function(_IsCheckedDelete value)? isCheckedDelete,
  }) {
    return isSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUpdateRole value)? addUpdateRole,
    TResult Function(_GetModules value)? getModules,
    TResult Function(_ViewRole value)? viewRole,
    TResult Function(_IsSelected value)? isSelected,
    TResult Function(_IsCheckedView value)? isCheckedView,
    TResult Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult Function(_IsCheckedDelete value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (isSelected != null) {
      return isSelected(this);
    }
    return orElse();
  }
}

abstract class _IsSelected implements RoleCreationEvent {
  const factory _IsSelected({required final Module module}) = _$_IsSelected;

  Module get module;
  @JsonKey(ignore: true)
  _$$_IsSelectedCopyWith<_$_IsSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsCheckedViewCopyWith<$Res> {
  factory _$$_IsCheckedViewCopyWith(
          _$_IsCheckedView value, $Res Function(_$_IsCheckedView) then) =
      __$$_IsCheckedViewCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_IsCheckedViewCopyWithImpl<$Res>
    extends _$RoleCreationEventCopyWithImpl<$Res, _$_IsCheckedView>
    implements _$$_IsCheckedViewCopyWith<$Res> {
  __$$_IsCheckedViewCopyWithImpl(
      _$_IsCheckedView _value, $Res Function(_$_IsCheckedView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_IsCheckedView(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsCheckedView implements _IsCheckedView {
  const _$_IsCheckedView(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'RoleCreationEvent.isCheckedView(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsCheckedView &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsCheckedViewCopyWith<_$_IsCheckedView> get copyWith =>
      __$$_IsCheckedViewCopyWithImpl<_$_IsCheckedView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)
        addUpdateRole,
    required TResult Function(String userId) getModules,
    required TResult Function(String userId, String roleId) viewRole,
    required TResult Function(Module module) isSelected,
    required TResult Function(bool value) isCheckedView,
    required TResult Function(bool value) isCheckedEdit,
    required TResult Function(bool value) isCheckedDelete,
  }) {
    return isCheckedView(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult? Function(String userId)? getModules,
    TResult? Function(String userId, String roleId)? viewRole,
    TResult? Function(Module module)? isSelected,
    TResult? Function(bool value)? isCheckedView,
    TResult? Function(bool value)? isCheckedEdit,
    TResult? Function(bool value)? isCheckedDelete,
  }) {
    return isCheckedView?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult Function(String userId)? getModules,
    TResult Function(String userId, String roleId)? viewRole,
    TResult Function(Module module)? isSelected,
    TResult Function(bool value)? isCheckedView,
    TResult Function(bool value)? isCheckedEdit,
    TResult Function(bool value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (isCheckedView != null) {
      return isCheckedView(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUpdateRole value) addUpdateRole,
    required TResult Function(_GetModules value) getModules,
    required TResult Function(_ViewRole value) viewRole,
    required TResult Function(_IsSelected value) isSelected,
    required TResult Function(_IsCheckedView value) isCheckedView,
    required TResult Function(_IsCheckedEdit value) isCheckedEdit,
    required TResult Function(_IsCheckedDelete value) isCheckedDelete,
  }) {
    return isCheckedView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddUpdateRole value)? addUpdateRole,
    TResult? Function(_GetModules value)? getModules,
    TResult? Function(_ViewRole value)? viewRole,
    TResult? Function(_IsSelected value)? isSelected,
    TResult? Function(_IsCheckedView value)? isCheckedView,
    TResult? Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult? Function(_IsCheckedDelete value)? isCheckedDelete,
  }) {
    return isCheckedView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUpdateRole value)? addUpdateRole,
    TResult Function(_GetModules value)? getModules,
    TResult Function(_ViewRole value)? viewRole,
    TResult Function(_IsSelected value)? isSelected,
    TResult Function(_IsCheckedView value)? isCheckedView,
    TResult Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult Function(_IsCheckedDelete value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (isCheckedView != null) {
      return isCheckedView(this);
    }
    return orElse();
  }
}

abstract class _IsCheckedView implements RoleCreationEvent {
  const factory _IsCheckedView(final bool value) = _$_IsCheckedView;

  bool get value;
  @JsonKey(ignore: true)
  _$$_IsCheckedViewCopyWith<_$_IsCheckedView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsCheckedEditCopyWith<$Res> {
  factory _$$_IsCheckedEditCopyWith(
          _$_IsCheckedEdit value, $Res Function(_$_IsCheckedEdit) then) =
      __$$_IsCheckedEditCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_IsCheckedEditCopyWithImpl<$Res>
    extends _$RoleCreationEventCopyWithImpl<$Res, _$_IsCheckedEdit>
    implements _$$_IsCheckedEditCopyWith<$Res> {
  __$$_IsCheckedEditCopyWithImpl(
      _$_IsCheckedEdit _value, $Res Function(_$_IsCheckedEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_IsCheckedEdit(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsCheckedEdit implements _IsCheckedEdit {
  const _$_IsCheckedEdit(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'RoleCreationEvent.isCheckedEdit(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsCheckedEdit &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsCheckedEditCopyWith<_$_IsCheckedEdit> get copyWith =>
      __$$_IsCheckedEditCopyWithImpl<_$_IsCheckedEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)
        addUpdateRole,
    required TResult Function(String userId) getModules,
    required TResult Function(String userId, String roleId) viewRole,
    required TResult Function(Module module) isSelected,
    required TResult Function(bool value) isCheckedView,
    required TResult Function(bool value) isCheckedEdit,
    required TResult Function(bool value) isCheckedDelete,
  }) {
    return isCheckedEdit(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult? Function(String userId)? getModules,
    TResult? Function(String userId, String roleId)? viewRole,
    TResult? Function(Module module)? isSelected,
    TResult? Function(bool value)? isCheckedView,
    TResult? Function(bool value)? isCheckedEdit,
    TResult? Function(bool value)? isCheckedDelete,
  }) {
    return isCheckedEdit?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult Function(String userId)? getModules,
    TResult Function(String userId, String roleId)? viewRole,
    TResult Function(Module module)? isSelected,
    TResult Function(bool value)? isCheckedView,
    TResult Function(bool value)? isCheckedEdit,
    TResult Function(bool value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (isCheckedEdit != null) {
      return isCheckedEdit(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUpdateRole value) addUpdateRole,
    required TResult Function(_GetModules value) getModules,
    required TResult Function(_ViewRole value) viewRole,
    required TResult Function(_IsSelected value) isSelected,
    required TResult Function(_IsCheckedView value) isCheckedView,
    required TResult Function(_IsCheckedEdit value) isCheckedEdit,
    required TResult Function(_IsCheckedDelete value) isCheckedDelete,
  }) {
    return isCheckedEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddUpdateRole value)? addUpdateRole,
    TResult? Function(_GetModules value)? getModules,
    TResult? Function(_ViewRole value)? viewRole,
    TResult? Function(_IsSelected value)? isSelected,
    TResult? Function(_IsCheckedView value)? isCheckedView,
    TResult? Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult? Function(_IsCheckedDelete value)? isCheckedDelete,
  }) {
    return isCheckedEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUpdateRole value)? addUpdateRole,
    TResult Function(_GetModules value)? getModules,
    TResult Function(_ViewRole value)? viewRole,
    TResult Function(_IsSelected value)? isSelected,
    TResult Function(_IsCheckedView value)? isCheckedView,
    TResult Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult Function(_IsCheckedDelete value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (isCheckedEdit != null) {
      return isCheckedEdit(this);
    }
    return orElse();
  }
}

abstract class _IsCheckedEdit implements RoleCreationEvent {
  const factory _IsCheckedEdit(final bool value) = _$_IsCheckedEdit;

  bool get value;
  @JsonKey(ignore: true)
  _$$_IsCheckedEditCopyWith<_$_IsCheckedEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsCheckedDeleteCopyWith<$Res> {
  factory _$$_IsCheckedDeleteCopyWith(
          _$_IsCheckedDelete value, $Res Function(_$_IsCheckedDelete) then) =
      __$$_IsCheckedDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_IsCheckedDeleteCopyWithImpl<$Res>
    extends _$RoleCreationEventCopyWithImpl<$Res, _$_IsCheckedDelete>
    implements _$$_IsCheckedDeleteCopyWith<$Res> {
  __$$_IsCheckedDeleteCopyWithImpl(
      _$_IsCheckedDelete _value, $Res Function(_$_IsCheckedDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_IsCheckedDelete(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsCheckedDelete implements _IsCheckedDelete {
  const _$_IsCheckedDelete(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'RoleCreationEvent.isCheckedDelete(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsCheckedDelete &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsCheckedDeleteCopyWith<_$_IsCheckedDelete> get copyWith =>
      __$$_IsCheckedDeleteCopyWithImpl<_$_IsCheckedDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)
        addUpdateRole,
    required TResult Function(String userId) getModules,
    required TResult Function(String userId, String roleId) viewRole,
    required TResult Function(Module module) isSelected,
    required TResult Function(bool value) isCheckedView,
    required TResult Function(bool value) isCheckedEdit,
    required TResult Function(bool value) isCheckedDelete,
  }) {
    return isCheckedDelete(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult? Function(String userId)? getModules,
    TResult? Function(String userId, String roleId)? viewRole,
    TResult? Function(Module module)? isSelected,
    TResult? Function(bool value)? isCheckedView,
    TResult? Function(bool value)? isCheckedEdit,
    TResult? Function(bool value)? isCheckedDelete,
  }) {
    return isCheckedDelete?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String role,
            String? roleId,
            List<String> moduleId,
            int isView,
            int isDelete,
            int isEdit,
            BuildContext context)?
        addUpdateRole,
    TResult Function(String userId)? getModules,
    TResult Function(String userId, String roleId)? viewRole,
    TResult Function(Module module)? isSelected,
    TResult Function(bool value)? isCheckedView,
    TResult Function(bool value)? isCheckedEdit,
    TResult Function(bool value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (isCheckedDelete != null) {
      return isCheckedDelete(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUpdateRole value) addUpdateRole,
    required TResult Function(_GetModules value) getModules,
    required TResult Function(_ViewRole value) viewRole,
    required TResult Function(_IsSelected value) isSelected,
    required TResult Function(_IsCheckedView value) isCheckedView,
    required TResult Function(_IsCheckedEdit value) isCheckedEdit,
    required TResult Function(_IsCheckedDelete value) isCheckedDelete,
  }) {
    return isCheckedDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddUpdateRole value)? addUpdateRole,
    TResult? Function(_GetModules value)? getModules,
    TResult? Function(_ViewRole value)? viewRole,
    TResult? Function(_IsSelected value)? isSelected,
    TResult? Function(_IsCheckedView value)? isCheckedView,
    TResult? Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult? Function(_IsCheckedDelete value)? isCheckedDelete,
  }) {
    return isCheckedDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUpdateRole value)? addUpdateRole,
    TResult Function(_GetModules value)? getModules,
    TResult Function(_ViewRole value)? viewRole,
    TResult Function(_IsSelected value)? isSelected,
    TResult Function(_IsCheckedView value)? isCheckedView,
    TResult Function(_IsCheckedEdit value)? isCheckedEdit,
    TResult Function(_IsCheckedDelete value)? isCheckedDelete,
    required TResult orElse(),
  }) {
    if (isCheckedDelete != null) {
      return isCheckedDelete(this);
    }
    return orElse();
  }
}

abstract class _IsCheckedDelete implements RoleCreationEvent {
  const factory _IsCheckedDelete(final bool value) = _$_IsCheckedDelete;

  bool get value;
  @JsonKey(ignore: true)
  _$$_IsCheckedDeleteCopyWith<_$_IsCheckedDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoleCreationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CommonResponseUse? get response => throw _privateConstructorUsedError;
  ModuleResponse? get moduleResponse => throw _privateConstructorUsedError;
  ViewRoleResponse? get viewRoleResponse => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isView => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;
  bool get isDelete => throw _privateConstructorUsedError;
  bool get isLoadingButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleCreationStateCopyWith<RoleCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCreationStateCopyWith<$Res> {
  factory $RoleCreationStateCopyWith(
          RoleCreationState value, $Res Function(RoleCreationState) then) =
      _$RoleCreationStateCopyWithImpl<$Res, RoleCreationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponseUse? response,
      ModuleResponse? moduleResponse,
      ViewRoleResponse? viewRoleResponse,
      String? error,
      bool isClientError,
      bool isView,
      bool isEdit,
      bool isDelete,
      bool isLoadingButton});
}

/// @nodoc
class _$RoleCreationStateCopyWithImpl<$Res, $Val extends RoleCreationState>
    implements $RoleCreationStateCopyWith<$Res> {
  _$RoleCreationStateCopyWithImpl(this._value, this._then);

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
    Object? moduleResponse = freezed,
    Object? viewRoleResponse = freezed,
    Object? error = freezed,
    Object? isClientError = null,
    Object? isView = null,
    Object? isEdit = null,
    Object? isDelete = null,
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
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      moduleResponse: freezed == moduleResponse
          ? _value.moduleResponse
          : moduleResponse // ignore: cast_nullable_to_non_nullable
              as ModuleResponse?,
      viewRoleResponse: freezed == viewRoleResponse
          ? _value.viewRoleResponse
          : viewRoleResponse // ignore: cast_nullable_to_non_nullable
              as ViewRoleResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isView: null == isView
          ? _value.isView
          : isView // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleCreationStateCopyWith<$Res>
    implements $RoleCreationStateCopyWith<$Res> {
  factory _$$_RoleCreationStateCopyWith(_$_RoleCreationState value,
          $Res Function(_$_RoleCreationState) then) =
      __$$_RoleCreationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponseUse? response,
      ModuleResponse? moduleResponse,
      ViewRoleResponse? viewRoleResponse,
      String? error,
      bool isClientError,
      bool isView,
      bool isEdit,
      bool isDelete,
      bool isLoadingButton});
}

/// @nodoc
class __$$_RoleCreationStateCopyWithImpl<$Res>
    extends _$RoleCreationStateCopyWithImpl<$Res, _$_RoleCreationState>
    implements _$$_RoleCreationStateCopyWith<$Res> {
  __$$_RoleCreationStateCopyWithImpl(
      _$_RoleCreationState _value, $Res Function(_$_RoleCreationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? moduleResponse = freezed,
    Object? viewRoleResponse = freezed,
    Object? error = freezed,
    Object? isClientError = null,
    Object? isView = null,
    Object? isEdit = null,
    Object? isDelete = null,
    Object? isLoadingButton = null,
  }) {
    return _then(_$_RoleCreationState(
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
              as CommonResponseUse?,
      moduleResponse: freezed == moduleResponse
          ? _value.moduleResponse
          : moduleResponse // ignore: cast_nullable_to_non_nullable
              as ModuleResponse?,
      viewRoleResponse: freezed == viewRoleResponse
          ? _value.viewRoleResponse
          : viewRoleResponse // ignore: cast_nullable_to_non_nullable
              as ViewRoleResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isView: null == isView
          ? _value.isView
          : isView // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RoleCreationState implements _RoleCreationState {
  const _$_RoleCreationState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.moduleResponse,
      required this.viewRoleResponse,
      required this.error,
      this.isClientError = false,
      this.isView = false,
      this.isEdit = false,
      this.isDelete = false,
      this.isLoadingButton = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final CommonResponseUse? response;
  @override
  final ModuleResponse? moduleResponse;
  @override
  final ViewRoleResponse? viewRoleResponse;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;
  @override
  @JsonKey()
  final bool isView;
  @override
  @JsonKey()
  final bool isEdit;
  @override
  @JsonKey()
  final bool isDelete;
  @override
  @JsonKey()
  final bool isLoadingButton;

  @override
  String toString() {
    return 'RoleCreationState(isLoading: $isLoading, isError: $isError, response: $response, moduleResponse: $moduleResponse, viewRoleResponse: $viewRoleResponse, error: $error, isClientError: $isClientError, isView: $isView, isEdit: $isEdit, isDelete: $isDelete, isLoadingButton: $isLoadingButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoleCreationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.moduleResponse, moduleResponse) ||
                other.moduleResponse == moduleResponse) &&
            (identical(other.viewRoleResponse, viewRoleResponse) ||
                other.viewRoleResponse == viewRoleResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError) &&
            (identical(other.isView, isView) || other.isView == isView) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete) &&
            (identical(other.isLoadingButton, isLoadingButton) ||
                other.isLoadingButton == isLoadingButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      response,
      moduleResponse,
      viewRoleResponse,
      error,
      isClientError,
      isView,
      isEdit,
      isDelete,
      isLoadingButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleCreationStateCopyWith<_$_RoleCreationState> get copyWith =>
      __$$_RoleCreationStateCopyWithImpl<_$_RoleCreationState>(
          this, _$identity);
}

abstract class _RoleCreationState implements RoleCreationState {
  const factory _RoleCreationState(
      {required final bool isLoading,
      required final bool isError,
      required final CommonResponseUse? response,
      required final ModuleResponse? moduleResponse,
      required final ViewRoleResponse? viewRoleResponse,
      required final String? error,
      final bool isClientError,
      final bool isView,
      final bool isEdit,
      final bool isDelete,
      final bool isLoadingButton}) = _$_RoleCreationState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CommonResponseUse? get response;
  @override
  ModuleResponse? get moduleResponse;
  @override
  ViewRoleResponse? get viewRoleResponse;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  bool get isView;
  @override
  bool get isEdit;
  @override
  bool get isDelete;
  @override
  bool get isLoadingButton;
  @override
  @JsonKey(ignore: true)
  _$$_RoleCreationStateCopyWith<_$_RoleCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
