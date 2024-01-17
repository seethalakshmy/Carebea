import 'dart:typed_data';

import 'package:admin_580_tech/domain/admin_creation/model/admin_view_response.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/admin_creation/admin_creation_repository.dart';

part 'admin_creation_bloc.freezed.dart';
part 'admin_creation_event.dart';
part 'admin_creation_state.dart';

class AdminCreationBloc extends Bloc<AdminCreationEvent, AdminCreationState> {
  AdminCreationRepository adminCreationRepository;
  String profileUrl = "";

  AdminCreationBloc(this.adminCreationRepository)
      : super(AdminCreationState.initial()) {
    on<AdminCreationEvent>((event, emit) async {
      if (event is _ProfilePicSelected) {
        emit(state.copyWith(pickedProfilePic: event.bytes));
      }
    });
    on<_GetRoles>(_getRoles);
    on<_AddAdmin>(_addAdmin);
    on<_UpdateAdmin>(_updateAdmin);
    on<_ViewAdmin>(_viewAdmin);
    on<_DropDownErrorDisplay>(_dropDownErrorDisplay);
    on<_SetDropDownValue>(_setRoleDropDownValue);
  }

  _getRoles(_GetRoles event, Emitter<AdminCreationState> emit) async {
    final Either<ApiErrorHandler, GetRoleResponse> roleResult =
        await adminCreationRepository.getRoles(
            userID: event.userId, searchTerm: event.searchTerm);
    AdminCreationState roleState = roleResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
      );
    }, (r) {
      return state.copyWith(
        rolesResponse: r,
        isLoading: false,
      );
    });
    emit(
      roleState,
    );
  }

  _dropDownErrorDisplay(
      _DropDownErrorDisplay event, Emitter<AdminCreationState> emit) {
    emit(state.copyWith(isDropDownError: event.value));
  }

  _setRoleDropDownValue(
      _SetDropDownValue event, Emitter<AdminCreationState> emit) {
    emit(state.copyWith(selectedRole: event.value));
    add(const AdminCreationEvent.dropDownErrorDisplay(value: false));
  }

  _viewAdmin(_ViewAdmin event, Emitter<AdminCreationState> emit) async {
    final Either<ApiErrorHandler, GetRoleResponse> roleResult =
        await adminCreationRepository.getRoles(
      userID: event.userId,
      searchTerm: event.searchTerm,
    );
    AdminCreationState roleState = roleResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isError: true,
      );
    }, (r) {
      return state.copyWith(
        rolesResponse: r,
      );
    });
    emit(
      roleState,
    );
    final Either<ApiErrorHandler, AdminViewResponse> homeResult =
        await adminCreationRepository.viewRole(
            userId: event.userId,
            adminId: event.adminId,
            searchTerm: event.searchTerm);
    AdminCreationState homeState = homeResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      List<Result> role = state.rolesResponse?.data?.result ?? [];
      Result? initialRoleValue;
      if (r.data?.roleId != null) {
        for (var i in role) {
          if (r.data?.roleId == i.id) {
            initialRoleValue = i;
          }
        }
      }

      return state.copyWith(
        viewResponse: r,
        selectedRole: initialRoleValue,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }

  _addAdmin(_AddAdmin event, Emitter<AdminCreationState> emit) async {
    emit(state.copyWith(isLoadingButton: true));
    final Either<ApiErrorHandler, CommonResponseUse> homeResult =
        await adminCreationRepository.addAdmin(
            userId: event.userId,
            role: event.roleId,
            firstName: event.firstName,
            lastName: event.lastName,
            email: event.email,
            phoneNumber: event.mobile,
            profileUrl: event.profilePic);
    AdminCreationState homeState = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isLoadingButton: false,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        autoTabRouter?.setActiveIndex(12);
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        addResponse: r,
        isLoading: false,
        isLoadingButton: false,
      );
    });
    emit(
      homeState,
    );
  }

  _updateAdmin(_UpdateAdmin event, Emitter<AdminCreationState> emit) async {
    emit(state.copyWith(isLoadingButton: true));
    final Either<ApiErrorHandler, CommonResponseUse> homeResult =
        await adminCreationRepository.updateAdmin(
            userId: event.userId,
            adminId: event.adminId,
            role: event.roleId,
            firstName: event.firstName,
            lastName: event.lastName,
            email: event.email,
            phoneNumber: event.mobile,
            profileUrl: event.profilePic);
    AdminCreationState homeState = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isLoadingButton: false,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        autoTabRouter?.setActiveIndex(12);
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
          addResponse: r, isLoading: false, isLoadingButton: false);
    });
    emit(
      homeState,
    );
  }
}
