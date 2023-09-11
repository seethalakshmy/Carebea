import 'dart:async';

import 'package:admin_580_tech/domain/user_management/model/user_list_response.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/user_management/model/user_response.dart';
import '../../../infrastructure/user_management/users_repository.dart';

part 'user_management_event.dart';

part 'user_management_state.dart';

part 'user_management_bloc.freezed.dart';

class UserManagementBloc
    extends Bloc<UserManagementEvent, UserManagementState> {
  UsersRepository usersRepository;

  UserManagementBloc(this.usersRepository)
      : super(UserManagementState.initial()) {
    on<_GetUsers>(_getUser);
  }

  _getUser(_GetUsers event, Emitter<UserManagementState> emit) async {
    emit(state.copyWith(isLoading: false));
    final Either<ApiErrorHandler, UserListResponse> result =
        await usersRepository.getUsers(
            userId: event.userId,
            page: event.page,
            limit: event.limit,
            searchTerm: event.searchTerm,
            filterId: event.filterId);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      return state.copyWith(response: r, isLoading: false);
    });
    emit(userState);
  }
}
