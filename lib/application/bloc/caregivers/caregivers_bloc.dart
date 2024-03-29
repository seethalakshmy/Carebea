import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/domain/caregivers/model/caregiver_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/caregivers/model/care_givers.dart';
import '../../../domain/caregivers/model/data.dart';
import '../../../domain/caregivers/model/types.dart';
import '../../../infrastructure/caregivers/caregivers_repository.dart';

part 'caregivers_bloc.freezed.dart';
part 'caregivers_event.dart';
part 'caregivers_state.dart';

class CareGiversBloc extends Bloc<CareGiversEvent, CareGiversState> {
  CareGiversRepository careGiverListRepository;

  CareGiversBloc(this.careGiverListRepository)
      : super(CareGiversState.initial()) {
    on<_GetCareGivers>(_getCareGivers);
    on<_IsUserActive>(_getUserActive);
    on<_IsSelectedTab>(_getSelectedTab);
    on<_ResetValue>(_resetValue);
  }

  _getCareGivers(_GetCareGivers event, Emitter<CareGiversState> emit) async {
    final List<Types> typeList = [
      Types(id: 1, title: AppString.newRequest.val, isSelected: true),
      Types(id: 2, title: AppString.activeCareAmbassador.val, isSelected: false)
    ];
    if (SharedPreffUtil().getTab != 0) {
      if (SharedPreffUtil().getTab == 1) {
        typeList[0].isSelected = true;
        typeList[1].isSelected = false;
      } else if (SharedPreffUtil().getTab == 2) {
        typeList[0].isSelected = false;
        typeList[1].isSelected = true;
      }
    }
    final Either<ApiErrorHandler, CareGiverResponse> homeResult =
        await careGiverListRepository.getCareGivers(
            userID: event.userId,
            page: event.page,
            limit: event.limit,
            type: event.type,
            searchTerm: event.searchTerm,
            filterId: event.filterId,
            adminId: event.adminId);
    CareGiversState homeState = homeResult.fold((l) {
      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      if (state.types.isNotEmpty) {
        return state.copyWith(
          response: r,
          isLoading: false,
        );
      } else {
        return state.copyWith(
          response: r,
          isLoading: false,
          types: typeList,
        );
      }
    });
    emit(
      homeState,
    );
  }

  _getUserActive(_IsUserActive event, Emitter<CareGiversState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> result =
        await careGiverListRepository.careGiverActiveOrInactive(
      userID: event.userId,
      status: event.status,
      adminId: event.adminId,
    );
    var userState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        final state = this.state;
        Caregivers item = event.caregiver;
        CareGiverResponse response = state.response ?? CareGiverResponse();
        Data data = response.data ?? Data();
        final index = data.caregivers!.indexOf(item);
        List<Caregivers> careGiverList = data.caregivers!..remove(item);

        if (item.isActive ?? false) {
          careGiverList.insert(index, item.copyWith(isActive: false));
        } else {
          careGiverList.insert(index, item.copyWith(isActive: true));
        }
        final updatedResponse = response.copyWith(
          data: data.copyWith(caregivers: careGiverList),
        );

        return state.copyWith(
          isLoading: false,
          response: updatedResponse,
          activeOrInactiveResponse: r,
          isError: false,
        );
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
        return state.copyWith(
          isLoading: false,
          activeOrInactiveResponse: r,
          isError: false,
        );
      }
    });
    emit(userState);
  }

  _getSelectedTab(_IsSelectedTab event, Emitter<CareGiversState> emit) {
    final state = this.state;
    final typeList = state.types;
    Types item = event.type;
    final index = typeList.indexOf(item);
    if (!item.isSelected) {
      for (var element in typeList) {
        element.isSelected = false;
      }
      List<Types> types = List.from(typeList)..removeAt(index);
      types.insert(index, item.copyWith(isSelected: true));
      emit(state.copyWith(types: types, isLoading: true));
    }
  }

  _resetValue(_ResetValue event, Emitter<CareGiversState> emit) {
    final state = this.state;
    final typeList = state.types;
    for (var element in typeList) {
      element.isSelected = false;
    }
    typeList[0].isSelected = true;
    emit(state.copyWith(types: typeList));
  }
}
