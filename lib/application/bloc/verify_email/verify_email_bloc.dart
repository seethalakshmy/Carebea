import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/on_boarding/models/common_response.dart';
import '../../../infrastructure/verify_email/verify_email_repository.dart';
import '../../../presentation/routes/app_router.gr.dart';

part 'verify_email_event.dart';
part 'verify_email_state.dart';
part 'verify_email_bloc.freezed.dart';

class VerifyEmailBloc extends Bloc<VerifyEmailEvent, VerifyEmailState> {
  VerifyEmailRepository verifyEmailRepository;

  VerifyEmailBloc(this.verifyEmailRepository)
      : super(VerifyEmailState.initial()) {
    on<_VerifyEmailEvent>(_verifyEmail);
  }

  _verifyEmail(_VerifyEmailEvent event, Emitter<VerifyEmailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await verifyEmailRepository.verifyEmail(
            otp: event.otp, userId: event.userId, type: event.type);
    VerifyEmailState stateResult = result.fold((l) {
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.status ?? false) {
        event.context.router.navigate(const ResetPasswordRoute());
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
