import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/transaction_management/model/get_filters_response.dart';
import '../../../domain/transaction_management/model/transaction_details_response.dart';
import '../../../domain/transaction_management/model/transaction_list_response.dart';
import '../../../infrastructure/transaction_management/transactions_repository.dart';

part 'transaction_management_bloc.freezed.dart';
part 'transaction_management_event.dart';
part 'transaction_management_state.dart';

class TransactionManagementBloc
    extends Bloc<TransactionManagementEvent, TransactionManagementState> {
  TransactionsRepository transactionsRepository;
  List<FilterData> filterList = [];
  final int limit = 10;
  int paginationPage = 1;
  List<Transactions> mUserList = [];
  List<TransactionDetailsData> detailsList = [];
  TransactionDetailsData transactionDetailsData = TransactionDetailsData();
  int totalItems = 1;
  int pageIndex = 0;
  int start = 0;
  int end = 10;
  bool isClicked = false;
  String searchQuery = "";
  int filterId = 0;

  TransactionManagementBloc(this.transactionsRepository)
      : super(TransactionManagementState.initial()) {
    on<_GetTransactions>(_getTransactions);
    on<_GetFilters>(_getFilters);
    on<_HideOrShowDetails>(_hideOrShowDetails);
    on<_GetTransactionDetails>(_getTransactionDetails);
  }

  _getTransactions(
      _GetTransactions event, Emitter<TransactionManagementState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, TransactionListResponse> result =
        await transactionsRepository.getTransactions(
            userId: event.userId,
            page: event.page,
            limit: event.limit,
            searchTerm: event.searchTerm,
            filterId: event.filterId,
            token: '');
    var transactionState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      mUserList.clear();
      mUserList.addAll(r.data!.transactions!);
      return state.copyWith(response: r, isLoading: false);
    });
    emit(transactionState);
  }

  _getFilters(
      _GetFilters event, Emitter<TransactionManagementState> emit) async {
    emit(state.copyWith(isInitialLoading: true));
    final Either<ApiErrorHandler, GetFiltersResponse> result =
        await transactionsRepository.getFilters();
    TransactionManagementState filterState = result.fold((l) {
      return state.copyWith(
          isInitialLoading: false, filterOption: Some(Left(l)));
    }, (r) {
      filterList.clear();
      filterList.addAll(r.data!);
      return state.copyWith(
          isInitialLoading: false, filterOption: Some(Right(r)));
    });
    emit(filterState);
  }

  String formatDate(String givenDate) {
    DateTime dateTime = DateTime.parse(givenDate);

    String dateString = DateFormat('MM/dd/yyyy').format(dateTime);
    String timeString = DateFormat('HH:mm a').format(dateTime);

    return '$dateString, $timeString';
  }

  String formatDateToMonthName(String givenDate) {
    DateTime dateTime = DateTime.parse(givenDate);

    String dateString = DateFormat('MMM d yyyy').format(dateTime);
    String timeString = DateFormat('HH:mm a').format(dateTime);

    return '$dateString, $timeString';
  }

  _hideOrShowDetails(
      _HideOrShowDetails event, Emitter<TransactionManagementState> emit) {
    emit(state.copyWith(isClicked: !event.clicked));
    isClicked = !isClicked;
  }

  _getTransactionDetails(_GetTransactionDetails event,
      Emitter<TransactionManagementState> emit) async {
    emit(state.copyWith(isDetailsLoading: true));
    final Either<ApiErrorHandler, TransactionDetailsResponse> result =
        await transactionsRepository.getTransactionDetails(
            token: '',
            transactionId: event.transactionId,
            serviceId: event.serviceId);
    TransactionManagementState filterState = result.fold((l) {
      print("this is workng");
      return state.copyWith(
          isDetailsLoading: false,
          trDetailsOption: Some(Left(l)),
          error: l.error);
    }, (r) {
      detailsList.clear();
      detailsList.add(r.data!);
      transactionDetailsData = r.data!;
      return state.copyWith(
          isDetailsLoading: false, trDetailsOption: Some(Right(r)));
    });
    emit(filterState);
  }
}
