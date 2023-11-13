import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:admin_580_tech/infrastructure/roles/roles_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../core/enum.dart';

part 'roles_bloc.freezed.dart';
part 'roles_event.dart';
part 'roles_state.dart';

class RolesBloc extends Bloc<RolesEvent, RolesState> {
  RolesRepository rolesRepository;

  RolesBloc(this.rolesRepository) : super(RolesState.initial()) {
    on<_GetRoles>(_getRoles);
    on<_RoleDelete>(_deleteRoles);
  }

  _getRoles(_GetRoles event, Emitter<RolesState> emit) async {
    final Either<ApiErrorHandler, GetRoleResponse> homeResult =
        await rolesRepository.getRoles(
      userID: event.userId,
      page: event.page,
      limit: event.limit,
      searchTerm: event.searchTerm,
    );
    RolesState homeState = homeResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      return state.copyWith(
        getRolesResponse: r,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }

  _deleteRoles(_RoleDelete event, Emitter<RolesState> emit) async {
    final Either<ApiErrorHandler, CommonResponseUse> homeResult =
        await rolesRepository.deleteRole(
            roleID: event.roleId, userID: event.userId);
    RolesState homeState = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");

      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: AppString.successfullyDeleteRole.val);
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
    add(RolesEvent.getRoles(
        userId: event.userId, page: 1, limit: 10, searchTerm: ''));
  }
}
