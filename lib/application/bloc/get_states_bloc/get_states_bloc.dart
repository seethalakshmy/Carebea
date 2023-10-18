import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../presentation/on_boarding/modules/personal_details/models/state_item.dart';
import '../../../presentation/on_boarding/modules/personal_details/models/state_list_reponse.dart';

part 'get_states_bloc.freezed.dart';
part 'get_states_event.dart';
part 'get_states_state.dart';

class GetStatesBloc extends Bloc<GetStatesEvent, GetStatesState> {
  final OnBoardingRepository onboardingRepository;
  GetStatesBloc(this.onboardingRepository)
      : super(const GetStatesState.initial()) {
    on<GetStatesEvent>((event, emit) async {
      await event.when(fetch: (page, searchKey, previousData) async {
        emit(GetStatesState.loading(data: previousData));
        final Either<ApiErrorHandler, StateListResponse> stateResult =
            await onboardingRepository.getStateList(
                page: page, searchKey: searchKey);
        stateResult.fold((l) => emit(GetStatesState.failed(error: l.error)),
            (r) => emit(GetStatesState.success(data: r.data ?? [])));
      }, reset: () {
        emit(const GetStatesState.initial());
      });
    });
  }
}
