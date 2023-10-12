import 'dart:async';
import 'dart:math';

import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/infrastructure/upload_video/upload_video_repository.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';

part 'upload_video_event.dart';
part 'upload_video_state.dart';
part 'upload_video_bloc.freezed.dart';

class UploadVideoBloc extends Bloc<VideoUploadEvent, VideoUploadState> {
  UploadVideoRepository uploadVideoRepository;
  // List<FaqDetailsData> faqListData = [];
  String uploadedVideo = '';

  TextEditingController title = TextEditingController();

  UploadVideoBloc(this.uploadVideoRepository)
      : super(VideoUploadState.initial()) {
    // on<_GetFaq>(_getFaq);
    on<_UploadVideo>(_addVideo);
    // on<_UpdateFaq>(_updateFaq);
    on<_RadioForClient>(_radioForClient);
  }

  // _getFaq(_GetFaq event, Emitter<FaqCreationState> emit) async {
  //   emit(state.copyWith(isLoading: true));
  //   final Either<ApiErrorHandler, FaqDetailsResponseModel> faqDetailsResult =
  //   await faqCreationRepository.getFaqDetails(event.id);
  //   FaqCreationState faqState = faqDetailsResult.fold((l) {
  //     return state.copyWith(isLoading: false, faqDetailOption: Some(Left(l)));
  //   }, (r) {
  //     faqListData.add(r.data!);
  //     questionController.text = faqListData.first.question ?? "";
  //     answerController.text = faqListData.first.answer ?? "";
  //     return state.copyWith(isLoading: false, faqDetailOption: Some(Right(r)));
  //   });
  //   emit(faqState);
  // }

  _addVideo(_UploadVideo event, Emitter<VideoUploadState> emit) async {
    emit(state.copyWith(isLoadingButton: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await uploadVideoRepository.uploadVideo(
            adminId: event.adminId,
            title: event.title,
            settingsId: event.settingsId,
            attachment: event.attachment,
            userType: event.userType);
    VideoUploadState videoUploadState = result.fold((l) {
      CSnackBar.showError(event.context, msg: 'Please add attachment');
      return state.copyWith(isLoadingButton: false);
    }, (r) {
      event.context.router.navigate(const VideoManagementRoute());
      return state.copyWith(isLoadingButton: false);
    });
    emit(videoUploadState);
    print('loading check ${state.isLoadingButton}');
  }

  // _updateFaq(_UpdateFaq event, Emitter<FaqCreationState> emit) async {
  //   emit(state.copyWith(isLoadingButton: true));
  //   final Either<ApiErrorHandler, CommonResponse> faqDetailsResult =
  //       await faqCreationRepository.updateFaqDetails(event.id, event.question,
  //           event.answer, event.status, event.forClient);
  //   FaqCreationState faqState = faqDetailsResult.fold((l) {
  //     return state.copyWith(isLoadingButton: false);
  //   }, (r) {
  //     event.context.router.navigate(const FaqRoute());
  //     return state.copyWith(isLoadingButton: false);
  //   });
  //   emit(faqState);
  // }

  _radioForClient(_RadioForClient event, Emitter<VideoUploadState> emit) {
    emit(state.copyWith(isForClient: event.isSelected));
  }
}
