import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/infrastructure/upload_video/upload_video_repository.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';

part 'upload_video_bloc.freezed.dart';

part 'upload_video_event.dart';
part 'upload_video_state.dart';

class UploadVideoBloc extends Bloc<VideoUploadEvent, VideoUploadState> {
  UploadVideoRepository uploadVideoRepository;
  String uploadedVideo = '';
  int radioValue = 0;

  TextEditingController title = TextEditingController();

  UploadVideoBloc(this.uploadVideoRepository)
      : super(VideoUploadState.initial()) {
    on<_UploadVideo>(_addVideo);
    on<_RadioForClient>(_radioForClient);
  }

  _addVideo(_UploadVideo event, Emitter<VideoUploadState> emit) async {
    emit(state.copyWith(isLoadingButton: true, radioValue: radioValue));
    final Either<ApiErrorHandler, CommonResponse> result =
        await uploadVideoRepository.uploadVideo(
            adminId: event.adminId,
            title: event.title,
            settingsId: event.settingsId,
            attachment: event.attachment,
            userType: event.userType);
    VideoUploadState videoUploadState = result.fold((l) {
      CSnackBar.showError(event.context, msg: 'Please add attachment');
      return state.copyWith(isLoadingButton: false, radioValue: radioValue);
    }, (r) {
      event.context.router.navigate(const VideoManagementRoute());
      if (event.settingsId == "") {
        CSnackBar.showSuccess(event.context,
            msg: 'The video added successfully');
      } else {
        CSnackBar.showSuccess(event.context,
            msg: 'The video updated successfully');
      }

      return state.copyWith(isLoadingButton: false, radioValue: radioValue);
    });
    emit(videoUploadState);
    print('loading check ${state.isLoadingButton}');
  }

  _radioForClient(_RadioForClient event, Emitter<VideoUploadState> emit) {
    radioValue = event.isSelected ?? radioValue;

    emit(state.copyWith(isForClient: event.isSelected));
  }
}
