import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enum.dart';
import '../../../domain/caregivers/model/types.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/service_request_management/model/service_request_response.dart';
import '../../../infrastructure/service_request_management/service_request_management_repository.dart';

part 'service_request_management_bloc.freezed.dart';
part 'service_request_management_event.dart';
part 'service_request_management_state.dart';

class ServiceRequestManagementBloc
    extends Bloc<ServiceRequestManagementEvent, ServiceRequestManagementState> {
  ServiceRequestManagementRepository serviceRequestManagementRepository;

  ServiceRequestManagementBloc(this.serviceRequestManagementRepository)
      : super(ServiceRequestManagementState.initial()) {
    on<ServiceRequestManagementEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_IsSelectedTab>(_getSelectedTab);
    on<_GetServiceList>(_getServiceList);
  }

  _getSelectedTab(
      _IsSelectedTab event, Emitter<ServiceRequestManagementState> emit) async {
    var state = this.state;
    final typeList = state.types;
    Types item = event.type;
    final index = typeList.indexOf(item);
    if (!item.isSelected) {
      for (var element in typeList) {
        element.isSelected = false;
      }
      List<Types> types = List.from(typeList)..removeAt(index);
      types.insert(index, item.copyWith(isSelected: true));
      emit(state.copyWith(types: types, isLoading: true));
    }
  }

  _getServiceList(_GetServiceList event,
      Emitter<ServiceRequestManagementState> emit) async {
    var state = this.state;
    if (event.type.id == 1) {
      state = await _getPendingRequests();
    } else if (event.type.id == 2) {
      state = await _getCompletedRequests();
    } else if (event.type.id == 3) {
      state = await _getCancelledRequests();
    } else if (event.type.id == 4) {
      state = await _getUpcomingRequests();
    } else {
      state = await _getOngoingRequests();
    }
    emit(state);
  }

  Future<ServiceRequestManagementState> _getPendingRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getPendingRequests(
            page: 1, userId: SharedPreffUtil().getUserId, limit: 10);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }

  Future<ServiceRequestManagementState> _getCompletedRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getCompletedRequests(
            page: 1, userId: SharedPreffUtil().getUserId, limit: 10);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }

  Future<ServiceRequestManagementState> _getCancelledRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getCancelledRequests(
            page: 1, userId: SharedPreffUtil().getUserId, limit: 10);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }

  Future<ServiceRequestManagementState> _getUpcomingRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getUpcomingRequests(
            page: 1, userId: SharedPreffUtil().getUserId, limit: 10);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }

  Future<ServiceRequestManagementState> _getOngoingRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getOngoingRequests(
            page: 1, userId: SharedPreffUtil().getUserId, limit: 10);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }
}
