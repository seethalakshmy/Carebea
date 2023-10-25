import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/master/model/region_list_response.dart';
import '../../../infrastructure/master/master_repository.dart';

part 'master_bloc.freezed.dart';

part 'master_event.dart';

part 'master_state.dart';

class MasterBloc extends Bloc<MasterEvent, MasterState> {
  MasterRepository masterRepository;

  List<RegionList> regionLIst = [];
  String selectedRegionId = '';

  MasterBloc(this.masterRepository) : super(MasterState.initial()) {
    on<_GetRegionList>(_getRegionList);
  }

  _getRegionList(_GetRegionList event, Emitter<MasterState> emit) async {
    emit(state.copyWith(isRegionLoading: true));
    final Either<ApiErrorHandler, RegionListResponse> result =
        await masterRepository.getRegionList();
    MasterState masterState = result.fold((l) {
      return state.copyWith(
        isRegionLoading: false,
      );
    }, (r) {
      regionLIst.clear();
      regionLIst.addAll(r.data!);
      return state.copyWith(
        isRegionLoading: false,
      );
    });
    emit(masterState);
  }
}
