import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/domain/video_management/models/video_management_response.dart';
import 'package:admin_580_tech/infrastructure/video_management/video_management_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';

part 'video_management_event.dart';
part 'video_management_state.dart';
part 'video_management_bloc.freezed.dart';

class VideoManagementBloc
    extends Bloc<VideoManagementEvent, VideoManagementState> {
  VideoManagementRepository videoManagementRepository;
  int page = 1;
  int limit = 10;
  List<Data> videoList = [];

  VideoManagementBloc(this.videoManagementRepository)
      : super(VideoManagementState.initial()) {
    on<_GetSettings>(_getSettings);
    on<_DeleteGeneralSettings>(_deleteSettings);
  }

  _getSettings(_GetSettings event, Emitter<VideoManagementState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, VideoManagementResponse> result =
        await videoManagementRepository.getGeneralSettings(
            userId: event.userId);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      if (r.status!) {
        videoList.clear();
        videoList.addAll(r.data!);
        return state.copyWith(response: r, isLoading: false);
      }
    });
    emit(userState!);
  }

  _deleteSettings(
      _DeleteGeneralSettings event, Emitter<VideoManagementState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await videoManagementRepository.deleteGeneralSettings(
            userId: event.userId, settingsId: event.settingsId);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      if (r.status!) {
        add(VideoManagementEvent.getSettings(userId: event.userId));
        return state.copyWith(deleteResponse: r, isLoading: false);
      }
    });
    emit(userState!);
  }
}
