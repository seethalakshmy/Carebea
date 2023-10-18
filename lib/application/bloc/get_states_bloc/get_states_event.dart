part of 'get_states_bloc.dart';

@freezed
class GetStatesEvent with _$GetStatesEvent {
  const factory GetStatesEvent.fetch(
      {required String page,
      required String searchKey,
      required List<StateItem> previousData}) = _Fetch;
  const factory GetStatesEvent.reset() = _Reset;
}
