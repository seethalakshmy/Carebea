part of 'caregivers_bloc.dart';

@freezed
class CareGiversState with _$CareGiversState {
  const factory CareGiversState.loading() = _Loading;
  const factory CareGiversState.success({required CaregiversResponse? response}) = _Success;
  const factory CareGiversState.error({ String? msg, bool ?isClientError}) = _Error;
}
