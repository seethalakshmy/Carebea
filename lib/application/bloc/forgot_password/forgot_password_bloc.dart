import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/forgot_password/model/forgot_password.dart';
import '../../../infrastructure/forgot_password/forgot_password_repository.dart';
import '../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../presentation/routes/app_router.gr.dart';
part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordRepository forgotPasswordRepository;

  ForgotPasswordBloc(this.forgotPasswordRepository)
      : super(ForgotPasswordState.initial()) {
    on<_ForgotPassword>(_forgotPassword);
  }

  _forgotPassword(
      _ForgotPassword event, Emitter<ForgotPasswordState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, ForgotPassword> result =
        await forgotPasswordRepository.forgotPassword(email: event.email);
    ForgotPasswordState stateResult = result.fold((l) {
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.status ?? false) {
        SharedPreffUtil sharedPreffUtil = SharedPreffUtil();
        sharedPreffUtil.setAdminId = r.data?.userId ?? "";
        event.context.router.navigate(const VerifyEmailRoute());
        CSnackBar.showSuccess(event.context, msg: r.data?.otp ?? "");
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
