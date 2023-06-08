import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caregiver_creation_bloc.freezed.dart';

part 'caregiver_creation_event.dart';

part 'caregiver_creation_state.dart';

class CaregiverCreationBloc
    extends Bloc<CaregiverCreationEvent, CaregiverCreationState> {
  CaregiverCreationBloc() : super(CaregiverCreationState.initial()) {
    on<CaregiverCreationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
