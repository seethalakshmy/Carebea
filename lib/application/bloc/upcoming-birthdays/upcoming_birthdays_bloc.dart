import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/upcoming_birthdays/model/upcoming_birthday_response.dart';
import '../../../infrastructure/upcoming_birthday/upcoming_birthday_repository.dart';

part 'upcoming_birthdays_event.dart';
part 'upcoming_birthdays_state.dart';
part 'upcoming_birthdays_bloc.freezed.dart';

class UpcomingBirthdaysBloc
    extends Bloc<UpcomingBirthdayEvent, UpcomingBirthdayState> {
  UpcomingBirthdayRepository? upcomingBirthdayRepository;
  int page = 1;
  int limit = 10;
  List<dynamic> mUserList = [];
  final TextEditingController searchController = TextEditingController();
  int? filterId;

  UpcomingBirthdaysBloc(this.upcomingBirthdayRepository)
      : super(UpcomingBirthdayState.initial()) {
    on<_GetUpcomingBirthdays>(_getUpcomingBirthdays);
    // on<_ChangeClientStatus>(_changeClientStatus);
  }

  _getUpcomingBirthdays(
      _GetUpcomingBirthdays event, Emitter<UpcomingBirthdayState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, UpcomingBirthdayResponse> result =
        await upcomingBirthdayRepository!.getUpcomingBirthdays(
      userId: event.userId,
      type: event.type,
      page: event.page,
      limit: event.limit,
      searchTerm: event.searchTerm,
    );
    var userState = result.fold((l) {
      return state.copyWith(
          error: l.error, isLoading: false, mUserList: mUserList);
    }, (r) {
      if (r.status == true) {
        mUserList.clear();
        // state.serviceRequestsList.addAll(r.data!.services!);

        mUserList.addAll(r.data!.finalResult!);
        log("userList from bloc,${mUserList.length}");
      }

      return state.copyWith(
          upcomingBirthdayResponse: r, isLoading: false, mUserList: mUserList);
    });
    emit(userState);
  }
}
