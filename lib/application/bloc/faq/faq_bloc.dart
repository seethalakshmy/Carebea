import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/admins/admins_repository.dart';
import '../../../infrastructure/faq/faq_repository.dart';

part 'faq_event.dart';
part 'faq_state.dart';
part 'faq_bloc.freezed.dart';

class FaqBloc extends Bloc<FaqEvent, FaqState> {
  FaqRepository faqRepository;

  FaqBloc(this.faqRepository) : super(FaqState.initial()) {
    on<_GetFaq>(_getFaq);
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
}
