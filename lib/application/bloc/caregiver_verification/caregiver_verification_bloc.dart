import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/reject_params.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../core/enum.dart';
import '../../../domain/caregivers/model/verification_types.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/caregiver_verification/caregivers_verification_repository.dart';

part 'caregiver_verification_bloc.freezed.dart';
part 'caregiver_verification_event.dart';
part 'caregiver_verification_state.dart';

class CareGiverVerificationBloc
    extends Bloc<CareGiverVerificationEvent, CareGiverVerificationState> {
  final CareGiverVerificationRepository careGiverVerificationRepository;

  CareGiverVerificationBloc(this.careGiverVerificationRepository)
      : super(CareGiverVerificationState.initial()) {
    on<_GetVerificationData>(_getCareGiverVerificationData);
    on<_CareGiverBackgroundVerify>(_careGiverBackgroundVerify);
    on<_CareGiverCertificateApprove>(_careGiverCertificateApprove);
    on<_CareGiverCertificateReject>(_careGiverCertificateReject);
    on<_IsSelectedVerificationTab>(_getVerificationSelectedTab);
    on<_IsTappedReason>(_getTappedReason);
    on<_IsTappedHHaReason>(_getTappedHHaReason);
    on<_IsTappedBlsReason>(_getTappedBlsReason);
    on<_IsTappedTbReason>(_getTappedTbReason);
    on<_IsTappedCovidReason>(_getTappedCovidReason);
    on<_IsWebViewLoading>(_webViewLoading);
  }

  _getCareGiverVerificationData(_GetVerificationData event,
      Emitter<CareGiverVerificationState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));
    final List<VerificationTypes> verificationTypeList = [
      VerificationTypes(
          id: 1, title: AppString.backGroundVerification.val, isSelected: true),
      VerificationTypes(
          id: 2,
          title: AppString.certificateVerification.val,
          isSelected: false)
    ];

    final Either<ApiErrorHandler, CaregiverVerificationResponse> result =
        await careGiverVerificationRepository.getCareGiverVerificationData(
      userID: event.userId,
    );
    CareGiverVerificationState caregiverVerificationState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      return state.copyWith(
        isLoading: false,
        response: r,
        verificationTypes: verificationTypeList,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState,
    );
  }

  _careGiverBackgroundVerify(_CareGiverBackgroundVerify event,
      Emitter<CareGiverVerificationState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> result =
        await careGiverVerificationRepository.careGiverBackgroundVerify(
            userID: event.userID,
            status: event.status,
            rejectReason: event.rejectReason);
    CareGiverVerificationState caregiverVerificationState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      return state.copyWith(
        isLoading: false,
        backgroundVerifyResponse: r,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState,
    );
    final Either<ApiErrorHandler, CaregiverVerificationResponse> result2 =
        await careGiverVerificationRepository.getCareGiverVerificationData(
      userID: event.userID,
    );
    CareGiverVerificationState caregiverVerificationState2 = result2.fold((l) {
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      return state.copyWith(
        isLoading: false,
        response: r,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState2,
    );
  }

  _careGiverCertificateApprove(_CareGiverCertificateApprove event,
      Emitter<CareGiverVerificationState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> result =
        await careGiverVerificationRepository.careGiverCertificateApprove(
            userID: event.userID, status: event.status);
    CareGiverVerificationState caregiverVerificationState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      return state.copyWith(
        isLoading: false,
        certificateVerifyApproveResponse: r,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState,
    );
    final Either<ApiErrorHandler, CaregiverVerificationResponse> result2 =
        await careGiverVerificationRepository.getCareGiverVerificationData(
      userID: event.userID,
    );
    CareGiverVerificationState caregiverVerificationState2 = result2.fold((l) {
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      return state.copyWith(
        isLoading: false,
        response: r,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState2,
    );
  }

  _careGiverCertificateReject(_CareGiverCertificateReject event,
      Emitter<CareGiverVerificationState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> result =
        await careGiverVerificationRepository.careGiverCertificateReject(
            params: event.params);
    CareGiverVerificationState caregiverVerificationState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      showTopSnackBar(
        Overlay.of(event.context),
        const CustomSnackBar.success(
          message: "Success",
        ),
      );
      return state.copyWith(
        isLoading: false,
        certificateVerifyRejectResponse: r,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState,
    );
    final Either<ApiErrorHandler, CaregiverVerificationResponse> result2 =
        await careGiverVerificationRepository.getCareGiverVerificationData(
      userID: event.userID,
    );
    CareGiverVerificationState caregiverVerificationState2 = result2.fold((l) {
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      return state.copyWith(
        isLoading: false,
        response: r,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState2,
    );
  }

  _getVerificationSelectedTab(_IsSelectedVerificationTab event,
      Emitter<CareGiverVerificationState> emit) {
    final state = this.state;
    final verificationTypeList = state.verificationTypes;
    VerificationTypes item = event.type;
    final index = verificationTypeList.indexOf(item);
    if (!item.isSelected) {
      for (var element in verificationTypeList) {
        element.isSelected = false;
      }
      List<VerificationTypes> verificationTypes =
          List.from(verificationTypeList)..removeAt(index);
      verificationTypes.insert(index, item.copyWith(isSelected: true));
      emit(state.copyWith(
          verificationTypes: verificationTypes,
          isLoading: false,
          selectedVerificationIndex: index));
    }
  }

  _getTappedReason(
      _IsTappedReason event, Emitter<CareGiverVerificationState> emit) {
    emit(
        state.copyWith(isBackGroundVerificationReasonFieldTapped: event.value));
  }

  _getTappedHHaReason(
      _IsTappedHHaReason event, Emitter<CareGiverVerificationState> emit) {
    emit(state.copyWith(isHHaReasonFieldTapped: event.value));
  }

  _getTappedBlsReason(
      _IsTappedBlsReason event, Emitter<CareGiverVerificationState> emit) {
    emit(state.copyWith(isBlsReasonFieldTapped: event.value));
  }

  _getTappedTbReason(
      _IsTappedTbReason event, Emitter<CareGiverVerificationState> emit) {
    emit(state.copyWith(isTBReasonFieldTapped: event.value));
  }

  _getTappedCovidReason(
      _IsTappedCovidReason event, Emitter<CareGiverVerificationState> emit) {
    emit(state.copyWith(isCovidReasonFieldTapped: event.value));
  }

  _webViewLoading(
      _IsWebViewLoading event, Emitter<CareGiverVerificationState> emit) {
    emit(state.copyWith(isWebViewLoading: event.value));
  }
}
