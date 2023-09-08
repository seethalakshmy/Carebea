import 'dart:async';

import 'package:admin_580_tech/infrastructure/signup/signup_repository.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/signup/signup_response.dart';
import '../../../infrastructure/login/login_repository.dart';
import '../../../infrastructure/shared_preference/shared_preff_util.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupRepository signupRepository;

  SignupBloc(this.signupRepository) : super(SignupState.initial()) {
    on<_Signup>(_signup);
  }

  _signup(_Signup event, Emitter<SignupState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, SignUpResponse> homeResult =
        await signupRepository.signup(
            email: event.email,
            password: event.password,
            firstName: event.firstName,
            lastName: event.lastName,
            mobileNumber: event.mobileNumber,
            deviceToken: event.deviceToken,
            profilePic: event.profilePic,
            deviceType: event.deviceType,
            userType: event.userType,
            isSocialLogin: event.isSocialLogin);
    SignupState stateResult = homeResult.fold((l) {
      CSnackBar.showSuccess(event.context, msg: l.error ?? "");
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.status ?? false) {
        SharedPreffUtil sharedPrefUtil = SharedPreffUtil();
        sharedPrefUtil.setLogin = true;
        // sharedPrefUtil.setAccessToken = r.data?.accessToken ?? "";
        sharedPrefUtil.setIsFromWebsite = true;
        sharedPrefUtil.setAdminId = r.data?.userId ?? "";
        sharedPrefUtil.setMobileNumber = r.data?.mobileNumber ?? "";
        event.context.router.replace(const EmailOtpVerificationRoute());
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
        response: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }
}
