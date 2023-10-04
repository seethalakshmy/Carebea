part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState(
      {required bool isLoading,
      required bool isError,
      required SubscriptionModel? response,
      required String? error}) = _SubscriptionState;

  factory SubscriptionState.initial() {
    return const SubscriptionState(
        isLoading: true, isError: false, response: null, error: null);
  }
}
