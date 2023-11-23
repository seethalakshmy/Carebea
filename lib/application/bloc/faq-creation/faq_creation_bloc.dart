import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/infrastructure/faq_creation/faq_creation_repository.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/faq_creation/models/faq_details_response_model.dart';

part 'faq_creation_bloc.freezed.dart';
part 'faq_creation_event.dart';
part 'faq_creation_state.dart';

class FaqCreationBloc extends Bloc<FaqCreationEvent, FaqCreationState> {
  FaqCreationRepository faqCreationRepository;
  String profileUrl = "";
  List<FaqDetailsData> faqListData = [];
  final TextEditingController questionController = TextEditingController();
  final TextEditingController answerController = TextEditingController();
  int radioValue = 0;

  FaqCreationBloc(this.faqCreationRepository)
      : super(FaqCreationState.initial()) {
    on<_GetFaq>(_getFaq);
    on<_AddFaq>(_addFaq);
    on<_UpdateFaq>(_updateFaq);
    on<_RadioForClient>(_radioForClient);
  }

  _getFaq(_GetFaq event, Emitter<FaqCreationState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, FaqDetailsResponseModel> faqDetailsResult =
        await faqCreationRepository.getFaqDetails(event.id);
    FaqCreationState faqState = faqDetailsResult.fold((l) {
      return state.copyWith(isLoading: false, faqDetailOption: Some(Left(l)));
    }, (r) {
      faqListData.add(r.data!);
      questionController.text = faqListData.first.question ?? "";
      answerController.text = faqListData.first.answer ?? "";
      return state.copyWith(isLoading: false, faqDetailOption: Some(Right(r)));
    });
    emit(faqState);
  }

  _addFaq(_AddFaq event, Emitter<FaqCreationState> emit) async {
    emit(state.copyWith(isLoadingButton: true));
    final Either<ApiErrorHandler, CommonResponse> faqDetailsResult =
        await faqCreationRepository.createFaqDetails(
            event.question, event.answer, event.status, event.forClient);
    FaqCreationState faqState = faqDetailsResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");

      return state.copyWith(isLoadingButton: false);
    }, (r) {
      CSnackBar.showSuccess(event.context, msg: r.message ?? "");

      event.context.router.navigate(const FaqRoute());
      return state.copyWith(isLoadingButton: false);
    });
    emit(faqState);
  }

  _updateFaq(_UpdateFaq event, Emitter<FaqCreationState> emit) async {
    emit(state.copyWith(isLoadingButton: true));
    final Either<ApiErrorHandler, CommonResponse> faqDetailsResult =
        await faqCreationRepository.updateFaqDetails(event.id, event.question,
            event.answer, event.status, event.forClient);
    FaqCreationState faqState = faqDetailsResult.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");

      return state.copyWith(isLoadingButton: false);
    }, (r) {
      CSnackBar.showSuccess(event.context, msg: r.message ?? "");

      event.context.router.navigate(const FaqRoute());
      return state.copyWith(isLoadingButton: false);
    });
    emit(faqState);
  }

  _radioForClient(_RadioForClient event, Emitter<FaqCreationState> emit) {
    emit(state.copyWith(isForClient: event.isSelected));
  }
}
