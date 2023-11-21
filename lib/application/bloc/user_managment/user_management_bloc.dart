import 'dart:async';
import 'dart:developer';

import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/domain/user_management/model/user_list_response.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/user_management/model/user_response.dart';
import '../../../infrastructure/user_management/users_repository.dart';

part 'user_management_event.dart';

part 'user_management_state.dart';

part 'user_management_bloc.freezed.dart';

class UserManagementBloc
    extends Bloc<UserManagementEvent, UserManagementState> {
  UsersRepository usersRepository;
  int page = 1;
  int limit = 10;
  List<dynamic> mUserList = [];
  final TextEditingController searchController = TextEditingController();
  bool? filterId;

  UserManagementBloc(this.usersRepository)
      : super(UserManagementState.initial()) {
    on<_GetUsers>(_getUser);
    on<_ChangeClientStatus>(_changeClientStatus);
  }

  _getUser(_GetUsers event, Emitter<UserManagementState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, UserListResponse> result =
        await usersRepository.getUsers(
            userId: event.userId,
            page: event.page,
            limit: event.limit,
            searchTerm: event.searchTerm,
            filterId: event.filterId);
    var userState = result.fold((l) {
      return state.copyWith(
          error: l.error, isLoading: false, mUserList: mUserList);
    }, (r) {
      if (r.status == true) {
        mUserList.clear();
        // state.serviceRequestsList.addAll(r.data!.services!);

        mUserList.addAll(r.data!.finalResult!);
        log("userList from bloc,${mUserList.length}");
      }
      r.data?.finalResult?.forEach((element) {
        if (element.mobile == "959-898-9797") {
          log("status is ${element.status}");
        }
      });
      return state.copyWith(
          response: r, isLoading: false, mUserList: mUserList);
    });
    emit(userState);
  }

  _changeClientStatus(
      _ChangeClientStatus event, Emitter<UserManagementState> emit) async {
    emit(state.copyWith(isLoading: false));
    final Either<ApiErrorHandler, CommonResponse> result =
        await usersRepository.changeClientStatus(
            userId: event.userId, adminId: event.adminId, status: event.status);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      if (r.status ?? false) {
        add(UserManagementEvent.getUsers(
            userId: event.userId,
            page: page.toString(),
            limit: limit.toString(),
            searchTerm: searchController.text.trim(),
            filterId: filterId));
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(changeStatusResponse: r, isLoading: false);
    });
    emit(userState);
  }
}
