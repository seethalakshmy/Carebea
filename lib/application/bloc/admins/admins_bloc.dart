import 'package:admin_580_tech/domain/admins/model/admin_get_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/infrastructure/admins/admins_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/roles/model/get_role_response.dart';

part 'admins_bloc.freezed.dart';
part 'admins_event.dart';
part 'admins_state.dart';

class AdminsBloc extends Bloc<AdminEvent, AdminsState> {
  AdminsRepository adminsRepository;

  int limit = 10;
  int page = 1;

  AdminsBloc(this.adminsRepository) : super(AdminsState.initial()) {
    on<_GetAdmins>(_getAdmins);
    on<_AdminDelete>(_deleteRoles);
    on<_ChangeAdminStatus>(_changeAdminStatus);
  }

  _getAdmins(_GetAdmins event, Emitter<AdminsState> emit) async {
    final Either<ApiErrorHandler, GetRoleResponse> roleResult =
        await adminsRepository.getRoles(
      userID: event.userId,
    );
    AdminsState roleState = roleResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isError: true,
      );
    }, (r) {
      return state.copyWith(
        getRolesResponse: r,
      );
    });
    emit(
      roleState,
    );

    final Either<ApiErrorHandler, AdminGetResponse> adminResult =
        await adminsRepository.getAdmins(
      userID: event.userId,
      page: event.page,
      limit: event.limit,
      roleId: event.roleId,
      status: event.status,
      searchTerm: event.searchTerm,
    );
    AdminsState adminState = adminResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      return state.copyWith(
        getAdminsResponse: r,
        isLoading: false,
      );
    });
    emit(
      adminState,
    );
  }

  _deleteRoles(_AdminDelete event, Emitter<AdminsState> emit) async {
    final Either<ApiErrorHandler, CommonResponseUse> homeResult =
        await adminsRepository.deleteAdmin(
            adminID: event.adminID, userID: event.userID);
    AdminsState homeState = homeResult.fold((l) {
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
        add(AdminEvent.getAdmins(
            userId: event.userID, page: page, limit: limit));
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        deleteResponse: r,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }

  _changeAdminStatus(
      _ChangeAdminStatus event, Emitter<AdminsState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> homeResult =
        await adminsRepository.changeAdminStatus(
            userID: event.userId, status: event.status);
    AdminsState homeState = homeResult.fold((l) {
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
        add(AdminEvent.getAdmins(
            userId: event.userId, page: page, limit: limit));
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        // deleteResponse: r,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }
}
