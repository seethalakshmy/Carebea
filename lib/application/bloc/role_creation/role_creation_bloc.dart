import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/role_creation/model/module_response.dart';
import 'package:admin_580_tech/domain/role_creation/model/view_role_response.dart';
import 'package:admin_580_tech/infrastructure/role_creation/role_creation_repository.dart';
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';

part 'role_creation_bloc.freezed.dart';
part 'role_creation_event.dart';
part 'role_creation_state.dart';

class RoleCreationBloc extends Bloc<RoleCreationEvent, RoleCreationState> {
  RoleCreationRepository roleCreationRepository;

  RoleCreationBloc(this.roleCreationRepository)
      : super(RoleCreationState.initial()) {
    on<_AddUpdateRole>(_addUpdateRole);
    on<_GetModules>(_getModules);
    on<_ViewRole>(_viewRole);
    on<_IsSelected>(_isSelectedChip);
    on<_IsCheckedEdit>(_isCheckedEdit);
    on<_IsCheckedView>(_isCheckedView);
    on<_IsCheckedDelete>(_isCheckedDelete);
    on<_IsCheckedCreate>(_isCheckedCreate);
  }

  _viewRole(_ViewRole event, Emitter<RoleCreationState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, ModuleResponse> moduleResult =
        await roleCreationRepository.getModule(
      userId: event.userId,
    );
    RoleCreationState moduleState = moduleResult.fold((l) {
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
    RoleCreationState homeState = homeResult.fold((l) {
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
        r.data?.assignedModule?.forEach((viewModule) {
          for (var module in module) {
            if (viewModule.moduleId == module.id) {
              if (viewModule.delete ?? false) {
                module.isDelete = true;
                module.isSelected = true;
              }
              if (viewModule.read ?? false) {
                module.isView = true;
                module.isSelected = true;
              }
              if (viewModule.write ?? false) {
                module.isEdit = true;
                module.isSelected = true;
                module.isCreate = true;
              }
            }
          }
        });
      }
      ModuleResponse? moduleResponse =
          state.moduleResponse?.copyWith(module: module);

      return state.copyWith(
        viewRoleResponse: r,
        moduleResponse: moduleResponse,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }

  _addUpdateRole(_AddUpdateRole event, Emitter<RoleCreationState> emit) async {
    emit(state.copyWith(isLoadingButton: true));
    final Either<ApiErrorHandler, CommonResponseUse> homeResult =
        await roleCreationRepository.addRoleUpdateRole(
            userId: event.userId,
            role: event.role,
            moduleId: event.moduleId,
            roleId: event.roleId);
    RoleCreationState homeState = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isLoadingButton: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        autoTabRouter?.setActiveIndex(10);
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

  _getModules(_GetModules event, Emitter<RoleCreationState> emit) async {
    final Either<ApiErrorHandler, ModuleResponse> homeResult =
        await roleCreationRepository.getModule(
      userId: event.userId,
    );
    RoleCreationState homeState = homeResult.fold((l) {
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

  _isSelectedChip(_IsSelected event, Emitter<RoleCreationState> emit) {
    final state = this.state;
    Module moduleItem = event.module;
    ModuleResponse? moduleResponse = state.moduleResponse;
    final index = moduleResponse!.module!.indexOf(moduleItem);
    List<Module> moduleList = moduleResponse.module!..remove(moduleItem);
    if (moduleItem.isSelected) {
      moduleList.insert(index, moduleItem.copyWith(isSelected: false));
    } else {
      moduleList.insert(
          index,
          moduleItem.copyWith(
            isSelected: true,
          ));
    }
    final updatedResponse = moduleResponse.copyWith(module: moduleList);

    emit(state.copyWith(moduleResponse: updatedResponse));
  }

  _isCheckedView(_IsCheckedView event, Emitter<RoleCreationState> emit) {
    final state = this.state;
    Module moduleItem = event.module;
    ModuleResponse? moduleResponse = state.moduleResponse;
    final index = moduleResponse!.module!.indexOf(moduleItem);
    List<Module> moduleList = moduleResponse.module!..remove(moduleItem);
    if (moduleItem.isView) {
      moduleList.insert(index, moduleItem.copyWith(isView: false));
    } else {
      moduleList.insert(
          index, moduleItem.copyWith(isView: true, isSelected: true));
    }
    final updatedResponse = moduleResponse.copyWith(module: moduleList);

    emit(state.copyWith(moduleResponse: updatedResponse));
  }

  _isCheckedDelete(_IsCheckedDelete event, Emitter<RoleCreationState> emit) {
    Module moduleItem = event.module;
    ModuleResponse? moduleResponse = state.moduleResponse;
    final index = moduleResponse!.module!.indexOf(moduleItem);
    List<Module> moduleList = moduleResponse.module!..remove(moduleItem);
    if (moduleItem.isDelete) {
      moduleList.insert(index, moduleItem.copyWith(isDelete: false));
    } else {
      moduleList.insert(
          index, moduleItem.copyWith(isDelete: true, isSelected: true));
    }
    final updatedResponse = moduleResponse.copyWith(module: moduleList);

    emit(state.copyWith(moduleResponse: updatedResponse));
  }

  _isCheckedCreate(_IsCheckedCreate event, Emitter<RoleCreationState> emit) {
    Module moduleItem = event.module;
    ModuleResponse? moduleResponse = state.moduleResponse;
    final index = moduleResponse!.module!.indexOf(moduleItem);
    List<Module> moduleList = moduleResponse.module!..remove(moduleItem);
    if (moduleItem.isCreate) {
      moduleList.insert(index, moduleItem.copyWith(isCreate: false));
    } else {
      moduleList.insert(
          index, moduleItem.copyWith(isCreate: true, isSelected: true));
    }
    final updatedResponse = moduleResponse.copyWith(module: moduleList);

    emit(state.copyWith(moduleResponse: updatedResponse));
  }

  _isCheckedEdit(_IsCheckedEdit event, Emitter<RoleCreationState> emit) {
    Module moduleItem = event.module;
    ModuleResponse? moduleResponse = state.moduleResponse;
    final index = moduleResponse!.module!.indexOf(moduleItem);
    List<Module> moduleList = moduleResponse.module!..remove(moduleItem);
    if (moduleItem.isEdit) {
      moduleList.insert(index, moduleItem.copyWith(isEdit: false));
    } else {
      moduleList.insert(
          index, moduleItem.copyWith(isEdit: true, isSelected: true));
    }
    final updatedResponse = moduleResponse.copyWith(module: moduleList);

    emit(state.copyWith(moduleResponse: updatedResponse));
  }
}
