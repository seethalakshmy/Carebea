import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/reject_params.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/presentation/side_menu/side_menu_page.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../../domain/caregivers/model/verification_types.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/caregiver_verification/caregivers_verification_repository.dart';
import '../../../presentation/widget/cached_image.dart';
import '../../../presentation/widget/custom_alert_dialog_widget.dart';
import '../../../presentation/widget/custom_container.dart';
import '../../../presentation/widget/custom_sizedbox.dart';
import '../../../presentation/widget/custom_text.dart';

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
    on<_CareGiverTrainingVerify>(_careGiverSendTrainingRequest);
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
      response: null,
      certificateVerifyRejectResponse: null,
      certificateVerifyApproveResponse: null,
      verificationTypes: [],
      backgroundVerifyResponse: null,
      selectedVerificationIndex: 0,
      sendTrainingResponse: null,
      isError: false,
      error: null,
      isBackGroundVerificationReasonFieldTapped: false,
      isBlsReasonFieldTapped: false,
      isCovidReasonFieldTapped: false,
      isHHaReasonFieldTapped: false,
      isTBReasonFieldTapped: false,
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
      CSnackBar.showError(event.context, msg: l.error);
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
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
      CSnackBar.showError(event.context, msg: l.error);

      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        CustomLog.log(
            "_careGiverBackgroundVerify:CaregiverVerificationResponse is success");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
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
      CSnackBar.showError(event.context, msg: l.error);

      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        _approvalPopUp(
          event.context,
          userId: event.userID,
          imgUrl: event.profileUrl,
          msg: AppString.qualifiedForCareAmbassador.val,
          userName: event.userName,
        );
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
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
      if (r.status ?? false) {
        CustomLog.log(
            "_careGiverCertificateApprove:CaregiverVerificationResponse is success");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
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
      CSnackBar.showError(event.context, msg: l.error);
      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        Navigator.pop(event.context);
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
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
      if (r.status ?? false) {
        CustomLog.log(
            "_careGiverCertificateApprove:CaregiverVerificationResponse is success");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
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

  _careGiverSendTrainingRequest(_CareGiverTrainingVerify event,
      Emitter<CareGiverVerificationState> emit) async {
    final Either<ApiErrorHandler, VerifyResponse> result =
        await careGiverVerificationRepository.careGiverSendTrainingRequest(
            userID: event.userId);
    CareGiverVerificationState caregiverVerificationState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);

      return state.copyWith(error: l.error, isLoading: false, isError: true);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        autoTabRouter?.setActiveIndex(1);
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        isLoading: false,
        certificateVerifyApproveResponse: r,
        isError: false,
      );
    });
    emit(
      caregiverVerificationState,
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

  _approvalPopUp(
    BuildContext context, {
    required String userName,
    required String imgUrl,
    required String msg,
    required userId,
  }) {
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDialogWidget(
            width: 800,
            height: 400,
            heading: AppString.verificationProcess.val,
            child: Column(
              children: [
                CustomSizedBox(
                  height: DBL.four.val,
                ),
                CachedImage(
                  imgUrl: imgUrl,
                  height: DBL.oneFifty.val,
                  width: DBL.oneFifty.val,
                  isDetailPage: true,
                  fit: BoxFit.contain,
                ),
                CustomSizedBox(
                  height: DBL.four.val,
                ),
                CustomText(
                  userName,
                  style: TS().gRoboto(
                    color: AppColor.black2.val,
                    fontWeight: FW.w600.val,
                    fontSize: FS.font16.val,
                  ),
                ),
                CustomSizedBox(
                  height: DBL.eight.val,
                ),
                _buildDivider(context, color: AppColor.lightBlue2.val),
                CustomSizedBox(
                  height: DBL.ten.val,
                ),
                CustomText(
                  msg,
                  style: TS().gRoboto(
                    color: AppColor.black5.val,
                    fontWeight: FW.w500.val,
                    fontSize: FS.font21.val,
                  ),
                ),
                CustomSizedBox(
                  height: DBL.fifteen.val,
                ),
                _trainingRequestButton(userId: userId, context: context),
              ],
            ));
      },
    );
  }

  CustomContainer _buildDivider(BuildContext context, {Color? color}) {
    return CustomContainer(
      height: 1.2,
      width: MediaQuery.of(context).size.width,
      color: color ?? AppColor.dividerColor.val,
    );
  }

  CustomButton _trainingRequestButton(
      {required String userId, required BuildContext context}) {
    return CustomButton(
      text: AppString.sendTrainingRequest.val,
      onPressed: () {
        Navigator.of(context).pop();
        add(_CareGiverTrainingVerify(userId: userId, context: context));
      },
      color: AppColor.white.val,
      borderRadius: DBL.five.val,
      borderColor: AppColor.primaryColor.val,
      hoverColor: AppColor.offWhite.val.withOpacity(0.2),
      textStyle: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.primaryColor.val,
          fontSize: FS.font16.val),
      padding: EdgeInsets.symmetric(
          horizontal: DBL.thirtyFive.val, vertical: DBL.eighteen.val),
    );
  }
}
