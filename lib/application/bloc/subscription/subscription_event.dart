part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.getSubscription(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      dynamic subscriptionType}) = _GetSubscription;
}
