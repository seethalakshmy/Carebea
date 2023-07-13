import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/role_creation/model/module_response.dart';
import 'package:admin_580_tech/domain/role_creation/model/view_role_response.dart';
import 'package:admin_580_tech/infrastructure/role_creation/role_creation_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';

part 'role_creation_bloc.freezed.dart';
part 'role_creation_event.dart';
part 'role_creation_state.dart';

class RoleCreationBloc extends Bloc<AdminCreationEvent, AdminCreationState> {
  RoleCreationRepository roleCreationRepository;

  RoleCreationBloc(this.roleCreationRepository)
      : super(AdminCreationState.initial()) {
    on<_AddAdmin>();
    on<_UpdateAdmin>();
    on<_ViewAdmin>();
    on<_GetRoles>();
  }

  _viewRole(_ViewRole event, Emitter<AdminCreationState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, ModuleResponse> moduleResult =
        await roleCreationRepository.getModule(
      userId: event.userId,
    );
    AdminCreationState moduleState = moduleResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
      );
    }, (r) {
      return state.copyWith(
        moduleResponse: r,
      );
    });
    emit(
      moduleState,
    );
    final Either<ApiErrorHandler, ViewRoleResponse> homeResult =
        await roleCreationRepository.viewRole(
            userId: event.userId, roleId: event.roleId);
    AdminCreationState homeState = homeResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      List<Module> module = state.moduleResponse?.module ?? [];
      if (r.data?.assignedModule != null &&
          state.moduleResponse?.module != null) {
        r.data?.assignedModule?.forEach((savedModule) {
          for (var module in module) {
            if (savedModule == module.sId) {
              module.isSelected = true;
            }
          }
        });
      }
      ModuleResponse? moduleResponse =
          state.moduleResponse?.copyWith(module: module);

      return state.copyWith(
        viewRoleResponse: r,
        isView: r.data?.isView ?? false,
        isDelete: r.data?.isDelete ?? false,
        isEdit: r.data?.isEdit ?? false,
        moduleResponse: moduleResponse,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }

  _addAdmin(_AddAdmin event, Emitter<AdminCreationState> emit) async {
    final Either<ApiErrorHandler, CommonResponse> homeResult =
        await roleCreationRepository.addRoleUpdateRole(
            userId: event.userId,
            role: event.role,
            isDelete: event.isDelete,
            isEdit: event.isEdit,
            roleId: event.roleId,
            isView: event.isView,
            moduleId: event.moduleId);
    AdminCreationState homeState = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        response: r,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }

  _getModules(_GetModules event, Emitter<AdminCreationState> emit) async {
    final Either<ApiErrorHandler, ModuleResponse> homeResult =
        await roleCreationRepository.getModule(
      userId: event.userId,
    );
    AdminCreationState homeState = homeResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      return state.copyWith(
        moduleResponse: r,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }
}
