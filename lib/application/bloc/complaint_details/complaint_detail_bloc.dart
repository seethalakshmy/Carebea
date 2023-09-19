import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/complaint_details/models/complaint_details_response_model.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/complaint_details/complaint_details_repository.dart';

part 'complaint_detail_bloc.freezed.dart';
part 'complaint_detail_event.dart';
part 'complaint_detail_state.dart';

class ComplaintDetailBloc
    extends Bloc<ComplaintDetailEvent, ComplaintDetailState> {
  ComplaintDetailsRepository complaintDetailsRepository;
  List<ComplaintDetailsData> complaintDetailsList = [];
  ComplaintDetailsData complaintDetailsData = ComplaintDetailsData();
  int selectedStatusFromDropdown = 0;
  String compId = '';

  ComplaintDetailBloc(this.complaintDetailsRepository)
      : super(ComplaintDetailState.initial()) {
    on<_GetComplaintDetails>(_getComplaintDetails);
    on<_UpdateComplaint>(_updateComplaint);
  }

  _getComplaintDetails(
      _GetComplaintDetails event, Emitter<ComplaintDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, ComplaintDetailsResponseModel> result =
        await complaintDetailsRepository.getComplaintDetails(
            complaintId: event.complaintId);
    var userState = result.fold((l) {
      return state.copyWith(
          error: l.error,
          complaintDetailsOption: Some(Left(l)),
          isLoading: false);
    }, (r) {
      complaintDetailsData = r.data!;
      complaintDetailsList.clear();
      complaintDetailsList.add(r.data!);
      print("api calling worked");
      return state.copyWith(
          complaintDetailsOption: Some(Right(r)), isLoading: false);
    });
    emit(userState);
  }

  _updateComplaint(
      _UpdateComplaint event, Emitter<ComplaintDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await complaintDetailsRepository.updateComplaint(
            adminId: SharedPreffUtil().getAdminId,
            complaintId: event.complaintId,
            status: event.status,
            comment: event.comment);
    var userState = result.fold((l) {
      return state.copyWith(
          error: l.error,
          updateComplaintOption: Some(Left(l)),
          isLoading: false);
    }, (r) {
      add(ComplaintDetailEvent.getComplaintDetails(complaintId: compId));
      return state.copyWith(
          updateComplaintOption: Some(Right(r)), isLoading: false);
    });
    emit(userState);
  }
}
