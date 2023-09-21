import 'package:admin_580_tech/domain/user_management_detail/model/client_service_response.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/user_management_detail/model/user_detail_response.dart';
import '../../../infrastructure/user_management_detail/user_management_detail_repository.dart';

part 'user_management_detail_bloc.freezed.dart';

part 'user_management_detail_event.dart';

part 'user_management_detail_state.dart';

class UserManagementDetailBloc
    extends Bloc<UserManagementDetailEvent, UserManagementDetailState> {
  UserManagementDetailRepository userDetailRepository;

  UserManagementDetailBloc(this.userDetailRepository)
      : super(UserManagementDetailState.initial()) {
    on<_GetUserDetail>(_getUserDetail);
    on<_GetClientService>(_getClientService);
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
}
