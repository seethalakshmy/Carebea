import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:admin_580_tech/infrastructure/roles/roles_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
            roleID: event.roleId, userID: event.roleId);
    RolesState homeState = homeResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      return state.copyWith(
        deleteResponse: r,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }
}
