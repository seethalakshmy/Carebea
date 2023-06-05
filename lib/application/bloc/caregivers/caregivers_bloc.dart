import 'dart:convert';

import 'package:admin_580_tech/domain/caregivers/model/caregiver_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/caregivers/model/Data.dart';
import '../../../domain/caregivers/model/care_givers.dart';
import '../../../infrastructure/caregivers/caregivers_repository.dart';

part 'caregivers_state.dart';

part 'caregivers_event.dart';

part 'caregivers_bloc.freezed.dart';

class CareGiversBloc extends Bloc<CareGiversEvent, CareGiversState> {
  CareGiversRepository careGiverListRepository;

  CareGiversBloc(this.careGiverListRepository)
      : super(CareGiversState.initial()) {
    on<CareGiversEvent>((event, emit) async {
      if (event is _GetCareGivers) {
        final Either<ApiErrorHandler, CareGiverResponse> homeResult =
            await careGiverListRepository.getCareGivers(
              userID: event.userId,
                page: event.page, limit: event.limit);
        CareGiversState homeState = homeResult.fold((l) {
          return state.copyWith(error: l.error, isLoading: false);
        }, (r) {
          return state.copyWith(response: r, isLoading: false);
        });
        emit(homeState);
      } else if (event is _IsUserActive) {
        final state = this.state;
        Caregivers item = event.caregiver;
        CareGiverResponse response = state.response ?? CareGiverResponse();
        Data data = response.data??Data();
        final index = data.caregivers!.indexOf(item);
        List<Caregivers> careGiverList = data.caregivers!
          ..remove(item);
        if (item.onBoardingStatus ?? false) {
          careGiverList.insert(index, item.copyWith(onBoardingStatus: false));
        } else {
          careGiverList.insert(index, item.copyWith(onBoardingStatus: true));
        }
        final updatedResponse =
            response.copyWith(data:data.copyWith(caregivers:careGiverList ) ,);

        emit(state.copyWith(response: updatedResponse));
      }
    });
  }
}
