import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caregiver_creation_bloc.freezed.dart';

part 'caregiver_creation_event.dart';

part 'caregiver_creation_state.dart';

class CaregiverCreationBloc
    extends Bloc<CaregiverCreationEvent, CaregiverCreationState> {
  CaregiverCreationBloc() : super(const _Initial()) {
    on<CaregiverCreationEvent>((event, emit) {
      if(event is _Submit){
        emit(const CaregiverCreationState.formSubmitSuccess());
      }
    });
  }
}
