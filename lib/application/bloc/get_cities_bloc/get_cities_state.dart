part of 'get_cities_bloc.dart';

@freezed
class GetCitiesState with _$GetCitiesState {
  const factory GetCitiesState.initial() = _Initial;
  const factory GetCitiesState.loading() = _Loading;
  const factory GetCitiesState.failed({required String error}) = _Failed;
  const factory GetCitiesState.success({required CityListResponse data}) =
      _Success;
}
