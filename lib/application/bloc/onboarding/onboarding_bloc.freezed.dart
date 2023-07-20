// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetPersonalDetailsCopyWith<$Res> {
  factory _$$_GetPersonalDetailsCopyWith(_$_GetPersonalDetails value,
          $Res Function(_$_GetPersonalDetails) then) =
      __$$_GetPersonalDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String dob,
      int genderId,
      String street,
      String cityId,
      String stateId,
      double latitude,
      double longitude,
      String zip,
      String address,
      String socialSecurityNo,
      String documentId,
      String documentNo,
      String expiryDate,
      List<String> documentList,
      String profilePic});
}

/// @nodoc
class __$$_GetPersonalDetailsCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_GetPersonalDetails>
    implements _$$_GetPersonalDetailsCopyWith<$Res> {
  __$$_GetPersonalDetailsCopyWithImpl(
      _$_GetPersonalDetails _value, $Res Function(_$_GetPersonalDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dob = null,
    Object? genderId = null,
    Object? street = null,
    Object? cityId = null,
    Object? stateId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? zip = null,
    Object? address = null,
    Object? socialSecurityNo = null,
    Object? documentId = null,
    Object? documentNo = null,
    Object? expiryDate = null,
    Object? documentList = null,
    Object? profilePic = null,
  }) {
    return _then(_$_GetPersonalDetails(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      genderId: null == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      socialSecurityNo: null == socialSecurityNo
          ? _value.socialSecurityNo
          : socialSecurityNo // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      documentNo: null == documentNo
          ? _value.documentNo
          : documentNo // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      documentList: null == documentList
          ? _value._documentList
          : documentList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPersonalDetails implements _GetPersonalDetails {
  const _$_GetPersonalDetails(
      {required this.userId,
      required this.dob,
      required this.genderId,
      required this.street,
      required this.cityId,
      required this.stateId,
      required this.latitude,
      required this.longitude,
      required this.zip,
      required this.address,
      required this.socialSecurityNo,
      required this.documentId,
      required this.documentNo,
      required this.expiryDate,
      required final List<String> documentList,
      required this.profilePic})
      : _documentList = documentList;

  @override
  final String userId;
  @override
  final String dob;
  @override
  final int genderId;
  @override
  final String street;
  @override
  final String cityId;
  @override
  final String stateId;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String zip;
  @override
  final String address;
  @override
  final String socialSecurityNo;
  @override
  final String documentId;
  @override
  final String documentNo;
  @override
  final String expiryDate;
  final List<String> _documentList;
  @override
  List<String> get documentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentList);
  }

  @override
  final String profilePic;

  @override
  String toString() {
    return 'OnboardingEvent.personalDetails(userId: $userId, dob: $dob, genderId: $genderId, street: $street, cityId: $cityId, stateId: $stateId, latitude: $latitude, longitude: $longitude, zip: $zip, address: $address, socialSecurityNo: $socialSecurityNo, documentId: $documentId, documentNo: $documentNo, expiryDate: $expiryDate, documentList: $documentList, profilePic: $profilePic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPersonalDetails &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.socialSecurityNo, socialSecurityNo) ||
                other.socialSecurityNo == socialSecurityNo) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.documentNo, documentNo) ||
                other.documentNo == documentNo) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality()
                .equals(other._documentList, _documentList) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      dob,
      genderId,
      street,
      cityId,
      stateId,
      latitude,
      longitude,
      zip,
      address,
      socialSecurityNo,
      documentId,
      documentNo,
      expiryDate,
      const DeepCollectionEquality().hash(_documentList),
      profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPersonalDetailsCopyWith<_$_GetPersonalDetails> get copyWith =>
      __$$_GetPersonalDetailsCopyWithImpl<_$_GetPersonalDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return personalDetails(
        userId,
        dob,
        genderId,
        street,
        cityId,
        stateId,
        latitude,
        longitude,
        zip,
        address,
        socialSecurityNo,
        documentId,
        documentNo,
        expiryDate,
        documentList,
        profilePic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return personalDetails?.call(
        userId,
        dob,
        genderId,
        street,
        cityId,
        stateId,
        latitude,
        longitude,
        zip,
        address,
        socialSecurityNo,
        documentId,
        documentNo,
        expiryDate,
        documentList,
        profilePic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (personalDetails != null) {
      return personalDetails(
          userId,
          dob,
          genderId,
          street,
          cityId,
          stateId,
          latitude,
          longitude,
          zip,
          address,
          socialSecurityNo,
          documentId,
          documentNo,
          expiryDate,
          documentList,
          profilePic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return personalDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return personalDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (personalDetails != null) {
      return personalDetails(this);
    }
    return orElse();
  }
}

abstract class _GetPersonalDetails implements OnboardingEvent {
  const factory _GetPersonalDetails(
      {required final String userId,
      required final String dob,
      required final int genderId,
      required final String street,
      required final String cityId,
      required final String stateId,
      required final double latitude,
      required final double longitude,
      required final String zip,
      required final String address,
      required final String socialSecurityNo,
      required final String documentId,
      required final String documentNo,
      required final String expiryDate,
      required final List<String> documentList,
      required final String profilePic}) = _$_GetPersonalDetails;

  String get userId;
  String get dob;
  int get genderId;
  String get street;
  String get cityId;
  String get stateId;
  double get latitude;
  double get longitude;
  String get zip;
  String get address;
  String get socialSecurityNo;
  String get documentId;
  String get documentNo;
  String get expiryDate;
  List<String> get documentList;
  String get profilePic;
  @JsonKey(ignore: true)
  _$$_GetPersonalDetailsCopyWith<_$_GetPersonalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetQualificationDetailsCopyWith<$Res> {
  factory _$$_GetQualificationDetailsCopyWith(_$_GetQualificationDetails value,
          $Res Function(_$_GetQualificationDetails) then) =
      __$$_GetQualificationDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      bool haveHhaRegistration,
      HhaDetails hhaDetails,
      bool haveBlsCertificate,
      BlsOrFirstAidCertificateDetails blsDetails,
      bool haveTbTest,
      TbOrPpdTestDetails tbDetails,
      bool haveCovidVaccination,
      CovidVaccinationDetails covidDetails});
}

/// @nodoc
class __$$_GetQualificationDetailsCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_GetQualificationDetails>
    implements _$$_GetQualificationDetailsCopyWith<$Res> {
  __$$_GetQualificationDetailsCopyWithImpl(_$_GetQualificationDetails _value,
      $Res Function(_$_GetQualificationDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? haveHhaRegistration = null,
    Object? hhaDetails = null,
    Object? haveBlsCertificate = null,
    Object? blsDetails = null,
    Object? haveTbTest = null,
    Object? tbDetails = null,
    Object? haveCovidVaccination = null,
    Object? covidDetails = null,
  }) {
    return _then(_$_GetQualificationDetails(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      haveHhaRegistration: null == haveHhaRegistration
          ? _value.haveHhaRegistration
          : haveHhaRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
      hhaDetails: null == hhaDetails
          ? _value.hhaDetails
          : hhaDetails // ignore: cast_nullable_to_non_nullable
              as HhaDetails,
      haveBlsCertificate: null == haveBlsCertificate
          ? _value.haveBlsCertificate
          : haveBlsCertificate // ignore: cast_nullable_to_non_nullable
              as bool,
      blsDetails: null == blsDetails
          ? _value.blsDetails
          : blsDetails // ignore: cast_nullable_to_non_nullable
              as BlsOrFirstAidCertificateDetails,
      haveTbTest: null == haveTbTest
          ? _value.haveTbTest
          : haveTbTest // ignore: cast_nullable_to_non_nullable
              as bool,
      tbDetails: null == tbDetails
          ? _value.tbDetails
          : tbDetails // ignore: cast_nullable_to_non_nullable
              as TbOrPpdTestDetails,
      haveCovidVaccination: null == haveCovidVaccination
          ? _value.haveCovidVaccination
          : haveCovidVaccination // ignore: cast_nullable_to_non_nullable
              as bool,
      covidDetails: null == covidDetails
          ? _value.covidDetails
          : covidDetails // ignore: cast_nullable_to_non_nullable
              as CovidVaccinationDetails,
    ));
  }
}

/// @nodoc

class _$_GetQualificationDetails implements _GetQualificationDetails {
  const _$_GetQualificationDetails(
      {required this.userId,
      required this.haveHhaRegistration,
      required this.hhaDetails,
      required this.haveBlsCertificate,
      required this.blsDetails,
      required this.haveTbTest,
      required this.tbDetails,
      required this.haveCovidVaccination,
      required this.covidDetails});

  @override
  final String userId;
  @override
  final bool haveHhaRegistration;
  @override
  final HhaDetails hhaDetails;
  @override
  final bool haveBlsCertificate;
  @override
  final BlsOrFirstAidCertificateDetails blsDetails;
  @override
  final bool haveTbTest;
  @override
  final TbOrPpdTestDetails tbDetails;
  @override
  final bool haveCovidVaccination;
  @override
  final CovidVaccinationDetails covidDetails;

  @override
  String toString() {
    return 'OnboardingEvent.qualificationDetails(userId: $userId, haveHhaRegistration: $haveHhaRegistration, hhaDetails: $hhaDetails, haveBlsCertificate: $haveBlsCertificate, blsDetails: $blsDetails, haveTbTest: $haveTbTest, tbDetails: $tbDetails, haveCovidVaccination: $haveCovidVaccination, covidDetails: $covidDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetQualificationDetails &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.haveHhaRegistration, haveHhaRegistration) ||
                other.haveHhaRegistration == haveHhaRegistration) &&
            (identical(other.hhaDetails, hhaDetails) ||
                other.hhaDetails == hhaDetails) &&
            (identical(other.haveBlsCertificate, haveBlsCertificate) ||
                other.haveBlsCertificate == haveBlsCertificate) &&
            (identical(other.blsDetails, blsDetails) ||
                other.blsDetails == blsDetails) &&
            (identical(other.haveTbTest, haveTbTest) ||
                other.haveTbTest == haveTbTest) &&
            (identical(other.tbDetails, tbDetails) ||
                other.tbDetails == tbDetails) &&
            (identical(other.haveCovidVaccination, haveCovidVaccination) ||
                other.haveCovidVaccination == haveCovidVaccination) &&
            (identical(other.covidDetails, covidDetails) ||
                other.covidDetails == covidDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      haveHhaRegistration,
      hhaDetails,
      haveBlsCertificate,
      blsDetails,
      haveTbTest,
      tbDetails,
      haveCovidVaccination,
      covidDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetQualificationDetailsCopyWith<_$_GetQualificationDetails>
      get copyWith =>
          __$$_GetQualificationDetailsCopyWithImpl<_$_GetQualificationDetails>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return qualificationDetails(
        userId,
        haveHhaRegistration,
        hhaDetails,
        haveBlsCertificate,
        blsDetails,
        haveTbTest,
        tbDetails,
        haveCovidVaccination,
        covidDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return qualificationDetails?.call(
        userId,
        haveHhaRegistration,
        hhaDetails,
        haveBlsCertificate,
        blsDetails,
        haveTbTest,
        tbDetails,
        haveCovidVaccination,
        covidDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (qualificationDetails != null) {
      return qualificationDetails(
          userId,
          haveHhaRegistration,
          hhaDetails,
          haveBlsCertificate,
          blsDetails,
          haveTbTest,
          tbDetails,
          haveCovidVaccination,
          covidDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return qualificationDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return qualificationDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (qualificationDetails != null) {
      return qualificationDetails(this);
    }
    return orElse();
  }
}

abstract class _GetQualificationDetails implements OnboardingEvent {
  const factory _GetQualificationDetails(
          {required final String userId,
          required final bool haveHhaRegistration,
          required final HhaDetails hhaDetails,
          required final bool haveBlsCertificate,
          required final BlsOrFirstAidCertificateDetails blsDetails,
          required final bool haveTbTest,
          required final TbOrPpdTestDetails tbDetails,
          required final bool haveCovidVaccination,
          required final CovidVaccinationDetails covidDetails}) =
      _$_GetQualificationDetails;

  String get userId;
  bool get haveHhaRegistration;
  HhaDetails get hhaDetails;
  bool get haveBlsCertificate;
  BlsOrFirstAidCertificateDetails get blsDetails;
  bool get haveTbTest;
  TbOrPpdTestDetails get tbDetails;
  bool get haveCovidVaccination;
  CovidVaccinationDetails get covidDetails;
  @JsonKey(ignore: true)
  _$$_GetQualificationDetailsCopyWith<_$_GetQualificationDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitPreferenceDetailsCopyWith<$Res> {
  factory _$$_SubmitPreferenceDetailsCopyWith(_$_SubmitPreferenceDetails value,
          $Res Function(_$_SubmitPreferenceDetails) then) =
      __$$_SubmitPreferenceDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String yearsOfExp,
      bool serveWithSmoker,
      bool willingToTransportation,
      bool willingToServeWithPets,
      List<PetsList> petsList,
      List<String> knownLanguages});
}

/// @nodoc
class __$$_SubmitPreferenceDetailsCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_SubmitPreferenceDetails>
    implements _$$_SubmitPreferenceDetailsCopyWith<$Res> {
  __$$_SubmitPreferenceDetailsCopyWithImpl(_$_SubmitPreferenceDetails _value,
      $Res Function(_$_SubmitPreferenceDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? yearsOfExp = null,
    Object? serveWithSmoker = null,
    Object? willingToTransportation = null,
    Object? willingToServeWithPets = null,
    Object? petsList = null,
    Object? knownLanguages = null,
  }) {
    return _then(_$_SubmitPreferenceDetails(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      yearsOfExp: null == yearsOfExp
          ? _value.yearsOfExp
          : yearsOfExp // ignore: cast_nullable_to_non_nullable
              as String,
      serveWithSmoker: null == serveWithSmoker
          ? _value.serveWithSmoker
          : serveWithSmoker // ignore: cast_nullable_to_non_nullable
              as bool,
      willingToTransportation: null == willingToTransportation
          ? _value.willingToTransportation
          : willingToTransportation // ignore: cast_nullable_to_non_nullable
              as bool,
      willingToServeWithPets: null == willingToServeWithPets
          ? _value.willingToServeWithPets
          : willingToServeWithPets // ignore: cast_nullable_to_non_nullable
              as bool,
      petsList: null == petsList
          ? _value._petsList
          : petsList // ignore: cast_nullable_to_non_nullable
              as List<PetsList>,
      knownLanguages: null == knownLanguages
          ? _value._knownLanguages
          : knownLanguages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SubmitPreferenceDetails implements _SubmitPreferenceDetails {
  const _$_SubmitPreferenceDetails(
      {required this.userId,
      required this.yearsOfExp,
      required this.serveWithSmoker,
      required this.willingToTransportation,
      required this.willingToServeWithPets,
      required final List<PetsList> petsList,
      required final List<String> knownLanguages})
      : _petsList = petsList,
        _knownLanguages = knownLanguages;

  @override
  final String userId;
  @override
  final String yearsOfExp;
  @override
  final bool serveWithSmoker;
  @override
  final bool willingToTransportation;
  @override
  final bool willingToServeWithPets;
  final List<PetsList> _petsList;
  @override
  List<PetsList> get petsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_petsList);
  }

  final List<String> _knownLanguages;
  @override
  List<String> get knownLanguages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_knownLanguages);
  }

  @override
  String toString() {
    return 'OnboardingEvent.preferenceDetails(userId: $userId, yearsOfExp: $yearsOfExp, serveWithSmoker: $serveWithSmoker, willingToTransportation: $willingToTransportation, willingToServeWithPets: $willingToServeWithPets, petsList: $petsList, knownLanguages: $knownLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitPreferenceDetails &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.yearsOfExp, yearsOfExp) ||
                other.yearsOfExp == yearsOfExp) &&
            (identical(other.serveWithSmoker, serveWithSmoker) ||
                other.serveWithSmoker == serveWithSmoker) &&
            (identical(
                    other.willingToTransportation, willingToTransportation) ||
                other.willingToTransportation == willingToTransportation) &&
            (identical(other.willingToServeWithPets, willingToServeWithPets) ||
                other.willingToServeWithPets == willingToServeWithPets) &&
            const DeepCollectionEquality().equals(other._petsList, _petsList) &&
            const DeepCollectionEquality()
                .equals(other._knownLanguages, _knownLanguages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      yearsOfExp,
      serveWithSmoker,
      willingToTransportation,
      willingToServeWithPets,
      const DeepCollectionEquality().hash(_petsList),
      const DeepCollectionEquality().hash(_knownLanguages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitPreferenceDetailsCopyWith<_$_SubmitPreferenceDetails>
      get copyWith =>
          __$$_SubmitPreferenceDetailsCopyWithImpl<_$_SubmitPreferenceDetails>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return preferenceDetails(
        userId,
        yearsOfExp,
        serveWithSmoker,
        willingToTransportation,
        willingToServeWithPets,
        this.petsList,
        knownLanguages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return preferenceDetails?.call(
        userId,
        yearsOfExp,
        serveWithSmoker,
        willingToTransportation,
        willingToServeWithPets,
        this.petsList,
        knownLanguages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (preferenceDetails != null) {
      return preferenceDetails(
          userId,
          yearsOfExp,
          serveWithSmoker,
          willingToTransportation,
          willingToServeWithPets,
          this.petsList,
          knownLanguages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return preferenceDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return preferenceDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (preferenceDetails != null) {
      return preferenceDetails(this);
    }
    return orElse();
  }
}

abstract class _SubmitPreferenceDetails implements OnboardingEvent {
  const factory _SubmitPreferenceDetails(
      {required final String userId,
      required final String yearsOfExp,
      required final bool serveWithSmoker,
      required final bool willingToTransportation,
      required final bool willingToServeWithPets,
      required final List<PetsList> petsList,
      required final List<String> knownLanguages}) = _$_SubmitPreferenceDetails;

  String get userId;
  String get yearsOfExp;
  bool get serveWithSmoker;
  bool get willingToTransportation;
  bool get willingToServeWithPets;
  List<PetsList> get petsList;
  List<String> get knownLanguages;
  @JsonKey(ignore: true)
  _$$_SubmitPreferenceDetailsCopyWith<_$_SubmitPreferenceDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CommonDataListsCopyWith<$Res> {
  factory _$$_CommonDataListsCopyWith(
          _$_CommonDataLists value, $Res Function(_$_CommonDataLists) then) =
      __$$_CommonDataListsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CommonDataListsCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_CommonDataLists>
    implements _$$_CommonDataListsCopyWith<$Res> {
  __$$_CommonDataListsCopyWithImpl(
      _$_CommonDataLists _value, $Res Function(_$_CommonDataLists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CommonDataLists implements _CommonDataLists {
  const _$_CommonDataLists();

  @override
  String toString() {
    return 'OnboardingEvent.commonData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CommonDataLists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return commonData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return commonData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (commonData != null) {
      return commonData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return commonData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return commonData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (commonData != null) {
      return commonData(this);
    }
    return orElse();
  }
}

abstract class _CommonDataLists implements OnboardingEvent {
  const factory _CommonDataLists() = _$_CommonDataLists;
}

/// @nodoc
abstract class _$$_CityListsCopyWith<$Res> {
  factory _$$_CityListsCopyWith(
          _$_CityLists value, $Res Function(_$_CityLists) then) =
      __$$_CityListsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CityListsCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_CityLists>
    implements _$$_CityListsCopyWith<$Res> {
  __$$_CityListsCopyWithImpl(
      _$_CityLists _value, $Res Function(_$_CityLists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CityLists implements _CityLists {
  const _$_CityLists();

  @override
  String toString() {
    return 'OnboardingEvent.cityList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CityLists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return cityList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return cityList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (cityList != null) {
      return cityList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return cityList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return cityList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (cityList != null) {
      return cityList(this);
    }
    return orElse();
  }
}

abstract class _CityLists implements OnboardingEvent {
  const factory _CityLists() = _$_CityLists;
}

/// @nodoc
abstract class _$$_StateListsCopyWith<$Res> {
  factory _$$_StateListsCopyWith(
          _$_StateLists value, $Res Function(_$_StateLists) then) =
      __$$_StateListsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateListsCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_StateLists>
    implements _$$_StateListsCopyWith<$Res> {
  __$$_StateListsCopyWithImpl(
      _$_StateLists _value, $Res Function(_$_StateLists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateLists implements _StateLists {
  const _$_StateLists();

  @override
  String toString() {
    return 'OnboardingEvent.stateList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateLists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return stateList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return stateList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (stateList != null) {
      return stateList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return stateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return stateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (stateList != null) {
      return stateList(this);
    }
    return orElse();
  }
}

abstract class _StateLists implements OnboardingEvent {
  const factory _StateLists() = _$_StateLists;
}

/// @nodoc
abstract class _$$_YearsOfExpCopyWith<$Res> {
  factory _$$_YearsOfExpCopyWith(
          _$_YearsOfExp value, $Res Function(_$_YearsOfExp) then) =
      __$$_YearsOfExpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_YearsOfExpCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_YearsOfExp>
    implements _$$_YearsOfExpCopyWith<$Res> {
  __$$_YearsOfExpCopyWithImpl(
      _$_YearsOfExp _value, $Res Function(_$_YearsOfExp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_YearsOfExp implements _YearsOfExp {
  const _$_YearsOfExp();

  @override
  String toString() {
    return 'OnboardingEvent.yearsOfExpList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_YearsOfExp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return yearsOfExpList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return yearsOfExpList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (yearsOfExpList != null) {
      return yearsOfExpList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return yearsOfExpList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return yearsOfExpList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (yearsOfExpList != null) {
      return yearsOfExpList(this);
    }
    return orElse();
  }
}

abstract class _YearsOfExp implements OnboardingEvent {
  const factory _YearsOfExp() = _$_YearsOfExp;
}

/// @nodoc
abstract class _$$_GetPetListCopyWith<$Res> {
  factory _$$_GetPetListCopyWith(
          _$_GetPetList value, $Res Function(_$_GetPetList) then) =
      __$$_GetPetListCopyWithImpl<$Res>;
  @useResult
  $Res call({String petSearchKey});
}

/// @nodoc
class __$$_GetPetListCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_GetPetList>
    implements _$$_GetPetListCopyWith<$Res> {
  __$$_GetPetListCopyWithImpl(
      _$_GetPetList _value, $Res Function(_$_GetPetList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petSearchKey = null,
  }) {
    return _then(_$_GetPetList(
      null == petSearchKey
          ? _value.petSearchKey
          : petSearchKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPetList implements _GetPetList {
  const _$_GetPetList(this.petSearchKey);

  @override
  final String petSearchKey;

  @override
  String toString() {
    return 'OnboardingEvent.petsList(petSearchKey: $petSearchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPetList &&
            (identical(other.petSearchKey, petSearchKey) ||
                other.petSearchKey == petSearchKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petSearchKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPetListCopyWith<_$_GetPetList> get copyWith =>
      __$$_GetPetListCopyWithImpl<_$_GetPetList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return petsList(petSearchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return petsList?.call(petSearchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (petsList != null) {
      return petsList(petSearchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return petsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return petsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (petsList != null) {
      return petsList(this);
    }
    return orElse();
  }
}

abstract class _GetPetList implements OnboardingEvent {
  const factory _GetPetList(final String petSearchKey) = _$_GetPetList;

  String get petSearchKey;
  @JsonKey(ignore: true)
  _$$_GetPetListCopyWith<_$_GetPetList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetLanguageListCopyWith<$Res> {
  factory _$$_GetLanguageListCopyWith(
          _$_GetLanguageList value, $Res Function(_$_GetLanguageList) then) =
      __$$_GetLanguageListCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String languageSearchKey, List<PreferenceLanguageModel> languageList});
}

/// @nodoc
class __$$_GetLanguageListCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_GetLanguageList>
    implements _$$_GetLanguageListCopyWith<$Res> {
  __$$_GetLanguageListCopyWithImpl(
      _$_GetLanguageList _value, $Res Function(_$_GetLanguageList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageSearchKey = null,
    Object? languageList = null,
  }) {
    return _then(_$_GetLanguageList(
      null == languageSearchKey
          ? _value.languageSearchKey
          : languageSearchKey // ignore: cast_nullable_to_non_nullable
              as String,
      null == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<PreferenceLanguageModel>,
    ));
  }
}

/// @nodoc

class _$_GetLanguageList implements _GetLanguageList {
  const _$_GetLanguageList(
      this.languageSearchKey, final List<PreferenceLanguageModel> languageList)
      : _languageList = languageList;

  @override
  final String languageSearchKey;
  final List<PreferenceLanguageModel> _languageList;
  @override
  List<PreferenceLanguageModel> get languageList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageList);
  }

  @override
  String toString() {
    return 'OnboardingEvent.languageList(languageSearchKey: $languageSearchKey, languageList: $languageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLanguageList &&
            (identical(other.languageSearchKey, languageSearchKey) ||
                other.languageSearchKey == languageSearchKey) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageSearchKey,
      const DeepCollectionEquality().hash(_languageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLanguageListCopyWith<_$_GetLanguageList> get copyWith =>
      __$$_GetLanguageListCopyWithImpl<_$_GetLanguageList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return languageList(languageSearchKey, this.languageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return languageList?.call(languageSearchKey, this.languageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (languageList != null) {
      return languageList(languageSearchKey, this.languageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return languageList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return languageList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (languageList != null) {
      return languageList(this);
    }
    return orElse();
  }
}

abstract class _GetLanguageList implements OnboardingEvent {
  const factory _GetLanguageList(final String languageSearchKey,
      final List<PreferenceLanguageModel> languageList) = _$_GetLanguageList;

  String get languageSearchKey;
  List<PreferenceLanguageModel> get languageList;
  @JsonKey(ignore: true)
  _$$_GetLanguageListCopyWith<_$_GetLanguageList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioHHASelectedCopyWith<$Res> {
  factory _$$_RadioHHASelectedCopyWith(
          _$_RadioHHASelected value, $Res Function(_$_RadioHHASelected) then) =
      __$$_RadioHHASelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioHHASelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioHHASelected>
    implements _$$_RadioHHASelectedCopyWith<$Res> {
  __$$_RadioHHASelectedCopyWithImpl(
      _$_RadioHHASelected _value, $Res Function(_$_RadioHHASelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioHHASelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioHHASelected implements _RadioHHASelected {
  const _$_RadioHHASelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioHHA(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioHHASelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioHHASelectedCopyWith<_$_RadioHHASelected> get copyWith =>
      __$$_RadioHHASelectedCopyWithImpl<_$_RadioHHASelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioHHA(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioHHA?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioHHA != null) {
      return radioHHA(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioHHA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioHHA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioHHA != null) {
      return radioHHA(this);
    }
    return orElse();
  }
}

abstract class _RadioHHASelected implements OnboardingEvent {
  const factory _RadioHHASelected(final int isSelected) = _$_RadioHHASelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioHHASelectedCopyWith<_$_RadioHHASelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioBLSSelectedCopyWith<$Res> {
  factory _$$_RadioBLSSelectedCopyWith(
          _$_RadioBLSSelected value, $Res Function(_$_RadioBLSSelected) then) =
      __$$_RadioBLSSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioBLSSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioBLSSelected>
    implements _$$_RadioBLSSelectedCopyWith<$Res> {
  __$$_RadioBLSSelectedCopyWithImpl(
      _$_RadioBLSSelected _value, $Res Function(_$_RadioBLSSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioBLSSelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioBLSSelected implements _RadioBLSSelected {
  const _$_RadioBLSSelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioBLS(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioBLSSelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioBLSSelectedCopyWith<_$_RadioBLSSelected> get copyWith =>
      __$$_RadioBLSSelectedCopyWithImpl<_$_RadioBLSSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioBLS(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioBLS?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioBLS != null) {
      return radioBLS(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioBLS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioBLS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioBLS != null) {
      return radioBLS(this);
    }
    return orElse();
  }
}

abstract class _RadioBLSSelected implements OnboardingEvent {
  const factory _RadioBLSSelected(final int isSelected) = _$_RadioBLSSelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioBLSSelectedCopyWith<_$_RadioBLSSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioTBSelectedCopyWith<$Res> {
  factory _$$_RadioTBSelectedCopyWith(
          _$_RadioTBSelected value, $Res Function(_$_RadioTBSelected) then) =
      __$$_RadioTBSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioTBSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioTBSelected>
    implements _$$_RadioTBSelectedCopyWith<$Res> {
  __$$_RadioTBSelectedCopyWithImpl(
      _$_RadioTBSelected _value, $Res Function(_$_RadioTBSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioTBSelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioTBSelected implements _RadioTBSelected {
  const _$_RadioTBSelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioTB(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioTBSelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioTBSelectedCopyWith<_$_RadioTBSelected> get copyWith =>
      __$$_RadioTBSelectedCopyWithImpl<_$_RadioTBSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioTB(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioTB?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioTB != null) {
      return radioTB(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioTB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioTB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioTB != null) {
      return radioTB(this);
    }
    return orElse();
  }
}

abstract class _RadioTBSelected implements OnboardingEvent {
  const factory _RadioTBSelected(final int isSelected) = _$_RadioTBSelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioTBSelectedCopyWith<_$_RadioTBSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioCovidSelectedCopyWith<$Res> {
  factory _$$_RadioCovidSelectedCopyWith(_$_RadioCovidSelected value,
          $Res Function(_$_RadioCovidSelected) then) =
      __$$_RadioCovidSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioCovidSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioCovidSelected>
    implements _$$_RadioCovidSelectedCopyWith<$Res> {
  __$$_RadioCovidSelectedCopyWithImpl(
      _$_RadioCovidSelected _value, $Res Function(_$_RadioCovidSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioCovidSelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioCovidSelected implements _RadioCovidSelected {
  const _$_RadioCovidSelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioCovid(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioCovidSelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioCovidSelectedCopyWith<_$_RadioCovidSelected> get copyWith =>
      __$$_RadioCovidSelectedCopyWithImpl<_$_RadioCovidSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioCovid(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioCovid?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioCovid != null) {
      return radioCovid(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioCovid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioCovid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioCovid != null) {
      return radioCovid(this);
    }
    return orElse();
  }
}

abstract class _RadioCovidSelected implements OnboardingEvent {
  const factory _RadioCovidSelected(final int isSelected) =
      _$_RadioCovidSelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioCovidSelectedCopyWith<_$_RadioCovidSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioExperienceSelectedCopyWith<$Res> {
  factory _$$_RadioExperienceSelectedCopyWith(_$_RadioExperienceSelected value,
          $Res Function(_$_RadioExperienceSelected) then) =
      __$$_RadioExperienceSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioExperienceSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioExperienceSelected>
    implements _$$_RadioExperienceSelectedCopyWith<$Res> {
  __$$_RadioExperienceSelectedCopyWithImpl(_$_RadioExperienceSelected _value,
      $Res Function(_$_RadioExperienceSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioExperienceSelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioExperienceSelected implements _RadioExperienceSelected {
  const _$_RadioExperienceSelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioExperience(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioExperienceSelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioExperienceSelectedCopyWith<_$_RadioExperienceSelected>
      get copyWith =>
          __$$_RadioExperienceSelectedCopyWithImpl<_$_RadioExperienceSelected>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioExperience(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioExperience?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioExperience != null) {
      return radioExperience(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioExperience?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioExperience != null) {
      return radioExperience(this);
    }
    return orElse();
  }
}

abstract class _RadioExperienceSelected implements OnboardingEvent {
  const factory _RadioExperienceSelected(final int isSelected) =
      _$_RadioExperienceSelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioExperienceSelectedCopyWith<_$_RadioExperienceSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioSmokerSelectedCopyWith<$Res> {
  factory _$$_RadioSmokerSelectedCopyWith(_$_RadioSmokerSelected value,
          $Res Function(_$_RadioSmokerSelected) then) =
      __$$_RadioSmokerSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioSmokerSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioSmokerSelected>
    implements _$$_RadioSmokerSelectedCopyWith<$Res> {
  __$$_RadioSmokerSelectedCopyWithImpl(_$_RadioSmokerSelected _value,
      $Res Function(_$_RadioSmokerSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioSmokerSelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioSmokerSelected implements _RadioSmokerSelected {
  const _$_RadioSmokerSelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioSmoker(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioSmokerSelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioSmokerSelectedCopyWith<_$_RadioSmokerSelected> get copyWith =>
      __$$_RadioSmokerSelectedCopyWithImpl<_$_RadioSmokerSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioSmoker(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioSmoker?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioSmoker != null) {
      return radioSmoker(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioSmoker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioSmoker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioSmoker != null) {
      return radioSmoker(this);
    }
    return orElse();
  }
}

abstract class _RadioSmokerSelected implements OnboardingEvent {
  const factory _RadioSmokerSelected(final int isSelected) =
      _$_RadioSmokerSelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioSmokerSelectedCopyWith<_$_RadioSmokerSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioTransportationSelectedCopyWith<$Res> {
  factory _$$_RadioTransportationSelectedCopyWith(
          _$_RadioTransportationSelected value,
          $Res Function(_$_RadioTransportationSelected) then) =
      __$$_RadioTransportationSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioTransportationSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioTransportationSelected>
    implements _$$_RadioTransportationSelectedCopyWith<$Res> {
  __$$_RadioTransportationSelectedCopyWithImpl(
      _$_RadioTransportationSelected _value,
      $Res Function(_$_RadioTransportationSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioTransportationSelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioTransportationSelected implements _RadioTransportationSelected {
  const _$_RadioTransportationSelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioTransportation(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioTransportationSelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioTransportationSelectedCopyWith<_$_RadioTransportationSelected>
      get copyWith => __$$_RadioTransportationSelectedCopyWithImpl<
          _$_RadioTransportationSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioTransportation(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioTransportation?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioTransportation != null) {
      return radioTransportation(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioTransportation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioTransportation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioTransportation != null) {
      return radioTransportation(this);
    }
    return orElse();
  }
}

abstract class _RadioTransportationSelected implements OnboardingEvent {
  const factory _RadioTransportationSelected(final int isSelected) =
      _$_RadioTransportationSelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioTransportationSelectedCopyWith<_$_RadioTransportationSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioPetSelectedCopyWith<$Res> {
  factory _$$_RadioPetSelectedCopyWith(
          _$_RadioPetSelected value, $Res Function(_$_RadioPetSelected) then) =
      __$$_RadioPetSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioPetSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioPetSelected>
    implements _$$_RadioPetSelectedCopyWith<$Res> {
  __$$_RadioPetSelectedCopyWithImpl(
      _$_RadioPetSelected _value, $Res Function(_$_RadioPetSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioPetSelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioPetSelected implements _RadioPetSelected {
  const _$_RadioPetSelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioPet(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioPetSelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioPetSelectedCopyWith<_$_RadioPetSelected> get copyWith =>
      __$$_RadioPetSelectedCopyWithImpl<_$_RadioPetSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioPet(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioPet?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioPet != null) {
      return radioPet(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioPet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioPet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioPet != null) {
      return radioPet(this);
    }
    return orElse();
  }
}

abstract class _RadioPetSelected implements OnboardingEvent {
  const factory _RadioPetSelected(final int isSelected) = _$_RadioPetSelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioPetSelectedCopyWith<_$_RadioPetSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioLanguageSelectedCopyWith<$Res> {
  factory _$$_RadioLanguageSelectedCopyWith(_$_RadioLanguageSelected value,
          $Res Function(_$_RadioLanguageSelected) then) =
      __$$_RadioLanguageSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioLanguageSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_RadioLanguageSelected>
    implements _$$_RadioLanguageSelectedCopyWith<$Res> {
  __$$_RadioLanguageSelectedCopyWithImpl(_$_RadioLanguageSelected _value,
      $Res Function(_$_RadioLanguageSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioLanguageSelected(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioLanguageSelected implements _RadioLanguageSelected {
  const _$_RadioLanguageSelected(this.isSelected);

  @override
  final int isSelected;

  @override
  String toString() {
    return 'OnboardingEvent.radioLanguage(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioLanguageSelected &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioLanguageSelectedCopyWith<_$_RadioLanguageSelected> get copyWith =>
      __$$_RadioLanguageSelectedCopyWithImpl<_$_RadioLanguageSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return radioLanguage(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return radioLanguage?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (radioLanguage != null) {
      return radioLanguage(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return radioLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return radioLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (radioLanguage != null) {
      return radioLanguage(this);
    }
    return orElse();
  }
}

abstract class _RadioLanguageSelected implements OnboardingEvent {
  const factory _RadioLanguageSelected(final int isSelected) =
      _$_RadioLanguageSelected;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioLanguageSelectedCopyWith<_$_RadioLanguageSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfilePicSelectedCopyWith<$Res> {
  factory _$$_ProfilePicSelectedCopyWith(_$_ProfilePicSelected value,
          $Res Function(_$_ProfilePicSelected) then) =
      __$$_ProfilePicSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$$_ProfilePicSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_ProfilePicSelected>
    implements _$$_ProfilePicSelectedCopyWith<$Res> {
  __$$_ProfilePicSelectedCopyWithImpl(
      _$_ProfilePicSelected _value, $Res Function(_$_ProfilePicSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_$_ProfilePicSelected(
      null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_ProfilePicSelected implements _ProfilePicSelected {
  const _$_ProfilePicSelected(this.bytes);

  @override
  final Uint8List bytes;

  @override
  String toString() {
    return 'OnboardingEvent.profilePicSelection(bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePicSelected &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePicSelectedCopyWith<_$_ProfilePicSelected> get copyWith =>
      __$$_ProfilePicSelectedCopyWithImpl<_$_ProfilePicSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return profilePicSelection(bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return profilePicSelection?.call(bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (profilePicSelection != null) {
      return profilePicSelection(bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return profilePicSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return profilePicSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (profilePicSelection != null) {
      return profilePicSelection(this);
    }
    return orElse();
  }
}

abstract class _ProfilePicSelected implements OnboardingEvent {
  const factory _ProfilePicSelected(final Uint8List bytes) =
      _$_ProfilePicSelected;

  Uint8List get bytes;
  @JsonKey(ignore: true)
  _$$_ProfilePicSelectedCopyWith<_$_ProfilePicSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SecurityDocumentUploadSelectedCopyWith<$Res> {
  factory _$$_SecurityDocumentUploadSelectedCopyWith(
          _$_SecurityDocumentUploadSelected value,
          $Res Function(_$_SecurityDocumentUploadSelected) then) =
      __$$_SecurityDocumentUploadSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlatformFile> bytesList, bool listUpdated});
}

/// @nodoc
class __$$_SecurityDocumentUploadSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res,
        _$_SecurityDocumentUploadSelected>
    implements _$$_SecurityDocumentUploadSelectedCopyWith<$Res> {
  __$$_SecurityDocumentUploadSelectedCopyWithImpl(
      _$_SecurityDocumentUploadSelected _value,
      $Res Function(_$_SecurityDocumentUploadSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytesList = null,
    Object? listUpdated = null,
  }) {
    return _then(_$_SecurityDocumentUploadSelected(
      null == bytesList
          ? _value._bytesList
          : bytesList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      null == listUpdated
          ? _value.listUpdated
          : listUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SecurityDocumentUploadSelected
    implements _SecurityDocumentUploadSelected {
  const _$_SecurityDocumentUploadSelected(
      final List<PlatformFile> bytesList, this.listUpdated)
      : _bytesList = bytesList;

  final List<PlatformFile> _bytesList;
  @override
  List<PlatformFile> get bytesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytesList);
  }

  @override
  final bool listUpdated;

  @override
  String toString() {
    return 'OnboardingEvent.securityDocumentUpload(bytesList: $bytesList, listUpdated: $listUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityDocumentUploadSelected &&
            const DeepCollectionEquality()
                .equals(other._bytesList, _bytesList) &&
            (identical(other.listUpdated, listUpdated) ||
                other.listUpdated == listUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bytesList), listUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecurityDocumentUploadSelectedCopyWith<_$_SecurityDocumentUploadSelected>
      get copyWith => __$$_SecurityDocumentUploadSelectedCopyWithImpl<
          _$_SecurityDocumentUploadSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return securityDocumentUpload(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return securityDocumentUpload?.call(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (securityDocumentUpload != null) {
      return securityDocumentUpload(bytesList, listUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return securityDocumentUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return securityDocumentUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (securityDocumentUpload != null) {
      return securityDocumentUpload(this);
    }
    return orElse();
  }
}

abstract class _SecurityDocumentUploadSelected implements OnboardingEvent {
  const factory _SecurityDocumentUploadSelected(
          final List<PlatformFile> bytesList, final bool listUpdated) =
      _$_SecurityDocumentUploadSelected;

  List<PlatformFile> get bytesList;
  bool get listUpdated;
  @JsonKey(ignore: true)
  _$$_SecurityDocumentUploadSelectedCopyWith<_$_SecurityDocumentUploadSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HHADocumentUploadSelectedCopyWith<$Res> {
  factory _$$_HHADocumentUploadSelectedCopyWith(
          _$_HHADocumentUploadSelected value,
          $Res Function(_$_HHADocumentUploadSelected) then) =
      __$$_HHADocumentUploadSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlatformFile> bytesList, bool listUpdated});
}

/// @nodoc
class __$$_HHADocumentUploadSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_HHADocumentUploadSelected>
    implements _$$_HHADocumentUploadSelectedCopyWith<$Res> {
  __$$_HHADocumentUploadSelectedCopyWithImpl(
      _$_HHADocumentUploadSelected _value,
      $Res Function(_$_HHADocumentUploadSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytesList = null,
    Object? listUpdated = null,
  }) {
    return _then(_$_HHADocumentUploadSelected(
      null == bytesList
          ? _value._bytesList
          : bytesList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      null == listUpdated
          ? _value.listUpdated
          : listUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HHADocumentUploadSelected implements _HHADocumentUploadSelected {
  const _$_HHADocumentUploadSelected(
      final List<PlatformFile> bytesList, this.listUpdated)
      : _bytesList = bytesList;

  final List<PlatformFile> _bytesList;
  @override
  List<PlatformFile> get bytesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytesList);
  }

  @override
  final bool listUpdated;

  @override
  String toString() {
    return 'OnboardingEvent.hhaDocumentUpload(bytesList: $bytesList, listUpdated: $listUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HHADocumentUploadSelected &&
            const DeepCollectionEquality()
                .equals(other._bytesList, _bytesList) &&
            (identical(other.listUpdated, listUpdated) ||
                other.listUpdated == listUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bytesList), listUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HHADocumentUploadSelectedCopyWith<_$_HHADocumentUploadSelected>
      get copyWith => __$$_HHADocumentUploadSelectedCopyWithImpl<
          _$_HHADocumentUploadSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return hhaDocumentUpload(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return hhaDocumentUpload?.call(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (hhaDocumentUpload != null) {
      return hhaDocumentUpload(bytesList, listUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return hhaDocumentUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return hhaDocumentUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (hhaDocumentUpload != null) {
      return hhaDocumentUpload(this);
    }
    return orElse();
  }
}

abstract class _HHADocumentUploadSelected implements OnboardingEvent {
  const factory _HHADocumentUploadSelected(
          final List<PlatformFile> bytesList, final bool listUpdated) =
      _$_HHADocumentUploadSelected;

  List<PlatformFile> get bytesList;
  bool get listUpdated;
  @JsonKey(ignore: true)
  _$$_HHADocumentUploadSelectedCopyWith<_$_HHADocumentUploadSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BLSDocumentUploadSelectedCopyWith<$Res> {
  factory _$$_BLSDocumentUploadSelectedCopyWith(
          _$_BLSDocumentUploadSelected value,
          $Res Function(_$_BLSDocumentUploadSelected) then) =
      __$$_BLSDocumentUploadSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlatformFile> bytesList, bool listUpdated});
}

/// @nodoc
class __$$_BLSDocumentUploadSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_BLSDocumentUploadSelected>
    implements _$$_BLSDocumentUploadSelectedCopyWith<$Res> {
  __$$_BLSDocumentUploadSelectedCopyWithImpl(
      _$_BLSDocumentUploadSelected _value,
      $Res Function(_$_BLSDocumentUploadSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytesList = null,
    Object? listUpdated = null,
  }) {
    return _then(_$_BLSDocumentUploadSelected(
      null == bytesList
          ? _value._bytesList
          : bytesList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      null == listUpdated
          ? _value.listUpdated
          : listUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BLSDocumentUploadSelected implements _BLSDocumentUploadSelected {
  const _$_BLSDocumentUploadSelected(
      final List<PlatformFile> bytesList, this.listUpdated)
      : _bytesList = bytesList;

  final List<PlatformFile> _bytesList;
  @override
  List<PlatformFile> get bytesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytesList);
  }

  @override
  final bool listUpdated;

  @override
  String toString() {
    return 'OnboardingEvent.blsDocumentUpload(bytesList: $bytesList, listUpdated: $listUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BLSDocumentUploadSelected &&
            const DeepCollectionEquality()
                .equals(other._bytesList, _bytesList) &&
            (identical(other.listUpdated, listUpdated) ||
                other.listUpdated == listUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bytesList), listUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BLSDocumentUploadSelectedCopyWith<_$_BLSDocumentUploadSelected>
      get copyWith => __$$_BLSDocumentUploadSelectedCopyWithImpl<
          _$_BLSDocumentUploadSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return blsDocumentUpload(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return blsDocumentUpload?.call(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (blsDocumentUpload != null) {
      return blsDocumentUpload(bytesList, listUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return blsDocumentUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return blsDocumentUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (blsDocumentUpload != null) {
      return blsDocumentUpload(this);
    }
    return orElse();
  }
}

abstract class _BLSDocumentUploadSelected implements OnboardingEvent {
  const factory _BLSDocumentUploadSelected(
          final List<PlatformFile> bytesList, final bool listUpdated) =
      _$_BLSDocumentUploadSelected;

  List<PlatformFile> get bytesList;
  bool get listUpdated;
  @JsonKey(ignore: true)
  _$$_BLSDocumentUploadSelectedCopyWith<_$_BLSDocumentUploadSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TBDocumentUploadSelectedCopyWith<$Res> {
  factory _$$_TBDocumentUploadSelectedCopyWith(
          _$_TBDocumentUploadSelected value,
          $Res Function(_$_TBDocumentUploadSelected) then) =
      __$$_TBDocumentUploadSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlatformFile> bytesList, bool listUpdated});
}

/// @nodoc
class __$$_TBDocumentUploadSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_TBDocumentUploadSelected>
    implements _$$_TBDocumentUploadSelectedCopyWith<$Res> {
  __$$_TBDocumentUploadSelectedCopyWithImpl(_$_TBDocumentUploadSelected _value,
      $Res Function(_$_TBDocumentUploadSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytesList = null,
    Object? listUpdated = null,
  }) {
    return _then(_$_TBDocumentUploadSelected(
      null == bytesList
          ? _value._bytesList
          : bytesList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      null == listUpdated
          ? _value.listUpdated
          : listUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TBDocumentUploadSelected implements _TBDocumentUploadSelected {
  const _$_TBDocumentUploadSelected(
      final List<PlatformFile> bytesList, this.listUpdated)
      : _bytesList = bytesList;

  final List<PlatformFile> _bytesList;
  @override
  List<PlatformFile> get bytesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytesList);
  }

  @override
  final bool listUpdated;

  @override
  String toString() {
    return 'OnboardingEvent.tbDocumentUpload(bytesList: $bytesList, listUpdated: $listUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TBDocumentUploadSelected &&
            const DeepCollectionEquality()
                .equals(other._bytesList, _bytesList) &&
            (identical(other.listUpdated, listUpdated) ||
                other.listUpdated == listUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bytesList), listUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TBDocumentUploadSelectedCopyWith<_$_TBDocumentUploadSelected>
      get copyWith => __$$_TBDocumentUploadSelectedCopyWithImpl<
          _$_TBDocumentUploadSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return tbDocumentUpload(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return tbDocumentUpload?.call(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (tbDocumentUpload != null) {
      return tbDocumentUpload(bytesList, listUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return tbDocumentUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return tbDocumentUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (tbDocumentUpload != null) {
      return tbDocumentUpload(this);
    }
    return orElse();
  }
}

abstract class _TBDocumentUploadSelected implements OnboardingEvent {
  const factory _TBDocumentUploadSelected(
          final List<PlatformFile> bytesList, final bool listUpdated) =
      _$_TBDocumentUploadSelected;

  List<PlatformFile> get bytesList;
  bool get listUpdated;
  @JsonKey(ignore: true)
  _$$_TBDocumentUploadSelectedCopyWith<_$_TBDocumentUploadSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CovidDocumentUploadSelectedCopyWith<$Res> {
  factory _$$_CovidDocumentUploadSelectedCopyWith(
          _$_CovidDocumentUploadSelected value,
          $Res Function(_$_CovidDocumentUploadSelected) then) =
      __$$_CovidDocumentUploadSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlatformFile> bytesList, bool listUpdated});
}

/// @nodoc
class __$$_CovidDocumentUploadSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_CovidDocumentUploadSelected>
    implements _$$_CovidDocumentUploadSelectedCopyWith<$Res> {
  __$$_CovidDocumentUploadSelectedCopyWithImpl(
      _$_CovidDocumentUploadSelected _value,
      $Res Function(_$_CovidDocumentUploadSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytesList = null,
    Object? listUpdated = null,
  }) {
    return _then(_$_CovidDocumentUploadSelected(
      null == bytesList
          ? _value._bytesList
          : bytesList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      null == listUpdated
          ? _value.listUpdated
          : listUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CovidDocumentUploadSelected implements _CovidDocumentUploadSelected {
  const _$_CovidDocumentUploadSelected(
      final List<PlatformFile> bytesList, this.listUpdated)
      : _bytesList = bytesList;

  final List<PlatformFile> _bytesList;
  @override
  List<PlatformFile> get bytesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytesList);
  }

  @override
  final bool listUpdated;

  @override
  String toString() {
    return 'OnboardingEvent.covidDocumentUpload(bytesList: $bytesList, listUpdated: $listUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CovidDocumentUploadSelected &&
            const DeepCollectionEquality()
                .equals(other._bytesList, _bytesList) &&
            (identical(other.listUpdated, listUpdated) ||
                other.listUpdated == listUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bytesList), listUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CovidDocumentUploadSelectedCopyWith<_$_CovidDocumentUploadSelected>
      get copyWith => __$$_CovidDocumentUploadSelectedCopyWithImpl<
          _$_CovidDocumentUploadSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return covidDocumentUpload(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return covidDocumentUpload?.call(bytesList, listUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (covidDocumentUpload != null) {
      return covidDocumentUpload(bytesList, listUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return covidDocumentUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return covidDocumentUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (covidDocumentUpload != null) {
      return covidDocumentUpload(this);
    }
    return orElse();
  }
}

abstract class _CovidDocumentUploadSelected implements OnboardingEvent {
  const factory _CovidDocumentUploadSelected(
          final List<PlatformFile> bytesList, final bool listUpdated) =
      _$_CovidDocumentUploadSelected;

  List<PlatformFile> get bytesList;
  bool get listUpdated;
  @JsonKey(ignore: true)
  _$$_CovidDocumentUploadSelectedCopyWith<_$_CovidDocumentUploadSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LanguagePaginationCopyWith<$Res> {
  factory _$$_LanguagePaginationCopyWith(_$_LanguagePagination value,
          $Res Function(_$_LanguagePagination) then) =
      __$$_LanguagePaginationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LanguagePaginationCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_LanguagePagination>
    implements _$$_LanguagePaginationCopyWith<$Res> {
  __$$_LanguagePaginationCopyWithImpl(
      _$_LanguagePagination _value, $Res Function(_$_LanguagePagination) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LanguagePagination implements _LanguagePagination {
  const _$_LanguagePagination();

  @override
  String toString() {
    return 'OnboardingEvent.languagePagination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LanguagePagination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return languagePagination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return languagePagination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (languagePagination != null) {
      return languagePagination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return languagePagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return languagePagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (languagePagination != null) {
      return languagePagination(this);
    }
    return orElse();
  }
}

abstract class _LanguagePagination implements OnboardingEvent {
  const factory _LanguagePagination() = _$_LanguagePagination;
}

/// @nodoc
abstract class _$$_GetCaregiverServiceCopyWith<$Res> {
  factory _$$_GetCaregiverServiceCopyWith(_$_GetCaregiverService value,
          $Res Function(_$_GetCaregiverService) then) =
      __$$_GetCaregiverServiceCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_GetCaregiverServiceCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$_GetCaregiverService>
    implements _$$_GetCaregiverServiceCopyWith<$Res> {
  __$$_GetCaregiverServiceCopyWithImpl(_$_GetCaregiverService _value,
      $Res Function(_$_GetCaregiverService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_GetCaregiverService(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCaregiverService implements _GetCaregiverService {
  const _$_GetCaregiverService({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'OnboardingEvent.getServices(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCaregiverService &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCaregiverServiceCopyWith<_$_GetCaregiverService> get copyWith =>
      __$$_GetCaregiverServiceCopyWithImpl<_$_GetCaregiverService>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)
        personalDetails,
    required TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)
        qualificationDetails,
    required TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)
        preferenceDetails,
    required TResult Function() commonData,
    required TResult Function() cityList,
    required TResult Function() stateList,
    required TResult Function() yearsOfExpList,
    required TResult Function(String petSearchKey) petsList,
    required TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)
        languageList,
    required TResult Function(int isSelected) radioHHA,
    required TResult Function(int isSelected) radioBLS,
    required TResult Function(int isSelected) radioTB,
    required TResult Function(int isSelected) radioCovid,
    required TResult Function(int isSelected) radioExperience,
    required TResult Function(int isSelected) radioSmoker,
    required TResult Function(int isSelected) radioTransportation,
    required TResult Function(int isSelected) radioPet,
    required TResult Function(int isSelected) radioLanguage,
    required TResult Function(Uint8List bytes) profilePicSelection,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        securityDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        hhaDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        blsDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        tbDocumentUpload,
    required TResult Function(List<PlatformFile> bytesList, bool listUpdated)
        covidDocumentUpload,
    required TResult Function() languagePagination,
    required TResult Function(String userId) getServices,
  }) {
    return getServices(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult? Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult? Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult? Function()? commonData,
    TResult? Function()? cityList,
    TResult? Function()? stateList,
    TResult? Function()? yearsOfExpList,
    TResult? Function(String petSearchKey)? petsList,
    TResult? Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult? Function(int isSelected)? radioHHA,
    TResult? Function(int isSelected)? radioBLS,
    TResult? Function(int isSelected)? radioTB,
    TResult? Function(int isSelected)? radioCovid,
    TResult? Function(int isSelected)? radioExperience,
    TResult? Function(int isSelected)? radioSmoker,
    TResult? Function(int isSelected)? radioTransportation,
    TResult? Function(int isSelected)? radioPet,
    TResult? Function(int isSelected)? radioLanguage,
    TResult? Function(Uint8List bytes)? profilePicSelection,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult? Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult? Function()? languagePagination,
    TResult? Function(String userId)? getServices,
  }) {
    return getServices?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String dob,
            int genderId,
            String street,
            String cityId,
            String stateId,
            double latitude,
            double longitude,
            String zip,
            String address,
            String socialSecurityNo,
            String documentId,
            String documentNo,
            String expiryDate,
            List<String> documentList,
            String profilePic)?
        personalDetails,
    TResult Function(
            String userId,
            bool haveHhaRegistration,
            HhaDetails hhaDetails,
            bool haveBlsCertificate,
            BlsOrFirstAidCertificateDetails blsDetails,
            bool haveTbTest,
            TbOrPpdTestDetails tbDetails,
            bool haveCovidVaccination,
            CovidVaccinationDetails covidDetails)?
        qualificationDetails,
    TResult Function(
            String userId,
            String yearsOfExp,
            bool serveWithSmoker,
            bool willingToTransportation,
            bool willingToServeWithPets,
            List<PetsList> petsList,
            List<String> knownLanguages)?
        preferenceDetails,
    TResult Function()? commonData,
    TResult Function()? cityList,
    TResult Function()? stateList,
    TResult Function()? yearsOfExpList,
    TResult Function(String petSearchKey)? petsList,
    TResult Function(String languageSearchKey,
            List<PreferenceLanguageModel> languageList)?
        languageList,
    TResult Function(int isSelected)? radioHHA,
    TResult Function(int isSelected)? radioBLS,
    TResult Function(int isSelected)? radioTB,
    TResult Function(int isSelected)? radioCovid,
    TResult Function(int isSelected)? radioExperience,
    TResult Function(int isSelected)? radioSmoker,
    TResult Function(int isSelected)? radioTransportation,
    TResult Function(int isSelected)? radioPet,
    TResult Function(int isSelected)? radioLanguage,
    TResult Function(Uint8List bytes)? profilePicSelection,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        securityDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        hhaDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        blsDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        tbDocumentUpload,
    TResult Function(List<PlatformFile> bytesList, bool listUpdated)?
        covidDocumentUpload,
    TResult Function()? languagePagination,
    TResult Function(String userId)? getServices,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPersonalDetails value) personalDetails,
    required TResult Function(_GetQualificationDetails value)
        qualificationDetails,
    required TResult Function(_SubmitPreferenceDetails value) preferenceDetails,
    required TResult Function(_CommonDataLists value) commonData,
    required TResult Function(_CityLists value) cityList,
    required TResult Function(_StateLists value) stateList,
    required TResult Function(_YearsOfExp value) yearsOfExpList,
    required TResult Function(_GetPetList value) petsList,
    required TResult Function(_GetLanguageList value) languageList,
    required TResult Function(_RadioHHASelected value) radioHHA,
    required TResult Function(_RadioBLSSelected value) radioBLS,
    required TResult Function(_RadioTBSelected value) radioTB,
    required TResult Function(_RadioCovidSelected value) radioCovid,
    required TResult Function(_RadioExperienceSelected value) radioExperience,
    required TResult Function(_RadioSmokerSelected value) radioSmoker,
    required TResult Function(_RadioTransportationSelected value)
        radioTransportation,
    required TResult Function(_RadioPetSelected value) radioPet,
    required TResult Function(_RadioLanguageSelected value) radioLanguage,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
    required TResult Function(_SecurityDocumentUploadSelected value)
        securityDocumentUpload,
    required TResult Function(_HHADocumentUploadSelected value)
        hhaDocumentUpload,
    required TResult Function(_BLSDocumentUploadSelected value)
        blsDocumentUpload,
    required TResult Function(_TBDocumentUploadSelected value) tbDocumentUpload,
    required TResult Function(_CovidDocumentUploadSelected value)
        covidDocumentUpload,
    required TResult Function(_LanguagePagination value) languagePagination,
    required TResult Function(_GetCaregiverService value) getServices,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPersonalDetails value)? personalDetails,
    TResult? Function(_GetQualificationDetails value)? qualificationDetails,
    TResult? Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult? Function(_CommonDataLists value)? commonData,
    TResult? Function(_CityLists value)? cityList,
    TResult? Function(_StateLists value)? stateList,
    TResult? Function(_YearsOfExp value)? yearsOfExpList,
    TResult? Function(_GetPetList value)? petsList,
    TResult? Function(_GetLanguageList value)? languageList,
    TResult? Function(_RadioHHASelected value)? radioHHA,
    TResult? Function(_RadioBLSSelected value)? radioBLS,
    TResult? Function(_RadioTBSelected value)? radioTB,
    TResult? Function(_RadioCovidSelected value)? radioCovid,
    TResult? Function(_RadioExperienceSelected value)? radioExperience,
    TResult? Function(_RadioSmokerSelected value)? radioSmoker,
    TResult? Function(_RadioTransportationSelected value)? radioTransportation,
    TResult? Function(_RadioPetSelected value)? radioPet,
    TResult? Function(_RadioLanguageSelected value)? radioLanguage,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
    TResult? Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult? Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult? Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult? Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult? Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult? Function(_LanguagePagination value)? languagePagination,
    TResult? Function(_GetCaregiverService value)? getServices,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPersonalDetails value)? personalDetails,
    TResult Function(_GetQualificationDetails value)? qualificationDetails,
    TResult Function(_SubmitPreferenceDetails value)? preferenceDetails,
    TResult Function(_CommonDataLists value)? commonData,
    TResult Function(_CityLists value)? cityList,
    TResult Function(_StateLists value)? stateList,
    TResult Function(_YearsOfExp value)? yearsOfExpList,
    TResult Function(_GetPetList value)? petsList,
    TResult Function(_GetLanguageList value)? languageList,
    TResult Function(_RadioHHASelected value)? radioHHA,
    TResult Function(_RadioBLSSelected value)? radioBLS,
    TResult Function(_RadioTBSelected value)? radioTB,
    TResult Function(_RadioCovidSelected value)? radioCovid,
    TResult Function(_RadioExperienceSelected value)? radioExperience,
    TResult Function(_RadioSmokerSelected value)? radioSmoker,
    TResult Function(_RadioTransportationSelected value)? radioTransportation,
    TResult Function(_RadioPetSelected value)? radioPet,
    TResult Function(_RadioLanguageSelected value)? radioLanguage,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    TResult Function(_SecurityDocumentUploadSelected value)?
        securityDocumentUpload,
    TResult Function(_HHADocumentUploadSelected value)? hhaDocumentUpload,
    TResult Function(_BLSDocumentUploadSelected value)? blsDocumentUpload,
    TResult Function(_TBDocumentUploadSelected value)? tbDocumentUpload,
    TResult Function(_CovidDocumentUploadSelected value)? covidDocumentUpload,
    TResult Function(_LanguagePagination value)? languagePagination,
    TResult Function(_GetCaregiverService value)? getServices,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(this);
    }
    return orElse();
  }
}

abstract class _GetCaregiverService implements OnboardingEvent {
  const factory _GetCaregiverService({required final String userId}) =
      _$_GetCaregiverService;

  String get userId;
  @JsonKey(ignore: true)
  _$$_GetCaregiverServiceCopyWith<_$_GetCaregiverService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingState {
  Uint8List get pickedProfilePic => throw _privateConstructorUsedError;
  List<PlatformFile> get securityDocumentList =>
      throw _privateConstructorUsedError;
  List<PlatformFile> get hhaDocumentList => throw _privateConstructorUsedError;
  List<PlatformFile> get blsDocumentList => throw _privateConstructorUsedError;
  List<PlatformFile> get tbDocumentList => throw _privateConstructorUsedError;
  List<PlatformFile> get covidDocumentList =>
      throw _privateConstructorUsedError;
  List<PetsModel> get petsList => throw _privateConstructorUsedError;
  List<PreferenceLanguageModel> get languageList =>
      throw _privateConstructorUsedError;
  int get isHHASelected => throw _privateConstructorUsedError;
  int get isBLSSelected => throw _privateConstructorUsedError;
  int get isTBSelected => throw _privateConstructorUsedError;
  int get isCovidSelected => throw _privateConstructorUsedError;
  bool get isFormSubmitSuccess => throw _privateConstructorUsedError;
  bool get listUpdated => throw _privateConstructorUsedError;
  int get isExperianceSelected => throw _privateConstructorUsedError;
  int get isSmokerSelected => throw _privateConstructorUsedError;
  int get isTransportationSelected => throw _privateConstructorUsedError;
  int get isPetsSelected => throw _privateConstructorUsedError;
  int get isLanguagesSelected => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get nextClicked => throw _privateConstructorUsedError;
  int get selectedGenderId => throw _privateConstructorUsedError;
  int get languagePaginationPage => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, PersonalDetailsResponse>>
      get personalDetailsOption => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, CommonResponse>>
      get qualificationDetailsOption => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, CommonResponse>> get preferenceDetailsOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, GenderListResponse>> get genderOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, DocumentListResponse>> get documentOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, StateListReponse>> get stateOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, CityListResponse>> get cityOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, PetListResponse>> get petListOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, YearsOfExperienceResponse>> get yearsOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, LanguageListResponse>>
      get languageListOption => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, GetServiceResponse>> get getServiceOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call(
      {Uint8List pickedProfilePic,
      List<PlatformFile> securityDocumentList,
      List<PlatformFile> hhaDocumentList,
      List<PlatformFile> blsDocumentList,
      List<PlatformFile> tbDocumentList,
      List<PlatformFile> covidDocumentList,
      List<PetsModel> petsList,
      List<PreferenceLanguageModel> languageList,
      int isHHASelected,
      int isBLSSelected,
      int isTBSelected,
      int isCovidSelected,
      bool isFormSubmitSuccess,
      bool listUpdated,
      int isExperianceSelected,
      int isSmokerSelected,
      int isTransportationSelected,
      int isPetsSelected,
      int isLanguagesSelected,
      bool isLoading,
      bool nextClicked,
      int selectedGenderId,
      int languagePaginationPage,
      Option<Either<ApiErrorHandler, PersonalDetailsResponse>>
          personalDetailsOption,
      Option<Either<ApiErrorHandler, CommonResponse>>
          qualificationDetailsOption,
      Option<Either<ApiErrorHandler, CommonResponse>> preferenceDetailsOption,
      Option<Either<ApiErrorHandler, GenderListResponse>> genderOption,
      Option<Either<ApiErrorHandler, DocumentListResponse>> documentOption,
      Option<Either<ApiErrorHandler, StateListReponse>> stateOption,
      Option<Either<ApiErrorHandler, CityListResponse>> cityOption,
      Option<Either<ApiErrorHandler, PetListResponse>> petListOption,
      Option<Either<ApiErrorHandler, YearsOfExperienceResponse>> yearsOption,
      Option<Either<ApiErrorHandler, LanguageListResponse>> languageListOption,
      Option<Either<ApiErrorHandler, GetServiceResponse>> getServiceOption});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedProfilePic = null,
    Object? securityDocumentList = null,
    Object? hhaDocumentList = null,
    Object? blsDocumentList = null,
    Object? tbDocumentList = null,
    Object? covidDocumentList = null,
    Object? petsList = null,
    Object? languageList = null,
    Object? isHHASelected = null,
    Object? isBLSSelected = null,
    Object? isTBSelected = null,
    Object? isCovidSelected = null,
    Object? isFormSubmitSuccess = null,
    Object? listUpdated = null,
    Object? isExperianceSelected = null,
    Object? isSmokerSelected = null,
    Object? isTransportationSelected = null,
    Object? isPetsSelected = null,
    Object? isLanguagesSelected = null,
    Object? isLoading = null,
    Object? nextClicked = null,
    Object? selectedGenderId = null,
    Object? languagePaginationPage = null,
    Object? personalDetailsOption = null,
    Object? qualificationDetailsOption = null,
    Object? preferenceDetailsOption = null,
    Object? genderOption = null,
    Object? documentOption = null,
    Object? stateOption = null,
    Object? cityOption = null,
    Object? petListOption = null,
    Object? yearsOption = null,
    Object? languageListOption = null,
    Object? getServiceOption = null,
  }) {
    return _then(_value.copyWith(
      pickedProfilePic: null == pickedProfilePic
          ? _value.pickedProfilePic
          : pickedProfilePic // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      securityDocumentList: null == securityDocumentList
          ? _value.securityDocumentList
          : securityDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      hhaDocumentList: null == hhaDocumentList
          ? _value.hhaDocumentList
          : hhaDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      blsDocumentList: null == blsDocumentList
          ? _value.blsDocumentList
          : blsDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      tbDocumentList: null == tbDocumentList
          ? _value.tbDocumentList
          : tbDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      covidDocumentList: null == covidDocumentList
          ? _value.covidDocumentList
          : covidDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      petsList: null == petsList
          ? _value.petsList
          : petsList // ignore: cast_nullable_to_non_nullable
              as List<PetsModel>,
      languageList: null == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<PreferenceLanguageModel>,
      isHHASelected: null == isHHASelected
          ? _value.isHHASelected
          : isHHASelected // ignore: cast_nullable_to_non_nullable
              as int,
      isBLSSelected: null == isBLSSelected
          ? _value.isBLSSelected
          : isBLSSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isTBSelected: null == isTBSelected
          ? _value.isTBSelected
          : isTBSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isCovidSelected: null == isCovidSelected
          ? _value.isCovidSelected
          : isCovidSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isFormSubmitSuccess: null == isFormSubmitSuccess
          ? _value.isFormSubmitSuccess
          : isFormSubmitSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      listUpdated: null == listUpdated
          ? _value.listUpdated
          : listUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      isExperianceSelected: null == isExperianceSelected
          ? _value.isExperianceSelected
          : isExperianceSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isSmokerSelected: null == isSmokerSelected
          ? _value.isSmokerSelected
          : isSmokerSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isTransportationSelected: null == isTransportationSelected
          ? _value.isTransportationSelected
          : isTransportationSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isPetsSelected: null == isPetsSelected
          ? _value.isPetsSelected
          : isPetsSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isLanguagesSelected: null == isLanguagesSelected
          ? _value.isLanguagesSelected
          : isLanguagesSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nextClicked: null == nextClicked
          ? _value.nextClicked
          : nextClicked // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedGenderId: null == selectedGenderId
          ? _value.selectedGenderId
          : selectedGenderId // ignore: cast_nullable_to_non_nullable
              as int,
      languagePaginationPage: null == languagePaginationPage
          ? _value.languagePaginationPage
          : languagePaginationPage // ignore: cast_nullable_to_non_nullable
              as int,
      personalDetailsOption: null == personalDetailsOption
          ? _value.personalDetailsOption
          : personalDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, PersonalDetailsResponse>>,
      qualificationDetailsOption: null == qualificationDetailsOption
          ? _value.qualificationDetailsOption
          : qualificationDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CommonResponse>>,
      preferenceDetailsOption: null == preferenceDetailsOption
          ? _value.preferenceDetailsOption
          : preferenceDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CommonResponse>>,
      genderOption: null == genderOption
          ? _value.genderOption
          : genderOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, GenderListResponse>>,
      documentOption: null == documentOption
          ? _value.documentOption
          : documentOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, DocumentListResponse>>,
      stateOption: null == stateOption
          ? _value.stateOption
          : stateOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, StateListReponse>>,
      cityOption: null == cityOption
          ? _value.cityOption
          : cityOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CityListResponse>>,
      petListOption: null == petListOption
          ? _value.petListOption
          : petListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, PetListResponse>>,
      yearsOption: null == yearsOption
          ? _value.yearsOption
          : yearsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, YearsOfExperienceResponse>>,
      languageListOption: null == languageListOption
          ? _value.languageListOption
          : languageListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, LanguageListResponse>>,
      getServiceOption: null == getServiceOption
          ? _value.getServiceOption
          : getServiceOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, GetServiceResponse>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uint8List pickedProfilePic,
      List<PlatformFile> securityDocumentList,
      List<PlatformFile> hhaDocumentList,
      List<PlatformFile> blsDocumentList,
      List<PlatformFile> tbDocumentList,
      List<PlatformFile> covidDocumentList,
      List<PetsModel> petsList,
      List<PreferenceLanguageModel> languageList,
      int isHHASelected,
      int isBLSSelected,
      int isTBSelected,
      int isCovidSelected,
      bool isFormSubmitSuccess,
      bool listUpdated,
      int isExperianceSelected,
      int isSmokerSelected,
      int isTransportationSelected,
      int isPetsSelected,
      int isLanguagesSelected,
      bool isLoading,
      bool nextClicked,
      int selectedGenderId,
      int languagePaginationPage,
      Option<Either<ApiErrorHandler, PersonalDetailsResponse>>
          personalDetailsOption,
      Option<Either<ApiErrorHandler, CommonResponse>>
          qualificationDetailsOption,
      Option<Either<ApiErrorHandler, CommonResponse>> preferenceDetailsOption,
      Option<Either<ApiErrorHandler, GenderListResponse>> genderOption,
      Option<Either<ApiErrorHandler, DocumentListResponse>> documentOption,
      Option<Either<ApiErrorHandler, StateListReponse>> stateOption,
      Option<Either<ApiErrorHandler, CityListResponse>> cityOption,
      Option<Either<ApiErrorHandler, PetListResponse>> petListOption,
      Option<Either<ApiErrorHandler, YearsOfExperienceResponse>> yearsOption,
      Option<Either<ApiErrorHandler, LanguageListResponse>> languageListOption,
      Option<Either<ApiErrorHandler, GetServiceResponse>> getServiceOption});
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_OnboardingState>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedProfilePic = null,
    Object? securityDocumentList = null,
    Object? hhaDocumentList = null,
    Object? blsDocumentList = null,
    Object? tbDocumentList = null,
    Object? covidDocumentList = null,
    Object? petsList = null,
    Object? languageList = null,
    Object? isHHASelected = null,
    Object? isBLSSelected = null,
    Object? isTBSelected = null,
    Object? isCovidSelected = null,
    Object? isFormSubmitSuccess = null,
    Object? listUpdated = null,
    Object? isExperianceSelected = null,
    Object? isSmokerSelected = null,
    Object? isTransportationSelected = null,
    Object? isPetsSelected = null,
    Object? isLanguagesSelected = null,
    Object? isLoading = null,
    Object? nextClicked = null,
    Object? selectedGenderId = null,
    Object? languagePaginationPage = null,
    Object? personalDetailsOption = null,
    Object? qualificationDetailsOption = null,
    Object? preferenceDetailsOption = null,
    Object? genderOption = null,
    Object? documentOption = null,
    Object? stateOption = null,
    Object? cityOption = null,
    Object? petListOption = null,
    Object? yearsOption = null,
    Object? languageListOption = null,
    Object? getServiceOption = null,
  }) {
    return _then(_$_OnboardingState(
      pickedProfilePic: null == pickedProfilePic
          ? _value.pickedProfilePic
          : pickedProfilePic // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      securityDocumentList: null == securityDocumentList
          ? _value._securityDocumentList
          : securityDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      hhaDocumentList: null == hhaDocumentList
          ? _value._hhaDocumentList
          : hhaDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      blsDocumentList: null == blsDocumentList
          ? _value._blsDocumentList
          : blsDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      tbDocumentList: null == tbDocumentList
          ? _value._tbDocumentList
          : tbDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      covidDocumentList: null == covidDocumentList
          ? _value._covidDocumentList
          : covidDocumentList // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      petsList: null == petsList
          ? _value._petsList
          : petsList // ignore: cast_nullable_to_non_nullable
              as List<PetsModel>,
      languageList: null == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<PreferenceLanguageModel>,
      isHHASelected: null == isHHASelected
          ? _value.isHHASelected
          : isHHASelected // ignore: cast_nullable_to_non_nullable
              as int,
      isBLSSelected: null == isBLSSelected
          ? _value.isBLSSelected
          : isBLSSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isTBSelected: null == isTBSelected
          ? _value.isTBSelected
          : isTBSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isCovidSelected: null == isCovidSelected
          ? _value.isCovidSelected
          : isCovidSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isFormSubmitSuccess: null == isFormSubmitSuccess
          ? _value.isFormSubmitSuccess
          : isFormSubmitSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      listUpdated: null == listUpdated
          ? _value.listUpdated
          : listUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      isExperianceSelected: null == isExperianceSelected
          ? _value.isExperianceSelected
          : isExperianceSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isSmokerSelected: null == isSmokerSelected
          ? _value.isSmokerSelected
          : isSmokerSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isTransportationSelected: null == isTransportationSelected
          ? _value.isTransportationSelected
          : isTransportationSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isPetsSelected: null == isPetsSelected
          ? _value.isPetsSelected
          : isPetsSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isLanguagesSelected: null == isLanguagesSelected
          ? _value.isLanguagesSelected
          : isLanguagesSelected // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nextClicked: null == nextClicked
          ? _value.nextClicked
          : nextClicked // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedGenderId: null == selectedGenderId
          ? _value.selectedGenderId
          : selectedGenderId // ignore: cast_nullable_to_non_nullable
              as int,
      languagePaginationPage: null == languagePaginationPage
          ? _value.languagePaginationPage
          : languagePaginationPage // ignore: cast_nullable_to_non_nullable
              as int,
      personalDetailsOption: null == personalDetailsOption
          ? _value.personalDetailsOption
          : personalDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, PersonalDetailsResponse>>,
      qualificationDetailsOption: null == qualificationDetailsOption
          ? _value.qualificationDetailsOption
          : qualificationDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CommonResponse>>,
      preferenceDetailsOption: null == preferenceDetailsOption
          ? _value.preferenceDetailsOption
          : preferenceDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CommonResponse>>,
      genderOption: null == genderOption
          ? _value.genderOption
          : genderOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, GenderListResponse>>,
      documentOption: null == documentOption
          ? _value.documentOption
          : documentOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, DocumentListResponse>>,
      stateOption: null == stateOption
          ? _value.stateOption
          : stateOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, StateListReponse>>,
      cityOption: null == cityOption
          ? _value.cityOption
          : cityOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, CityListResponse>>,
      petListOption: null == petListOption
          ? _value.petListOption
          : petListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, PetListResponse>>,
      yearsOption: null == yearsOption
          ? _value.yearsOption
          : yearsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, YearsOfExperienceResponse>>,
      languageListOption: null == languageListOption
          ? _value.languageListOption
          : languageListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, LanguageListResponse>>,
      getServiceOption: null == getServiceOption
          ? _value.getServiceOption
          : getServiceOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, GetServiceResponse>>,
    ));
  }
}

/// @nodoc

class _$_OnboardingState implements _OnboardingState {
  const _$_OnboardingState(
      {required this.pickedProfilePic,
      required final List<PlatformFile> securityDocumentList,
      required final List<PlatformFile> hhaDocumentList,
      required final List<PlatformFile> blsDocumentList,
      required final List<PlatformFile> tbDocumentList,
      required final List<PlatformFile> covidDocumentList,
      required final List<PetsModel> petsList,
      required final List<PreferenceLanguageModel> languageList,
      required this.isHHASelected,
      required this.isBLSSelected,
      required this.isTBSelected,
      required this.isCovidSelected,
      required this.isFormSubmitSuccess,
      required this.listUpdated,
      required this.isExperianceSelected,
      required this.isSmokerSelected,
      required this.isTransportationSelected,
      required this.isPetsSelected,
      required this.isLanguagesSelected,
      required this.isLoading,
      required this.nextClicked,
      required this.selectedGenderId,
      required this.languagePaginationPage,
      required this.personalDetailsOption,
      required this.qualificationDetailsOption,
      required this.preferenceDetailsOption,
      required this.genderOption,
      required this.documentOption,
      required this.stateOption,
      required this.cityOption,
      required this.petListOption,
      required this.yearsOption,
      required this.languageListOption,
      required this.getServiceOption})
      : _securityDocumentList = securityDocumentList,
        _hhaDocumentList = hhaDocumentList,
        _blsDocumentList = blsDocumentList,
        _tbDocumentList = tbDocumentList,
        _covidDocumentList = covidDocumentList,
        _petsList = petsList,
        _languageList = languageList;

  @override
  final Uint8List pickedProfilePic;
  final List<PlatformFile> _securityDocumentList;
  @override
  List<PlatformFile> get securityDocumentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_securityDocumentList);
  }

  final List<PlatformFile> _hhaDocumentList;
  @override
  List<PlatformFile> get hhaDocumentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hhaDocumentList);
  }

  final List<PlatformFile> _blsDocumentList;
  @override
  List<PlatformFile> get blsDocumentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blsDocumentList);
  }

  final List<PlatformFile> _tbDocumentList;
  @override
  List<PlatformFile> get tbDocumentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tbDocumentList);
  }

  final List<PlatformFile> _covidDocumentList;
  @override
  List<PlatformFile> get covidDocumentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_covidDocumentList);
  }

  final List<PetsModel> _petsList;
  @override
  List<PetsModel> get petsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_petsList);
  }

  final List<PreferenceLanguageModel> _languageList;
  @override
  List<PreferenceLanguageModel> get languageList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageList);
  }

  @override
  final int isHHASelected;
  @override
  final int isBLSSelected;
  @override
  final int isTBSelected;
  @override
  final int isCovidSelected;
  @override
  final bool isFormSubmitSuccess;
  @override
  final bool listUpdated;
  @override
  final int isExperianceSelected;
  @override
  final int isSmokerSelected;
  @override
  final int isTransportationSelected;
  @override
  final int isPetsSelected;
  @override
  final int isLanguagesSelected;
  @override
  final bool isLoading;
  @override
  final bool nextClicked;
  @override
  final int selectedGenderId;
  @override
  final int languagePaginationPage;
  @override
  final Option<Either<ApiErrorHandler, PersonalDetailsResponse>>
      personalDetailsOption;
  @override
  final Option<Either<ApiErrorHandler, CommonResponse>>
      qualificationDetailsOption;
  @override
  final Option<Either<ApiErrorHandler, CommonResponse>> preferenceDetailsOption;
  @override
  final Option<Either<ApiErrorHandler, GenderListResponse>> genderOption;
  @override
  final Option<Either<ApiErrorHandler, DocumentListResponse>> documentOption;
  @override
  final Option<Either<ApiErrorHandler, StateListReponse>> stateOption;
  @override
  final Option<Either<ApiErrorHandler, CityListResponse>> cityOption;
  @override
  final Option<Either<ApiErrorHandler, PetListResponse>> petListOption;
  @override
  final Option<Either<ApiErrorHandler, YearsOfExperienceResponse>> yearsOption;
  @override
  final Option<Either<ApiErrorHandler, LanguageListResponse>>
      languageListOption;
  @override
  final Option<Either<ApiErrorHandler, GetServiceResponse>> getServiceOption;

  @override
  String toString() {
    return 'OnboardingState(pickedProfilePic: $pickedProfilePic, securityDocumentList: $securityDocumentList, hhaDocumentList: $hhaDocumentList, blsDocumentList: $blsDocumentList, tbDocumentList: $tbDocumentList, covidDocumentList: $covidDocumentList, petsList: $petsList, languageList: $languageList, isHHASelected: $isHHASelected, isBLSSelected: $isBLSSelected, isTBSelected: $isTBSelected, isCovidSelected: $isCovidSelected, isFormSubmitSuccess: $isFormSubmitSuccess, listUpdated: $listUpdated, isExperianceSelected: $isExperianceSelected, isSmokerSelected: $isSmokerSelected, isTransportationSelected: $isTransportationSelected, isPetsSelected: $isPetsSelected, isLanguagesSelected: $isLanguagesSelected, isLoading: $isLoading, nextClicked: $nextClicked, selectedGenderId: $selectedGenderId, languagePaginationPage: $languagePaginationPage, personalDetailsOption: $personalDetailsOption, qualificationDetailsOption: $qualificationDetailsOption, preferenceDetailsOption: $preferenceDetailsOption, genderOption: $genderOption, documentOption: $documentOption, stateOption: $stateOption, cityOption: $cityOption, petListOption: $petListOption, yearsOption: $yearsOption, languageListOption: $languageListOption, getServiceOption: $getServiceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingState &&
            const DeepCollectionEquality()
                .equals(other.pickedProfilePic, pickedProfilePic) &&
            const DeepCollectionEquality()
                .equals(other._securityDocumentList, _securityDocumentList) &&
            const DeepCollectionEquality()
                .equals(other._hhaDocumentList, _hhaDocumentList) &&
            const DeepCollectionEquality()
                .equals(other._blsDocumentList, _blsDocumentList) &&
            const DeepCollectionEquality()
                .equals(other._tbDocumentList, _tbDocumentList) &&
            const DeepCollectionEquality()
                .equals(other._covidDocumentList, _covidDocumentList) &&
            const DeepCollectionEquality().equals(other._petsList, _petsList) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList) &&
            (identical(other.isHHASelected, isHHASelected) ||
                other.isHHASelected == isHHASelected) &&
            (identical(other.isBLSSelected, isBLSSelected) ||
                other.isBLSSelected == isBLSSelected) &&
            (identical(other.isTBSelected, isTBSelected) ||
                other.isTBSelected == isTBSelected) &&
            (identical(other.isCovidSelected, isCovidSelected) ||
                other.isCovidSelected == isCovidSelected) &&
            (identical(other.isFormSubmitSuccess, isFormSubmitSuccess) ||
                other.isFormSubmitSuccess == isFormSubmitSuccess) &&
            (identical(other.listUpdated, listUpdated) ||
                other.listUpdated == listUpdated) &&
            (identical(other.isExperianceSelected, isExperianceSelected) ||
                other.isExperianceSelected == isExperianceSelected) &&
            (identical(other.isSmokerSelected, isSmokerSelected) ||
                other.isSmokerSelected == isSmokerSelected) &&
            (identical(
                    other.isTransportationSelected, isTransportationSelected) ||
                other.isTransportationSelected == isTransportationSelected) &&
            (identical(other.isPetsSelected, isPetsSelected) ||
                other.isPetsSelected == isPetsSelected) &&
            (identical(other.isLanguagesSelected, isLanguagesSelected) ||
                other.isLanguagesSelected == isLanguagesSelected) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.nextClicked, nextClicked) ||
                other.nextClicked == nextClicked) &&
            (identical(other.selectedGenderId, selectedGenderId) ||
                other.selectedGenderId == selectedGenderId) &&
            (identical(other.languagePaginationPage, languagePaginationPage) ||
                other.languagePaginationPage == languagePaginationPage) &&
            (identical(other.personalDetailsOption, personalDetailsOption) ||
                other.personalDetailsOption == personalDetailsOption) &&
            (identical(other.qualificationDetailsOption, qualificationDetailsOption) ||
                other.qualificationDetailsOption ==
                    qualificationDetailsOption) &&
            (identical(other.preferenceDetailsOption, preferenceDetailsOption) ||
                other.preferenceDetailsOption == preferenceDetailsOption) &&
            (identical(other.genderOption, genderOption) ||
                other.genderOption == genderOption) &&
            (identical(other.documentOption, documentOption) ||
                other.documentOption == documentOption) &&
            (identical(other.stateOption, stateOption) ||
                other.stateOption == stateOption) &&
            (identical(other.cityOption, cityOption) ||
                other.cityOption == cityOption) &&
            (identical(other.petListOption, petListOption) ||
                other.petListOption == petListOption) &&
            (identical(other.yearsOption, yearsOption) ||
                other.yearsOption == yearsOption) &&
            (identical(other.languageListOption, languageListOption) ||
                other.languageListOption == languageListOption) &&
            (identical(other.getServiceOption, getServiceOption) ||
                other.getServiceOption == getServiceOption));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(pickedProfilePic),
        const DeepCollectionEquality().hash(_securityDocumentList),
        const DeepCollectionEquality().hash(_hhaDocumentList),
        const DeepCollectionEquality().hash(_blsDocumentList),
        const DeepCollectionEquality().hash(_tbDocumentList),
        const DeepCollectionEquality().hash(_covidDocumentList),
        const DeepCollectionEquality().hash(_petsList),
        const DeepCollectionEquality().hash(_languageList),
        isHHASelected,
        isBLSSelected,
        isTBSelected,
        isCovidSelected,
        isFormSubmitSuccess,
        listUpdated,
        isExperianceSelected,
        isSmokerSelected,
        isTransportationSelected,
        isPetsSelected,
        isLanguagesSelected,
        isLoading,
        nextClicked,
        selectedGenderId,
        languagePaginationPage,
        personalDetailsOption,
        qualificationDetailsOption,
        preferenceDetailsOption,
        genderOption,
        documentOption,
        stateOption,
        cityOption,
        petListOption,
        yearsOption,
        languageListOption,
        getServiceOption
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      __$$_OnboardingStateCopyWithImpl<_$_OnboardingState>(this, _$identity);
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState(
      {required final Uint8List pickedProfilePic,
      required final List<PlatformFile> securityDocumentList,
      required final List<PlatformFile> hhaDocumentList,
      required final List<PlatformFile> blsDocumentList,
      required final List<PlatformFile> tbDocumentList,
      required final List<PlatformFile> covidDocumentList,
      required final List<PetsModel> petsList,
      required final List<PreferenceLanguageModel> languageList,
      required final int isHHASelected,
      required final int isBLSSelected,
      required final int isTBSelected,
      required final int isCovidSelected,
      required final bool isFormSubmitSuccess,
      required final bool listUpdated,
      required final int isExperianceSelected,
      required final int isSmokerSelected,
      required final int isTransportationSelected,
      required final int isPetsSelected,
      required final int isLanguagesSelected,
      required final bool isLoading,
      required final bool nextClicked,
      required final int selectedGenderId,
      required final int languagePaginationPage,
      required final Option<Either<ApiErrorHandler, PersonalDetailsResponse>>
          personalDetailsOption,
      required final Option<Either<ApiErrorHandler, CommonResponse>>
          qualificationDetailsOption,
      required final Option<Either<ApiErrorHandler, CommonResponse>>
          preferenceDetailsOption,
      required final Option<Either<ApiErrorHandler, GenderListResponse>>
          genderOption,
      required final Option<Either<ApiErrorHandler, DocumentListResponse>>
          documentOption,
      required final Option<Either<ApiErrorHandler, StateListReponse>>
          stateOption,
      required final Option<Either<ApiErrorHandler, CityListResponse>>
          cityOption,
      required final Option<Either<ApiErrorHandler, PetListResponse>>
          petListOption,
      required final Option<Either<ApiErrorHandler, YearsOfExperienceResponse>>
          yearsOption,
      required final Option<Either<ApiErrorHandler, LanguageListResponse>>
          languageListOption,
      required final Option<Either<ApiErrorHandler, GetServiceResponse>>
          getServiceOption}) = _$_OnboardingState;

  @override
  Uint8List get pickedProfilePic;
  @override
  List<PlatformFile> get securityDocumentList;
  @override
  List<PlatformFile> get hhaDocumentList;
  @override
  List<PlatformFile> get blsDocumentList;
  @override
  List<PlatformFile> get tbDocumentList;
  @override
  List<PlatformFile> get covidDocumentList;
  @override
  List<PetsModel> get petsList;
  @override
  List<PreferenceLanguageModel> get languageList;
  @override
  int get isHHASelected;
  @override
  int get isBLSSelected;
  @override
  int get isTBSelected;
  @override
  int get isCovidSelected;
  @override
  bool get isFormSubmitSuccess;
  @override
  bool get listUpdated;
  @override
  int get isExperianceSelected;
  @override
  int get isSmokerSelected;
  @override
  int get isTransportationSelected;
  @override
  int get isPetsSelected;
  @override
  int get isLanguagesSelected;
  @override
  bool get isLoading;
  @override
  bool get nextClicked;
  @override
  int get selectedGenderId;
  @override
  int get languagePaginationPage;
  @override
  Option<Either<ApiErrorHandler, PersonalDetailsResponse>>
      get personalDetailsOption;
  @override
  Option<Either<ApiErrorHandler, CommonResponse>>
      get qualificationDetailsOption;
  @override
  Option<Either<ApiErrorHandler, CommonResponse>> get preferenceDetailsOption;
  @override
  Option<Either<ApiErrorHandler, GenderListResponse>> get genderOption;
  @override
  Option<Either<ApiErrorHandler, DocumentListResponse>> get documentOption;
  @override
  Option<Either<ApiErrorHandler, StateListReponse>> get stateOption;
  @override
  Option<Either<ApiErrorHandler, CityListResponse>> get cityOption;
  @override
  Option<Either<ApiErrorHandler, PetListResponse>> get petListOption;
  @override
  Option<Either<ApiErrorHandler, YearsOfExperienceResponse>> get yearsOption;
  @override
  Option<Either<ApiErrorHandler, LanguageListResponse>> get languageListOption;
  @override
  Option<Either<ApiErrorHandler, GetServiceResponse>> get getServiceOption;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}
