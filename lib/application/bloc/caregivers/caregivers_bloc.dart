import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/caregivers/care_givers_response.dart';
import '../../../infrastructure/caregivers/caregivers_repository.dart';

part 'caregivers_state.dart';

part 'caregivers_event.dart';

part 'caregivers_bloc.freezed.dart';

class CareGiversBloc extends Bloc<CareGiversEvent, CareGiversState> {
  CareGiversRepository careGiverListRepository;

  CareGiversBloc(this.careGiverListRepository)
      : super(const CareGiversState.loading()) {
    on<CareGiversEvent>((event, emit) async {
      if (event is _GetCareGivers) {
        // emit(const CareGiversState.loading());
        final Either<ApiErrorHandler, CaregiversResponse> homeResult =
            await careGiverListRepository.getCareGivers(
                page: event.page, limit: event.limit);
        CareGiversState homeState = homeResult.fold((l) {
          return CareGiversState.error(msg: l.error,isClientError:l.isClientError);
        }, (r) {
          return CareGiversState.success(response: r);
        });
        emit(homeState);
      }
    });
  }
}
