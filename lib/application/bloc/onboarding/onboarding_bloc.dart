import 'dart:typed_data';

import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/models/document_list_response.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/on_boarding/models/preferences/pet_list_response.dart';
import '../../../domain/on_boarding/models/preferences/pets_model.dart';
import '../../../domain/on_boarding/models/preferences/preference_language_model.dart';
import '../../../domain/on_boarding/models/preferences/preference_request_model.dart';
import '../../../domain/on_boarding/models/preferences/years_of_experience_response.dart';
import '../../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../../../presentation/on_boarding/modules/personal_details/models/city_list_response.dart';
import '../../../presentation/on_boarding/modules/personal_details/models/gender_list_response.dart';
import '../../../presentation/on_boarding/modules/personal_details/models/personal_details_response.dart';
import '../../../presentation/on_boarding/modules/personal_details/models/state_list_reponse.dart';
import '../../../presentation/on_boarding/modules/preference/models/language_list_response.dart';
import '../../../presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_request_model.dart';
import '../../../presentation/on_boarding/modules/services/models/get_service_response.dart';

part 'onboarding_bloc.freezed.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnBoardingRepository onboardingRepository;
  List<Gender> genderList = [];
  List<City> cityList = [];
  List<StateItem> stateList = [];
  List<DocumentType> documentList = [];
  List<PetsModel> petsList = [];
  List<PetsModel> selectedPetsList = [];
  List<PreferenceLanguageModel> languageList = [];
  List<PreferenceLanguageModel> selectedLanguageList = [];
  List<YearData> yearList = [];
  String stateId = "";
  String citySearchKey = "";
  String stateSearchKey = "";
  String languageSearchKey = "";
  String profileUrl = "";
  int languagePage = 1;
  String selectedYearId = "";

  OnboardingBloc(this.onboardingRepository) : super(OnboardingState.initial()) {
    on<OnboardingEvent>((event, emit) async {
      if (event is _RadioHHASelected) {
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
      } else if (event is _LanguagePagination) {
        emit(state.copyWith(languagePaginationPage: languagePage));
      }
    });
    on<_CommonDataLists>(_getCommonLists);
    on<_CityLists>(_getCityList);
    on<_StateLists>(_getStateList);
    on<_GetPersonalDetails>(_getPersonalData);
    on<_GetQualificationDetails>(_getQualificationDetails);
    on<_SubmitPreferenceDetails>(_getPreferenceDetails);
    on<_GetPetList>(_getPetsList);
    on<_YearsOfExp>(_getYearsOfExp);
    on<_GetLanguageList>(_getLanguageList);
    on<_GetCaregiverService>(_getCaregiverServices);
  }

  _getCommonLists(_CommonDataLists event, Emitter<OnboardingState> emit) async {
    await getGenderResult(emit);
    await getStateResult(emit);
    await getDocumentTypeResult(emit);
  }

  _getCityList(_CityLists event, Emitter<OnboardingState> emit) async {
    await getCityResult(emit);
  }

  _getStateList(_StateLists event, Emitter<OnboardingState> emit) async {
    await getStateResult(emit);
  }

  _getPetsList(_GetPetList event, Emitter<OnboardingState> emit) async {
    final Either<ApiErrorHandler, PetListResponse> result =
        await onboardingRepository.getPetList(searchKey: event.petSearchKey);
    OnboardingState petState = result.fold((l) {
      return state.copyWith(isLoading: false, petListOption: Some(Left(l)));
    }, (r) {
      petsList.clear();
      petsList
          .addAll(r.data!.map((e) => PetsModel(e.name ?? "", e.id)).toList());
      return state.copyWith(
          isLoading: false,
          petsList: r.data!.map((e) => PetsModel(e.name ?? "", e.id)).toList(),
          petListOption: Some(Right(r)));
    });
    emit(petState);
  }

  _getLanguageList(
      _GetLanguageList event, Emitter<OnboardingState> emit) async {
    final Either<ApiErrorHandler, LanguageListResponse> result =
        await onboardingRepository.getLanguageList(
            page: languagePage.toString(), searchKey: event.languageSearchKey);
    OnboardingState languageState = result.fold((l) {
      return state.copyWith(isLoading: false, petListOption: Some(Left(l)));
    }, (r) {
      if (languagePage == 1) {
        languageList.clear();
      }
      languageList.addAll(r.data!
          .map((e) => PreferenceLanguageModel(e.name ?? "", e.id ?? ""))
          .toList(growable: true));
      return state.copyWith(
          isLoading: false, languageListOption: Some(Right(r)));
    });
    emit(languageState);
  }

  Future<void> getDocumentTypeResult(Emitter<OnboardingState> emit) async {
    final Either<ApiErrorHandler, DocumentListResponse> documentResult =
        await onboardingRepository.getDocumentList();
    OnboardingState documentState = documentResult.fold((l) {
      return state.copyWith(isLoading: false, documentOption: Some(Left(l)));
    }, (r) {
      documentList.clear();
      documentList.addAll(r.data!);
      return state.copyWith(isLoading: false, documentOption: Some(Right(r)));
    });
    emit(documentState);
  }

  Future<void> getGenderResult(Emitter<OnboardingState> emit) async {
    final Either<ApiErrorHandler, GenderListResponse> genderResult =
        await onboardingRepository.getGenderList();
    OnboardingState genderState = genderResult.fold((l) {
      return state.copyWith(isLoading: false, genderOption: Some(Left(l)));
    }, (r) {
      genderList.clear();
      genderList.addAll(r.gender!);
      return state.copyWith(isLoading: false, genderOption: Some(Right(r)));
    });
    emit(genderState);
  }

  Future<void> getStateResult(Emitter<OnboardingState> emit) async {
    final Either<ApiErrorHandler, StateListReponse> stateResult =
        await onboardingRepository.getStateList(
            page: "1", searchKey: stateSearchKey);
    OnboardingState stateState = stateResult.fold((l) {
      return state.copyWith(isLoading: false, stateOption: Some(Left(l)));
    }, (r) {
      stateList.clear();
      stateList.addAll(r.data!);
      return state.copyWith(isLoading: false, stateOption: Some(Right(r)));
    });
    emit(stateState);
  }

  Future<void> getCityResult(Emitter<OnboardingState> emit) async {
    final Either<ApiErrorHandler, CityListResponse> cityResult =
        await onboardingRepository.getCityList(
            stateId: stateId, page: "1", searchKey: citySearchKey);
    OnboardingState cityState = cityResult.fold((l) {
      return state.copyWith(isLoading: false, cityOption: Some(Left(l)));
    }, (r) {
      cityList.clear();
      cityList.addAll(r.data!);
      return state.copyWith(isLoading: false, cityOption: Some(Right(r)));
    });
    emit(cityState);
  }

  _getPersonalData(
      _GetPersonalDetails event, Emitter<OnboardingState> emit) async {
    emit(state.copyWith(isLoading: true));

    final Either<ApiErrorHandler, PersonalDetailsResponse> result =
        await onboardingRepository.personalDetailsSubmit(
            userId: event.userId,
            dob: event.dob,
            genderId: event.genderId,
            street: event.street,
            cityId: event.cityId,
            stateId: event.stateId,
            latitude: event.latitude,
            longitude: event.longitude,
            zip: event.zip,
            address: event.address,
            socialSecurityNo: event.socialSecurityNo,
            documentId: event.documentId,
            documentNo: event.documentNo,
            expiryDate: event.expiryDate,
            documentList: event.documentList,
            profilePic: event.profilePic);
    OnboardingState peronalState = result.fold((l) {
      return state.copyWith(
          isLoading: false, personalDetailsOption: Some(Left(l)));
    }, (r) {
      return state.copyWith(
          isLoading: false, personalDetailsOption: Some(Right(r)));
    });
    emit(peronalState);
  }

  _getQualificationDetails(
      _GetQualificationDetails event, Emitter<OnboardingState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await onboardingRepository.qualificationSubmit(
            userId: event.userId,
            haveHHARegistration: event.haveHhaRegistration,
            hhaDetails: event.hhaDetails,
            haveBLSCertificate: event.haveBlsCertificate,
            blsDetails: event.blsDetails,
            haveTBTest: event.haveTbTest,
            tbDetails: event.tbDetails,
            haveCovidVaccination: event.haveCovidVaccination,
            covidDetails: event.covidDetails);
    OnboardingState qualificationState = result.fold((l) {
      return state.copyWith(
          isLoading: false, qualificationDetailsOption: Some(Left(l)));
    }, (r) {
      return state.copyWith(
          isLoading: false, qualificationDetailsOption: Some(Right(r)));
    });
    emit(qualificationState);
  }

  _getPreferenceDetails(
      _SubmitPreferenceDetails event, Emitter<OnboardingState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await onboardingRepository.preferenceSubmit(
            userId: event.userId,
            yearsOfExp: event.yearsOfExp,
            serveWithSmoker: event.serveWithSmoker,
            willingToTransportation: event.willingToTransportation,
            willingToServeWithPets: event.willingToServeWithPets,
            petsList: event.petsList,
            knownLanguages: event.knownLanguages);
    OnboardingState preferenceState = result.fold((l) {
      return state.copyWith(
          isLoading: false, preferenceDetailsOption: Some(Left(l)));
    }, (r) {
      return state.copyWith(
          isLoading: false, preferenceDetailsOption: Some(Right(r)));
    });
    emit(preferenceState);
  }

  _getYearsOfExp(_YearsOfExp event, Emitter<OnboardingState> emit) async {
    final Either<ApiErrorHandler, YearsOfExperienceResponse> result =
        await onboardingRepository.getYearsOfExpResult();
    result.fold((l) {
      return state.copyWith(isLoading: false, yearsOption: Some(Left(l)));
    }, (r) {
      yearList.clear();
      yearList.addAll(r.data!);
      return state.copyWith(isLoading: false, yearsOption: Some(Right(r)));
    });
  }

  _getCaregiverServices(
      _GetCaregiverService event, Emitter<OnboardingState> emit) async {
    final Either<ApiErrorHandler, GetServiceResponse> result =
        await onboardingRepository.getServices(userId: event.userId);
    result.fold((l) {
      return state.copyWith(isLoading: false, getServiceOption: Some(Left(l)));
    }, (r) {
      return state.copyWith(isLoading: false, getServiceOption: Some(Right(r)));
    });
  }
}
