import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState.initial()) {
    on<OnboardingEvent>((event, emit) async {
      if (event is _Submit) {
        //emit(const OnboardingState.formSubmitSuccess());
      } else if (event is radioHHASelected) {
        print("state.isSelected value : ${state.isSelected}");
        emit(state.copyWith(isSelected: state.isSelected));
      }
    });
  }
}
