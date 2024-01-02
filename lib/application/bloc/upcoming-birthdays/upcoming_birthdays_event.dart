part of 'upcoming_birthdays_bloc.dart';

@freezed
class UpcomingBirthdayEvent with _$UpcomingBirthdayEvent {
  const factory UpcomingBirthdayEvent.getUpcomingBirthdays({
    required String userId,
    required String type,
    required String page,
    required String limit,
  }) = _GetUpcomingBirthdays;
}
