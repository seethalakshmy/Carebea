import 'package:admin_580_tech/domain/caregiver_list/care_givers_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/infrastructure/caregiver_list/care_giver_list_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_table_event.dart';

part 'data_table_state.dart';

part 'data_table_bloc.freezed.dart';

class DataTableBloc extends Bloc<DataTableEvent, DataTableState> {
  CareGiverListRepository careGiverListRepository;

  DataTableBloc(this.careGiverListRepository)
      : super(const DataTableState.initial()) {
    on<DataTableEvent>((event, emit) async {
      if (event is _Rebuild) {
        print('called rebuild');
        emit(const DataTableState.loading());
        final Either<ApiErrorHandler, CaregiversResponse> homeResult =
            await careGiverListRepository.getCareGivers(
                page: event.page, limit: event.limit);
        DataTableState homeState = homeResult.fold((l) {
          return DataTableState.error(msg: l.error);
        }, (r) {
          return DataTableState.success(response: r);
        });
        print('returned rebuild');
        emit(homeState);
      }
    });
  }
}
