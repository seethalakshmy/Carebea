part of 'upcoming_birthdays_bloc.dart';

@freezed
class UpcomingBirthdayState with _$UpcomingBirthdayState {
  const factory UpcomingBirthdayState(
      {required bool isLoading,
      required bool isError,
      required UpcomingBirthdayResponse? upcomingBirthdayResponse,
      required List<dynamic> mUserList,
      required String? error}) = _UpcomingBirthdayState;

  factory UpcomingBirthdayState.initial() {
    return const UpcomingBirthdayState(
        isLoading: true,
        isError: false,
        upcomingBirthdayResponse: null,
        error: null,
        mUserList: []);
  }
}
