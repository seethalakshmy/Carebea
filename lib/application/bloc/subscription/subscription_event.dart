part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.getSubscription(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      required String startDate,
      required String endDate,
      dynamic status,
      dynamic subscriptionType}) = _GetSubscription;
}
