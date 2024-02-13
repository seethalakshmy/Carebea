import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_validation_event.dart';
part 'form_validation_state.dart';
part 'form_validation_bloc.freezed.dart';

class FormValidationBloc
    extends Bloc<FormValidationEvent, FormValidationState> {
  int start = 60;
  Timer? timer;
  FormValidationBloc() : super(const _Initial()) {
    on<_DropDown>(_dropDownSuccess);
    on<_CheckBox>(_checkBoxSuccess);
    on<_Submit>(_formSubmitSuccess);
    on<_Count>(_count);
  }
  _dropDownSuccess(_DropDown event, Emitter<FormValidationState> emit) {
    emit(FormValidationState.dropDownSuccess(event.value));
  }

  _checkBoxSuccess(_CheckBox event, Emitter<FormValidationState> emit) {
    emit(FormValidationState.checkBoxSuccess(event.value));
  }

  _formSubmitSuccess(_Submit event, Emitter<FormValidationState> emit) {
    emit(const FormValidationState.formSubmitSuccess());
  }

  Future<void> _count(_Count event, Emitter<FormValidationState> emit) async {
    const oneSec = Duration(seconds: 1);
    if (timer?.isActive == true) {
      timer?.cancel();
    }
    start = 60;
    timer = Timer.periodic(oneSec, (timer) async {
      start--;
      if (start <= 0) {
        timer.cancel();
      }
      log("start is $start");
      // await emitTime(start.toString());
    });
  }

  // Future<void> emitTime(String start) async {
  //   emit(state.copyWith(count: start.padLeft(2, '0')));
  // }
}
