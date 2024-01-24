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
import '../../../infrastructure/reset_password_repository/reset_password_repository.dart';
import '../../../presentation/routes/app_router.gr.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordRepository resetPasswordRepository;

  ResetPasswordBloc(this.resetPasswordRepository)
      : super(ResetPasswordState.initial()) {
    on<_ResetPasswordEvent>(_resetPassword);
  }

  _resetPassword(
      _ResetPasswordEvent event, Emitter<ResetPasswordState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await resetPasswordRepository.resetPassword(
            password: event.password, userId: event.userId);
    ResetPasswordState stateResult = result.fold((l) {
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.status ?? false) {
        event.context.router.navigate(const LoginRoute());
        CSnackBar.showSuccess(event.context,
            msg: "Password reset successfully");
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
