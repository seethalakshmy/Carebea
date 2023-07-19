import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/enum.dart';
import '../../../domain/caregivers/model/types.dart';

part 'service_request_management_event.dart';
part 'service_request_management_state.dart';
part 'service_request_management_bloc.freezed.dart';

class ServiceRequestManagementBloc extends Bloc<ServiceRequestManagementEvent, ServiceRequestManagementState> {
  ServiceRequestManagementBloc() : super(ServiceRequestManagementState.initial()) {
    on<ServiceRequestManagementEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_IsSelectedTab>(_getSelectedTab);
  }

  _getSelectedTab(_IsSelectedTab event, Emitter<ServiceRequestManagementState> emit) {
    final state = this.state;
    final typeList = state.types;
    Types item = event.type;
    final index = typeList.indexOf(item);
    if (!item.isSelected) {
      for (var element in typeList) {
        element.isSelected = false;
      }
      List<Types> types = List.from(typeList)..removeAt(index);
      types.insert(index, item.copyWith(isSelected: true));
      emit(state.copyWith(types: types,));
    }
  }
}
