part of 'get_cities_bloc.dart';

@freezed
class GetCitiesEvent with _$GetCitiesEvent {
  const factory GetCitiesEvent.fetch(
      {required String stateId,
      required String page,
      required String searchKey}) = _Fetch;
  const factory GetCitiesEvent.reset() = _Reset;
}
