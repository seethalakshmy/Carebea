import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../domain/complaints/model/complaints_list_response_model.dart';
import '../../../domain/complaints/model/final_result.dart';
import '../../../domain/complaints/model/pagination.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/complaints/complaints_repository.dart';

part 'complaints_bloc.freezed.dart';
part 'complaints_event.dart';
part 'complaints_state.dart';

class ComplaintsBloc extends Bloc<ComplaintsEvent, ComplaintsState> {
  ComplaintsRepository complaintsRepository;
  List<FinalResult> complaintList = [];
  List<Pagination> paginationList = [];
  List count = [];
  String selectedFromDate = "";
  String selectedToDate = "";
  DateTime selectedFromDateTime = DateTime(2020);
  DateTime? selectedToDateTime;
  bool isClearFilterClicked = false;

  ComplaintsBloc(this.complaintsRepository) : super(ComplaintsState.initial()) {
    on<_GetComplaints>(_getComplaints);
  }

  _getComplaints(_GetComplaints event, Emitter<ComplaintsState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, ComplaintsListResponseModel> result =
        await complaintsRepository.getComplaints(
            userId: event.userId,
            page: event.page,
            limit: event.limit,
            searchTerm: event.searchTerm,
            status: event.status,
            startDate: event.startDate,
            endDate: event.endDate);
    var userState = result.fold((l) {
      return state.copyWith(
          error: l.error, complaintListOption: Some(Left(l)), isLoading: false);
    }, (r) {
      complaintList.clear();
      complaintList.addAll(r.data!.finalResult!);
      count = [
        r.data!.totalCaIssue.toString(),
        r.data!.serviceRelatedIssue.toString(),
        r.data!.transactionRelatedIssue.toString(),
        r.data!.generalIssue.toString()
      ];
      paginationList.clear();
      paginationList.add(r.data!.pagination!);
      return state.copyWith(
          complaintListOption: Some(Right(r)), isLoading: false);
    });
    emit(userState);
  }

  String generateFormattedDate(String date) {
    DateTime inputDate = DateTime.parse(date);
    DateFormat dateFormat = DateFormat('MM-dd-yyyy , hh:mm a');
    String formattedDate = dateFormat.format(inputDate);
    return formattedDate;
  }
}
