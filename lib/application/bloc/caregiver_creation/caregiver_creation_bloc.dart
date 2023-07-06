import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/presentation/caregiver_creation/models/caregiver_creation_response.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/caregiver_creation/caregiver_creation_repository.dart';

part 'caregiver_creation_bloc.freezed.dart';
part 'caregiver_creation_event.dart';
part 'caregiver_creation_state.dart';

class CaregiverCreationBloc
    extends Bloc<CaregiverCreationEvent, CaregiverCreationState> {
  CaregiverCreationRepository caregiverCreationRepository;

  CaregiverCreationBloc(this.caregiverCreationRepository)
      : super(CaregiverCreationState.initial()) {
    on<_CreateCaregiver>(_createCaregivers);
  }

  _createCaregivers(
      _CreateCaregiver event, Emitter<CaregiverCreationState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CaregiverCreationResponse> result =
        await caregiverCreationRepository.createCaregiver(
            firstName: event.firstName,
            lastName: event.lastName,
            email: event.email,
            mobileNo: event.mobileNo);
    CaregiverCreationState creationState = result.fold((l) {
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          failureOrSuccessOption: Some(Left(l)));
    }, (r) {
      return state.copyWith(
          failureOrSuccessOption: Some(Right(r)), isLoading: false);
    });
    emit(creationState);
  }
}
