import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
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
  }

  _getCareGiverProfile(
      _GetCareGiverProfile event, Emitter<CareGiverProfileState> emit) async {
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
      return state.copyWith(
        response: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
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
}
