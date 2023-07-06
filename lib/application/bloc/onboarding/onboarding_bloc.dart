import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState.initial()) {
    on<OnboardingEvent>((event, emit) async {
      if (event is _Submit) {
        emit(state.copyWith(isFormSubmitSuccess: true));
      } else if (event is _RadioHHASelected) {
        emit(state.copyWith(isHHASelected: event.isSelected));
      } else if (event is _RadioBLSSelected) {
        emit(state.copyWith(isBLSSelected: event.isSelected));
      } else if (event is _RadioTBSelected) {
        emit(state.copyWith(isTBSelected: event.isSelected));
      } else if (event is _RadioCovidSelected) {
        emit(state.copyWith(isCovidSelected: event.isSelected));
      } else if (event is _RadioExperienceSelected) {
        emit(state.copyWith(isExperianceSelected: event.isSelected));
      } else if (event is _RadioSmokerSelected) {
        emit(state.copyWith(isSmokerSelected: event.isSelected));
      } else if (event is _RadioTransportationSelected) {
        emit(state.copyWith(isTransportationSelected: event.isSelected));
      } else if (event is _RadioPetSelected) {
        emit(state.copyWith(isPetsSelected: event.isSelected));
      } else if (event is _RadioLanguageSelected) {
        emit(state.copyWith(isLanguagesSelected: event.isSelected));
      } else if (event is _ProfilePicSelected) {
        emit(state.copyWith(pickedProfilePic: event.bytes));
      } else if (event is _SecurityDocumentUploadSelected) {
        emit(state.copyWith(
            securityDocumentList: event.bytesList,
            listUpdated: !event.listUpdated));
      } else if (event is _HHADocumentUploadSelected) {
        emit(state.copyWith(
            hhaDocumentList: event.bytesList, listUpdated: !event.listUpdated));
      } else if (event is _BLSDocumentUploadSelected) {
        emit(state.copyWith(
            blsDocumentList: event.bytesList, listUpdated: !event.listUpdated));
      } else if (event is _TBDocumentUploadSelected) {
        emit(state.copyWith(
            tbDocumentList: event.bytesList, listUpdated: !event.listUpdated));
      } else if (event is _CovidDocumentUploadSelected) {
        emit(state.copyWith(
            covidDocumentList: event.bytesList,
            listUpdated: !event.listUpdated));
      }
    });
  }
}
