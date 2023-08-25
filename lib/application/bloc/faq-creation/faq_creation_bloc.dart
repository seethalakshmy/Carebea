import 'dart:async';

import 'package:admin_580_tech/infrastructure/faq/faq_repository.dart';
import 'package:admin_580_tech/infrastructure/faq_creation/faq_creation_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/common_response/common_response.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';

part 'faq_creation_event.dart';
part 'faq_creation_state.dart';
part 'faq_creation_bloc.freezed.dart';

class FaqCreationBloc extends Bloc<FaqCreationEvent, FaqCreationState> {
  FaqCreationRepository faqCreationRepository;
  String profileUrl = "";

  FaqCreationBloc(this.faqCreationRepository) : super(FaqCreationState.initial()) {
    on<_AddFaq>(_addFaq);
    on<_UpdateFaq>(_updateFaq);
  }
}

_addFaq(_AddFaq event, Emitter<FaqCreationState> emit) async {
  // emit(state.copyWith(isLoadingButton: true));
  // final Either<ApiErrorHandler, CommonResponseUse> homeResult =
  // await adminCreationRepository.addAdmin(
  //     userId: event.userId,
  //     role: event.roleId,
  //     firstName: event.firstName,
  //     lastName: event.lastName,
  //     email: event.email,
  //     phoneNumber: event.mobile,
  //     profileUrl: event.profilePic);
  // AdminCreationState homeState = homeResult.fold((l) {
  //   CSnackBar.showError(event.context, msg: l.error);
  //   return state.copyWith(
  //     error: l.error,
  //     isLoading: false,
  //     isError: true,
  //     isLoadingButton: false,
  //     isClientError: l.isClientError ?? false,
  //   );
  // }, (r) {
  //   if (r.status ?? false) {
  //     CSnackBar.showSuccess(event.context, msg: r.message ?? "");
  //     autoTabRouter?.setActiveIndex(12);
  //   } else {
  //     CSnackBar.showError(event.context, msg: r.message ?? "");
  //   }
  //   return state.copyWith(
  //     addResponse: r,
  //     isLoading: false,
  //     isLoadingButton: false,
  //   );
  // });
  // emit(
  //   homeState,
  // );
}

_updateFaq(_UpdateFaq event, Emitter<FaqCreationState> emit) async {
  // emit(state.copyWith(isLoadingButton: true));
  // final Either<ApiErrorHandler, CommonResponseUse> homeResult =
  // await adminCreationRepository.updateAdmin(
  //     userId: event.userId,
  //     adminId: event.adminId,
  //     role: event.roleId,
  //     firstName: event.firstName,
  //     lastName: event.lastName,
  //     email: event.email,
  //     phoneNumber: event.mobile,
  //     profileUrl: event.profilePic);
  // AdminCreationState homeState = homeResult.fold((l) {
  //   CSnackBar.showError(event.context, msg: l.error ?? "");
  //   return state.copyWith(
  //     error: l.error,
  //     isLoading: false,
  //     isError: true,
  //     isLoadingButton: false,
  //     isClientError: l.isClientError ?? false,
  //   );
  // }, (r) {
  //   if (r.status ?? false) {
  //     CSnackBar.showSuccess(event.context, msg: r.message ?? "");
  //     autoTabRouter?.setActiveIndex(12);
  //   } else {
  //     CSnackBar.showError(event.context, msg: r.message ?? "");
  //   }
  //   return state.copyWith(
  //       addResponse: r, isLoading: false, isLoadingButton: false);
  // });
  // emit(
  //   homeState,
  // );
}
