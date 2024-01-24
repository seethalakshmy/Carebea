import 'package:admin_580_tech/domain/user_management_detail/model/client_service_response.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/user_management_detail/model/sub_client_response.dart';
import '../../../domain/user_management_detail/model/user_detail_response.dart';
import '../../../infrastructure/user_management_detail/user_management_detail_repository.dart';

part 'user_management_detail_bloc.freezed.dart';

part 'user_management_detail_event.dart';

part 'user_management_detail_state.dart';

class UserManagementDetailBloc
    extends Bloc<UserManagementDetailEvent, UserManagementDetailState> {
  UserManagementDetailRepository userDetailRepository;

  int page = 1;
  int limit = 10;
  List<Profiles> subUserList = [];
  final TextEditingController searchController = TextEditingController();

  UserManagementDetailBloc(this.userDetailRepository)
      : super(UserManagementDetailState.initial()) {
    on<_GetUserDetail>(_getUserDetail);
    on<_GetClientService>(_getClientService);
    on<_GetSubClients>(_getSubClients);
  }

  _getUserDetail(
      _GetUserDetail event, Emitter<UserManagementDetailState> emit) async {
    final Either<ApiErrorHandler, UserDetailResponse> result =
        await userDetailRepository.getUserDetail(
      adminId: event.adminId,
      userId: event.userId,
    );

    var homeState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      if (r.status ?? false) {
        add(UserManagementDetailEvent.getClientService(
            userId: event.adminId, adminId: event.adminId));
      }
      return state.copyWith(response: r, isLoading: false);
    });
    emit(homeState);
  }

  _getClientService(
      _GetClientService event, Emitter<UserManagementDetailState> emit) async {
    final Either<ApiErrorHandler, ClientServiceResponse> result =
        await userDetailRepository.getClientService(
            userId: event.userId, adminId: event.adminId);
    var homeState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      return state.copyWith(clientServiceResponse: r, isLoading: false);
    });
    emit(homeState);
  }

  // _getSubClients(
  //     _GetSubClients event, Emitter<UserManagementDetailState> emit) async {
  //   emit(state.copyWith(isLoading: true));
  //   final Either<ApiErrorHandler, SubClientResponse> result =
  //       await userDetailRepository.getSubClients(
  //           userId: event.userId,
  //           page: event.page,
  //           limit: event.limit,
  //           searchTerm: event.searchTerm);
  //   var subClientState = result.fold((l) {
  //     return state.copyWith(error: l.error, isLoading: false);
  //   }, (r) {
  //         if (r.status == true) {
  //           subUserList.clear();
  //
  //           subUserList.addAll(r.data!.profiles!);
  //           debugPrint("usetlist $subUserList}");
  //           emit(state.copyWith(isLoading: false));
  //         }
  //
  //
  //
  //     return state.copyWith(
  //       subClientResponse: r,
  //       isLoading: false,
  //     );
  //   });
  //   emit(subClientState);
  // }

  _getSubClients(
      _GetSubClients event, Emitter<UserManagementDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, SubClientResponse> result =
        await userDetailRepository.getSubClients(
            userId: event.userId,
            page: event.page,
            limit: event.limit,
            searchTerm: event.searchTerm);
    var userState = result.fold((l) {
      return state.copyWith(
          error: l.error, isLoading: false, subUserList: subUserList);
    }, (r) {
      if (r.status == true) {
        subUserList.clear();

        subUserList.addAll(r.data!.profiles!);
        debugPrint("usetlist ${subUserList.length}");
        emit(state.copyWith(isLoading: false));
      }
      emit(state.copyWith(isLoading: false));

      return state.copyWith(
        subClientResponse: r,
        isLoading: false,
      );
    });
    emit(userState);
  }
}
