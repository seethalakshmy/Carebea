import 'package:admin_580_tech/domain/subscription/model/subscription_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/subscription/subscription_repository.dart';

part 'subscription_bloc.freezed.dart';

part 'subscription_event.dart';

part 'subscription_state.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  SubscriptionRepository subscriptionRepository;
  List<FinalResult> subscriptionList = [];
  List<Pagination> paginationList = [];
  int filterId = 0;
  int statusId = -1;
  DateTime? selectedToDateTime;
  DateTime? selectedFromDateTime;
  String selectedFromDate = "";
  String selectedToDate = "";

  SubscriptionBloc(this.subscriptionRepository)
      : super(SubscriptionState.initial()) {
    on<_GetSubscription>(_getSubscribedClients);
  }

  _getSubscribedClients(
      _GetSubscription event, Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, SubscriptionModel> result =
        await subscriptionRepository.getSubscribedClient(
            userId: event.userId,
            page: event.page,
            limit: event.limit,
            searchTerm: event.searchTerm,
            status: event.status,
            startDate: event.startDate,
            endDate: event.endDate,
            subscriptionType: event.subscriptionType);
    var homeState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      subscriptionList.clear();
      subscriptionList.addAll(r.data!.finalResult!);

      paginationList.clear();
      paginationList.add(r.data!.pagination!);
      return state.copyWith(response: r, isLoading: false);
    });
    emit(homeState);
  }
}
