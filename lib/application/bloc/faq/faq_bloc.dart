import 'package:admin_580_tech/domain/faq/models/faq_list_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../infrastructure/faq/faq_repository.dart';

part 'faq_bloc.freezed.dart';
part 'faq_event.dart';
part 'faq_state.dart';

class FaqBloc extends Bloc<FaqEvent, FaqState> {
  FaqRepository faqRepository;
  List<FaqListData> faqList = [];

  FaqBloc(this.faqRepository) : super(FaqState.initial()) {
    on<_GetFaq>(_getFaq);
    on<_GetFaqList>(_getFaqList);
  }

  _getFaq(_GetFaq event, Emitter<FaqState> emit) async {
    // final Either<ApiErrorHandler, AdminGetResponse> adminResult =
    // await adminsRepository.getAdmins(
    //   userID: event.userId,
    //   page: event.page,
    //   limit: event.limit,
    //   roleId: event.roleId,
    //   status: event.status,
    //   searchTerm: event.searchTerm,
    // );
    // AdminsState adminState = adminResult.fold((l) {
    //   return state.copyWith(
    //     error: l.error,
    //     isLoading: false,
    //     isError: true,
    //     isClientError: l.isClientError ?? false,
    //   );
    // }, (r) {
    //   return state.copyWith(
    //     getAdminsResponse: r,
    //     isLoading: false,
    //   );
    // });
    // emit(
    //   adminState,
    // );
  }

  _getFaqList(_GetFaqList event, Emitter<FaqState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, FaqListResponseModel> faqListResult =
        await faqRepository.getFaqList();
    FaqState faqState = faqListResult.fold((l) {
      return state.copyWith(isLoading: false, faqListOption: Some(Left(l)));
    }, (r) {
      faqList.clear();
      faqList.addAll(r.data!);
      return state.copyWith(isLoading: false, faqListOption: Some(Right(r)));
    });
    emit(faqState);
  }
}
