import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/status_list.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/caregiver_profile/caregiver_profile_repository.dart';

part 'caregiver_profile_bloc.freezed.dart';
part 'caregiver_profile_event.dart';
part 'caregiver_profile_state.dart';

class CareGiverProfileBloc
    extends Bloc<CareGiverProfileEvent, CareGiverProfileState> {
  CareGiverProfileRepository careGiverProfileRepository;

  CareGiverProfileBloc(this.careGiverProfileRepository)
      : super(CareGiverProfileState.initial()) {
    on<_GetCareGiverProfile>(_getCareGiverProfile);
    on<_CareGiverTrainingVerify>(_careGiverTrainingVerify);
    on<_CareGiverInterViewVerify>(_careGiverInterViewVerify);
    on<_OnTappedStatusDropDown>(_onTapDropDown);
    on<_CareGiverSendTrainingRequest>(_careGiverSendTrainingRequest);
  }

  _getCareGiverProfile(
      _GetCareGiverProfile event, Emitter<CareGiverProfileState> emit) async {
    final List<StatusList> list = [
      StatusList(id: 1, title: AppString.trainingStarted.val),
      StatusList(id: 2, title: AppString.trainingCompleted.val),
      StatusList(id: 3, title: AppString.interviewStarted.val),
      StatusList(id: 4, title: AppString.interviewFailed.val),
      StatusList(id: 5, title: AppString.interviewCompleted.val),
    ];

    emit(state.copyWith(
        isLoading: true,
        isError: false,
        response: null,
        error: null,
        isClientError: false,
        isShowStatusDropDown: false,
        statusList: list,
        trainingVerifyResponse: null,
        interViewVerifyResponse: null));
    final Either<ApiErrorHandler, CaregiverProfileResponse> homeResult =
        await careGiverProfileRepository.getCareGiverProfile(
      userID: event.userId,
      adminId: event.adminId,
    );
    CareGiverProfileState stateResult = homeResult.fold((l) {
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.data?.verificationStatus == Verification.trainingStarted.val) {
        list.removeWhere((element) => element.id == 1);
      } else if (r.data?.verificationStatus ==
          Verification.trainingCompleted.val) {
        list.removeWhere((element) => element.id == 2);
      } else if (r.data?.verificationStatus ==
          Verification.interViewStarted.val) {
        list.removeWhere((element) => element.id == 3);
      } else if (r.data?.verificationStatus ==
          Verification.interViewFailed.val) {
        list.removeWhere((element) => element.id == 4);
      } else if (r.data?.verificationStatus ==
          Verification.interViewCompleted.val) {
        list.removeWhere((element) => element.id == 5);
      }

      return state.copyWith(
        statusList: list,
        response: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }

  _careGiverSendTrainingRequest(_CareGiverSendTrainingRequest event,
      Emitter<CareGiverProfileState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> result =
        await careGiverProfileRepository.careGiverSendTrainingRequest(
            userID: event.userId, adminId: event.adminId);
    CareGiverProfileState caregiverVerificationState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);

      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        add(CareGiverProfileEvent.getCareGiverProfile(
            userId: event.userId,
            adminId: event.adminId,
            context: event.context));
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        isLoading: false,
        sendTrainingResponse: r,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState,
    );
  }

  _careGiverTrainingVerify(_CareGiverTrainingVerify event,
      Emitter<CareGiverProfileState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> homeResult =
        await careGiverProfileRepository.careGiverTrainingVerify(
            userID: event.userId, status: event.status, adminId: event.adminId);
    CareGiverProfileState stateResult = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        add(CareGiverProfileEvent.getCareGiverProfile(
            userId: event.userId,
            adminId: event.adminId,
            context: event.context));
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
        trainingVerifyResponse: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }

  _careGiverInterViewVerify(_CareGiverInterViewVerify event,
      Emitter<CareGiverProfileState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> homeResult =
        await careGiverProfileRepository.careGiverInterViewVerify(
            userID: event.userId, status: event.status, adminId: event.adminId);
    CareGiverProfileState stateResult = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        // autoTabRouter?.navigate(CareGiversRoute());
        add(CareGiverProfileEvent.getCareGiverProfile(
            userId: event.userId,
            adminId: event.adminId,
            context: event.context));
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
        trainingVerifyResponse: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }

  _onTapDropDown(_OnTappedStatusDropDown event,
      Emitter<CareGiverProfileState> emit) async {
    emit(state.copyWith(isShowStatusDropDown: event.val));
  }
}
