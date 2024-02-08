import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../core/custom_snackbar.dart';
import '../../../core/enum.dart';
import '../../../domain/complaint_details/models/complaint_details_response_model.dart';
import '../../../domain/complaint_details/models/get_service_response_model.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/transaction_management/model/transaction_details_response.dart';
import '../../../infrastructure/complaint_details/complaint_details_repository.dart';
import '../../../presentation/complaint_details/widgets/service_details_dialog_widget.dart';

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
  List<TransactionDetailsData> detailsList = [];
  TransactionDetailsData transactionDetailsData = TransactionDetailsData();

  ComplaintDetailBloc(this.complaintDetailsRepository)
      : super(ComplaintDetailState.initial()) {
    on<_GetComplaintDetails>(_getComplaintDetails);
    on<_UpdateComplaint>(_updateComplaint);
    on<_GetService>(_getService);
    on<_GetTransactionDetails>(_getTransactionDetails);
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
      CSnackBar.showError(event.context, msg: l.error);

      return state.copyWith(
          error: l.error,
          updateComplaintOption: Some(Left(l)),
          isLoading: false);
    }, (r) {
      add(ComplaintDetailEvent.getComplaintDetails(complaintId: compId));
      CSnackBar.showSuccess(event.context,
          msg: AppString.complaintStatusChangedSuccessfully.val);
      return state.copyWith(
          updateComplaintOption: Some(Right(r)), isLoading: false);
    });
    emit(userState);
  }

  _getService(_GetService event, Emitter<ComplaintDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, GetServiceResponseModel> result =
        await complaintDetailsRepository.getService(
            userId: SharedPreffUtil().getAdminId, serviceId: event.serviceId);
    var userState = result.fold((l) {
      return state.copyWith(
          error: l.error, getServiceOption: Some(Left(l)), isLoading: false);
    }, (r) {
      showDialog(
          context: event.context,
          builder: (BuildContext context) {
            return ServiceDetailsDialogWidget(
              service: r.data!,
              title: getTitle(r.data!.status!.toInt()),
            );
          });
      return state.copyWith(getServiceOption: Some(Right(r)), isLoading: false);
    });
    emit(userState);
  }

  _getTransactionDetails(
      _GetTransactionDetails event, Emitter<ComplaintDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, TransactionDetailsResponse> result =
        await complaintDetailsRepository.getTransactionDetails(
            token: '',
            transactionId: event.transactionId,
            serviceId: event.serviceId);
    ComplaintDetailState filterState = result.fold((l) {
      return state.copyWith(
          isLoading: false, trDetailsOption: Some(Left(l)), error: l.error);
    }, (r) {
      if (r.status ?? false) {
        detailsList.clear();
        detailsList.add(r.data!);
        transactionDetailsData = r.data!;
        return state.copyWith(
            isLoading: false, trDetailsOption: Some(Right(r)));
      } else {
        return state.copyWith(isLoading: false, error: r.message);
      }
    });
    emit(filterState);
  }

  String getTitle(int tabType) {
    if (tabType == 1) {
      return AppString.pending.val;
    } else if (tabType == 2) {
      return AppString.completed.val;
    } else if (tabType == 3) {
      return AppString.canceled.val;
    } else if (tabType == 4) {
      return AppString.upcoming.val;
    } else {
      return AppString.processing.val;
    }
  }

  String formatDate(String givenDate) {
    DateTime dateTime = DateTime.parse(givenDate);

    String dateString = DateFormat('MMMM dd, yyyy').format(dateTime);
    String timeString = DateFormat('HH:mm a').format(dateTime);

    return '$dateString, $timeString';
  }

  String formatDateToMonthName(String givenDate) {
    DateTime dateTime = DateTime.parse(givenDate);

    String dateString = DateFormat('MMMM dd, yyyy').format(dateTime);
    String timeString = DateFormat('HH:mm a').format(dateTime);

    return '$dateString, $timeString';
  }

  String generateFormattedDate(String date) {
    DateTime inputDate = DateTime(0);
    if (date.contains('GMT+0000')) {
      return convertDateFormat(date);
    } else {
      inputDate = DateTime.parse(date);
      DateFormat dateFormat = DateFormat('MMMM dd, yyyy , hh:mm a');
      String formattedDate = dateFormat.format(inputDate);
      return formattedDate;
    }
  }

  String convertDateFormat(String inputDate) {
    List<String> parts = inputDate.split(' ');
    Map<String, String> monthMapping = {
      'Jan': '01',
      'Feb': '02',
      'Mar': '03',
      'Apr': '04',
      'May': '05',
      'Jun': '06',
      'Jul': '07',
      'Aug': '08',
      'Sep': '09',
      'Oct': '10',
      'Nov': '11',
      'Dec': '12',
    };

    String day = parts[2];
    String? month = monthMapping[parts[1]] ?? "";
    String year = parts[3];
    List<String> time = parts[4].split(":");
    String hour = time[0];
    String minute = time[1];
    String amPm = int.parse(hour) < 12 ? "AM" : "PM";

    String formattedDate = '$month-$day-$year, $hour:$minute $amPm';
    return formattedDate;
  }
}
