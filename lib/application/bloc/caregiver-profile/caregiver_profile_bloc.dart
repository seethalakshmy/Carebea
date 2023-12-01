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

import '../../../core/text_styles.dart';
import '../../../infrastructure/caregiver_profile/caregiver_profile_repository.dart';
import '../../../presentation/routes/app_router.gr.dart';
import '../../../presentation/side_menu/side_menu_page.dart';
import '../../../presentation/widget/custom_alert_dialog_widget.dart';
import '../../../presentation/widget/custom_button.dart';
import '../../../presentation/widget/custom_sizedbox.dart';
import '../../../presentation/widget/custom_text.dart';

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
    emit(state.copyWith(isLoading: true));

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
        status: r.data?.verificationStatus,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }

  _careGiverSendTrainingRequest(_CareGiverSendTrainingRequest event,
      Emitter<CareGiverProfileState> emit) async {
    emit(state.copyWith(
        status: Verification.trainingStarted.val,
        isLoadingStatusChangeApi: true));
    final Either<ApiErrorHandler, VerifyResponse> result =
        await careGiverProfileRepository.careGiverSendTrainingRequest(
            userID: event.userId, adminId: event.adminId);
    CareGiverProfileState caregiverVerificationState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);
      emit(state.copyWith(
          status: state.response?.data?.verificationStatus ?? 0,
          isLoadingStatusChangeApi: false));
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isLoadingStatusChangeApi: false);
    }, (r) {
      emit(state.copyWith(isLoadingStatusChangeApi: false));
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context,
            msg: "Training started status changed successfully");
        add(CareGiverProfileEvent.onTappedStatusDropDown(
            !state.isShowStatusDropDown));
      } else {
        emit(state.copyWith(
            status: state.response?.data?.verificationStatus ?? 0));
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
          isLoading: false,
          sendTrainingResponse: r,
          isError: false,
          isLoadingStatusChangeApi: false);
    });
    emit(
      caregiverVerificationState,
    );
  }

  _careGiverTrainingVerify(_CareGiverTrainingVerify event,
      Emitter<CareGiverProfileState> emit) async {
    emit(state.copyWith(
        status: Verification.trainingCompleted.val,
        isLoadingStatusChangeApi: true));

    final Either<ApiErrorHandler, VerifyResponse> homeResult =
        await careGiverProfileRepository.careGiverTrainingVerify(
            userID: event.userId, status: event.status, adminId: event.adminId);
    CareGiverProfileState stateResult = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);
      emit(state.copyWith(
          status: state.response?.data?.verificationStatus ?? 0,
          isLoadingStatusChangeApi: false));
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isLoadingStatusChangeApi: false);
    }, (r) {
      emit(state.copyWith(isLoadingStatusChangeApi: false));
      if (r.status ?? false) {
        // CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        _completedPopUp(event.context,
            msg:
                'Training process completed successfully continue to interview process');

        // showGeneralDialog(
        //   barrierDismissible: true,
        //   barrierLabel: "",
        //   context: event.context,
        //   pageBuilder: (BuildContext buildContext, Animation animation,
        //       Animation secondaryAnimation) {
        //     return CustomAlertDialogWidget(
        //         width: 800,
        //         height: 200,
        //         heading: AppString.completed.val,
        //         child: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Column(
        //             children: [
        //               const SizedBox(
        //                 height: 50,
        //               ),
        //               const CustomText(
        //                 'Training process completed successfully continue to interview process',
        //                 textAlign: TextAlign.center,
        //                 style: TextStyle(
        //                     fontSize: 18, fontWeight: FontWeight.bold),
        //               ),
        //               const SizedBox(
        //                 height: 50,
        //               ),
        //               CustomButton(
        //                 minWidth: 100,
        //                 height: 50,
        //                 onPressed: () {
        //                   Navigator.of(event.context).pop();
        //                 },
        //                 text: AppString.ok.val,
        //               )
        //             ],
        //           ),
        //         ));
        //   },
        // );

        add(CareGiverProfileEvent.onTappedStatusDropDown(
            !state.isShowStatusDropDown));
      } else {
        emit(state.copyWith(
            status: state.response?.data?.verificationStatus ?? 0));
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
          trainingVerifyResponse: r,
          isLoading: false,
          isLoadingStatusChangeApi: false);
    });
    emit(
      stateResult,
    );
  }

  _careGiverInterViewVerify(_CareGiverInterViewVerify event,
      Emitter<CareGiverProfileState> emit) async {
    emit(state.copyWith(isLoadingStatusChangeApi: true));
    if (event.status == Interview.started.val) {
      emit(state.copyWith(status: Verification.interViewStarted.val));
    } else if (event.status == Interview.failed.val) {
      emit(state.copyWith(status: Verification.interViewFailed.val));
    } else if (event.status == Interview.completed.val) {
      emit(state.copyWith(status: Verification.interViewCompleted.val));
    }
    final Either<ApiErrorHandler, VerifyResponse> homeResult =
        await careGiverProfileRepository.careGiverInterViewVerify(
            userID: event.userId, status: event.status, adminId: event.adminId);
    CareGiverProfileState stateResult = homeResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error);
      emit(state.copyWith(
          status: state.response?.data?.verificationStatus ?? 0,
          isLoadingStatusChangeApi: false));
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isLoadingStatusChangeApi: false);
    }, (r) {
      emit(state.copyWith(isLoadingStatusChangeApi: false));
      if (r.status ?? false) {
        if (event.status != Interview.started.val) {
          _completedPopUp(event.context, msg: 'Interview process completed');
        } else {
          CSnackBar.showSuccess(event.context,
              msg: "Interview started status changed successfully");
        }
        // showGeneralDialog(
        //   barrierDismissible: true,
        //   barrierLabel: "",
        //   context: event.context,
        //   pageBuilder: (BuildContext buildContext, Animation animation,
        //       Animation secondaryAnimation) {
        //     return CustomAlertDialogWidget(
        //         width: 800,
        //         height: 200,
        //         heading: AppString.completed.val,
        //         child: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Column(
        //             children: [
        //               const SizedBox(
        //                 height: 50,
        //               ),
        //               const CustomText(
        //                 'Interview  completed successfully ',
        //                 textAlign: TextAlign.center,
        //                 style: TextStyle(
        //                     fontSize: 18, fontWeight: FontWeight.bold),
        //               ),
        //               const SizedBox(
        //                 height: 50,
        //               ),
        //               CustomButton(
        //                 minWidth: 100,
        //                 height: 50,
        //                 onPressed: () {
        //                   Navigator.of(event.context).pop();
        //                 },
        //                 text: AppString.ok.val,
        //               )
        //             ],
        //           ),
        //         ));
        //   },
        // );
        add(CareGiverProfileEvent.onTappedStatusDropDown(
            !state.isShowStatusDropDown));
        if (event.status == Interview.completed.val) {
          autoTabRouter?.navigate(CareGiverDetailRoute(id: event.userId));
        }
      } else {
        emit(state.copyWith(
            status: state.response?.data?.verificationStatus ?? 0));
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
        trainingVerifyResponse: r,
        isLoading: false,
      );
    });
    emit(stateResult);
  }

  _onTapDropDown(_OnTappedStatusDropDown event,
      Emitter<CareGiverProfileState> emit) async {
    emit(state.copyWith(isShowStatusDropDown: event.val));
  }

  _completedPopUp(
    BuildContext context, {
    required String msg,
  }) {
    showGeneralDialog(
      barrierLabel: "",
      barrierDismissible: true,
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDialogWidget(
            width: 800,
            height: 200,
            heading: AppString.completed.val,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
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
                  _confirmButton(
                    context: buildContext,
                  ),
                ],
              ),
            ));
      },
    );
  }

  CustomButton _confirmButton({required BuildContext context}) {
    return CustomButton(
      text: AppString.ok.val,
      onPressed: () {
        Navigator.of(context).pop();
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
