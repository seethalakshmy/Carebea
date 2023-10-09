part of 'caregiver_submit_agreement_bloc.dart';

@freezed
sealed class CaregiverSubmitAgreementState
    with _$CaregiverSubmitAgreementState {
  const factory CaregiverSubmitAgreementState.initial() = _Initial;
  const factory CaregiverSubmitAgreementState.loading() = _Loading;
  const factory CaregiverSubmitAgreementState.failed({required String error}) =
      _Failed;
  const factory CaregiverSubmitAgreementState.success({required String data}) =
      _Success;
}
