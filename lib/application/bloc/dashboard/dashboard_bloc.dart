import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/dashboard/dashboard_repository.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardRepository dashboardRepository;

  DashboardBloc(this.dashboardRepository) : super(DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async {
      if (event is _ChangeAxis) {
        print('inside bloc ${event.filterId}');
        emit(state.copyWith(filterId: event.filterId));
      }
    });
  }
}
