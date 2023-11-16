import 'dart:async';

import 'package:admin_580_tech/domain/email_otp_verification/models/generate_otp_response.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/email_otp_verification/models/verify_otp_response.dart';
import '../../../infrastructure/email_otp_verification/email_otp_verification_repository.dart';

part 'email_otp_verification_bloc.freezed.dart';
part 'email_otp_verification_event.dart';
part 'email_otp_verification_state.dart';

class EmailOtpVerificationBloc
    extends Bloc<EmailOtpVerificationEvent, EmailOtpVerificationState> {
  EmailOtpVerificationRepository emailOtpVerificationRepository;
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();
  int timerText = 1;
  int start = 60;
  bool timerStopped = false;

  EmailOtpVerificationBloc(this.emailOtpVerificationRepository)
      : super(EmailOtpVerificationState.initial()) {
    on<_VerifyOtp>(_verifyOtp);
    on<_VerifyMobileOtp>(_verifyMobileOtp);
    on<_GenerateOtp>(_generateOtp);
    on<_Count>(_count);
  }

  _verifyOtp(_VerifyOtp event, Emitter<EmailOtpVerificationState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, VerifyOtpResponse> homeResult =
        await emailOtpVerificationRepository.verifyOtp(
            userID: event.userId, type: event.type, otp: event.otp);
    EmailOtpVerificationState stateResult = homeResult.fold((l) {
      CSnackBar.showSuccess(event.context, msg: l.error ?? "");
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.status ?? false) {
        print('token ${r.data?.accessToken ?? ''}');
        sharedPreffUtil.setAccessToken = r.data?.accessToken ?? '';
        sharedPreffUtil.setCareGiverUserId = r.data?.userId ?? '';

        add(EmailOtpVerificationEvent.generateOtp(
            context: event.context,
            userId: SharedPreffUtil().getAdminId,
            mobileNumber: SharedPreffUtil().getMobileNumber));
        // EmailOtpVerificationEvent.generateOtp(
        //     context: event.context,
        //     userId: SharedPreffUtil().getAdminId,
        //     mobileNumber: SharedPreffUtil().getMobileNumber);

        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
        verifyOtpResponse: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }

  _verifyMobileOtp(
      _VerifyMobileOtp event, Emitter<EmailOtpVerificationState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, VerifyOtpResponse> homeResult =
        await emailOtpVerificationRepository.verifyOtp(
            userID: event.userId, type: event.type, otp: event.otp);
    EmailOtpVerificationState stateResult = homeResult.fold((l) {
      CSnackBar.showSuccess(event.context, msg: l.error ?? "");
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.status ?? false) {
        event.context.router.replace(const CareAmbassadorRegistrationRoute());
        // EmailOtpVerificationEvent.generateOtp(
        //     context: event.context,
        //     userId: SharedPreffUtil().getAdminId,
        //     mobileNumber: SharedPreffUtil().getMobileNumber);

        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
        verifyOtpResponse: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }

  _generateOtp(
      _GenerateOtp event, Emitter<EmailOtpVerificationState> emit) async {
    print('inside bloc');
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, GenerateOtpResponse> homeResult =
        await emailOtpVerificationRepository.generateOtp(
            userId: event.userId, mobileNumber: event.mobileNumber);
    EmailOtpVerificationState stateResult = homeResult.fold((l) {
      CSnackBar.showSuccess(event.context, msg: l.error ?? "");
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.status ?? false) {
        event.context.router.replace(const MobileOtpVerificationRoute());
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
        generateOtpResponse: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }
  _count(_Count event, Emitter<EmailOtpVerificationState> emit) async {
    const oneSec = Duration(seconds: 1);
    start = 60; // Reset the timer to 60 seconds

    for (int i = start; i >= 0; i--) {
      await Future.delayed(oneSec);
      emit(state.copyWith(count: i.toString().padLeft(2, '0')));
    }
  }


}
