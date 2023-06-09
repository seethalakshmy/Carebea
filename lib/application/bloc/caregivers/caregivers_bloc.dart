import 'dart:convert';

import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/caregivers/model/caregiver_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/caregivers/model/Data.dart';
import '../../../domain/caregivers/model/care_givers.dart';
import '../../../domain/caregivers/model/types.dart';
import '../../../infrastructure/caregivers/caregivers_repository.dart';

part 'caregivers_state.dart';

part 'caregivers_event.dart';

part 'caregivers_bloc.freezed.dart';

class CareGiversBloc extends Bloc<CareGiversEvent, CareGiversState> {
  CareGiversRepository careGiverListRepository;

  CareGiversBloc(this.careGiverListRepository)
      : super(CareGiversState.initial()) {
    final List<Types> typeList = [
      Types(id: 1, title: AppString.newRequest.val, isSelected: true),
      Types(id: 2, title: AppString.activeCareAmbassador.val, isSelected: false)
    ];

    on<CareGiversEvent>((event, emit) async {
      if (event is _GetCareGivers) {
        final Either<ApiErrorHandler, CareGiverResponse> homeResult =
            await careGiverListRepository.getCareGivers(
                userID: event.userId,
                page: event.page,
                limit: event.limit,
                type: event.type,
                searchTerm: event.searchTerm,
                filterId: event.filterId);
        CareGiversState homeState = homeResult.fold((l) {
          print('error is ${l.error}');
          return state.copyWith(error: l.error, isLoading: false,isError: true);
        }, (r) {
          if(state.types.isNotEmpty){
            return state.copyWith(response: r, isLoading: false,);
          }else{
            return state.copyWith(response: r, isLoading: false, types: typeList);
          }
        });
        emit(
          homeState,
        );
      } else if (event is _IsUserActive) {
        final state = this.state;
        Caregivers item = event.caregiver;
        CareGiverResponse response = state.response ?? CareGiverResponse();
        Data data = response.data ?? Data();
        final index = data.caregivers!.indexOf(item);
        List<Caregivers> careGiverList = data.caregivers!..remove(item);
        if (item.isActive ?? false) {
          careGiverList.insert(index, item.copyWith(onBoardingStatus: false));
        } else {
          careGiverList.insert(index, item.copyWith(onBoardingStatus: true));
        }
        final updatedResponse = response.copyWith(
          data: data.copyWith(caregivers: careGiverList),
        );

        emit(state.copyWith(response: updatedResponse));
      } else if (event is _IsSelectedTab) {
        final state = this.state;
        final typeList = state.types;
        Types item = event.type;
        final index = typeList.indexOf(item);
        if (!item.isSelected) {
          for (var element in typeList) {
            element.isSelected = false;
          }
          List<Types> types = List.from(typeList)..removeAt(index);
          types.insert(index, item.copyWith(isSelected: true));
          emit(state.copyWith(types: types,isLoading: true));
        }
      }
    });
  }
}
