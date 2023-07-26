part of 'service_details_bloc.dart';

@freezed
class ServiceDetailsEvent with _$ServiceDetailsEvent {
  const factory ServiceDetailsEvent.started() = _Started;
}
