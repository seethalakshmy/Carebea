import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/subProfile_details/model/sub_profile_detail_response.dart';
import '../../../infrastructure/subprofile_details/subprofile_detail_repository.dart';

part 'sub_profile_details_event.dart';
part 'sub_profile_details_state.dart';
part 'sub_profile_details_bloc.freezed.dart';

class SubProfileDetailBloc
    extends Bloc<SubProfileDetailEvent, SubProfileDetailState> {
  SubProfileDetailRepository subProfileDetailRepository;

  SubProfileDetailBloc(this.subProfileDetailRepository)
      : super(SubProfileDetailState.initial()) {
    on<_GetSubProfileDetail>(_getSubProfileDetail);
  }

  _getSubProfileDetail(
      _GetSubProfileDetail event, Emitter<SubProfileDetailState> emit) async {
    final Either<ApiErrorHandler, SubProfileDetailResponse> result =
        await subProfileDetailRepository.getSubProfileDetail(
            userId: event.userId, adminId: event.adminId);
    var homeState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      return state.copyWith(response: r, isLoading: false);
    });
    emit(homeState);
  }
}
