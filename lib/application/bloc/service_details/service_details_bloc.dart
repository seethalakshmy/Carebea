import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_details_event.dart';
part 'service_details_state.dart';
part 'service_details_bloc.freezed.dart';

class ServiceDetailsBloc extends Bloc<ServiceDetailsEvent, ServiceDetailsState> {
  ServiceDetailsBloc() : super(const ServiceDetailsState.initial()) {
    on<ServiceDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
