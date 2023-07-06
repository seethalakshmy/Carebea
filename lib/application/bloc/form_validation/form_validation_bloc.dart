import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_validation_event.dart';
part 'form_validation_state.dart';
part 'form_validation_bloc.freezed.dart';

class FormValidationBloc
    extends Bloc<FormValidationEvent, FormValidationState> {
  FormValidationBloc() : super(const _Initial()) {
   on<_DropDown>(_dropDownSuccess);
   on<_CheckBox>(_checkBoxSuccess);
   on<_Submit>(_formSubmitSuccess);
  }
  _dropDownSuccess(_DropDown event,Emitter<FormValidationState> emit){
    emit(FormValidationState.dropDownSuccess(event.value));
  }
  _checkBoxSuccess(_CheckBox event,Emitter<FormValidationState> emit){
    emit(FormValidationState.checkBoxSuccess(event.value));
  }
  _formSubmitSuccess(_Submit event,Emitter<FormValidationState> emit){
    emit(const FormValidationState.formSubmitSuccess());
  }

}
