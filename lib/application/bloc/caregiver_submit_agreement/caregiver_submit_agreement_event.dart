part of 'caregiver_submit_agreement_bloc.dart';

@freezed
sealed class CaregiverSubmitAgreementEvent
    with _$CaregiverSubmitAgreementEvent {
  const factory CaregiverSubmitAgreementEvent.submit(
      {required String signatureUrl}) = _Submit;
}
