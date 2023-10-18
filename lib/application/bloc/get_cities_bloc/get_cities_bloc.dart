import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../presentation/on_boarding/modules/personal_details/models/city_list_response.dart';

part 'get_cities_bloc.freezed.dart';
part 'get_cities_event.dart';
part 'get_cities_state.dart';

class GetCitiesBloc extends Bloc<GetCitiesEvent, GetCitiesState> {
  final OnBoardingRepository onboardingRepository;

  GetCitiesBloc(this.onboardingRepository)
      : super(const GetCitiesState.initial()) {
    on<GetCitiesEvent>((event, emit) async {
      await event.when(fetch: (stateId, page, searchKey) async {
        emit(const GetCitiesState.loading());
        final Either<ApiErrorHandler, CityListResponse> cityResult =
            await onboardingRepository.getCityList(
                stateId: stateId, page: page, searchKey: searchKey);
        cityResult.fold((l) {
          emit(GetCitiesState.failed(error: l.error));
        }, (r) {
          emit(GetCitiesState.success(data: r));
        });
      }, reset: () {
        emit(const GetCitiesState.loading());
        emit(const GetCitiesState.loading());
      });
    });
  }
}
