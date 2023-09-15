import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/caregiver_submit_agreement_repo/caregiver_submit_agreement_repo.dart';

part 'caregiver_submit_agreement_bloc.freezed.dart';
part 'caregiver_submit_agreement_event.dart';
part 'caregiver_submit_agreement_state.dart';

class CaregiverSubmitAgreementBloc
    extends Bloc<CaregiverSubmitAgreementEvent, CaregiverSubmitAgreementState> {
  final CareGiverSubmitAgreementRepo careGiverSubmitAgreementRepo;

  CaregiverSubmitAgreementBloc(this.careGiverSubmitAgreementRepo)
      : super(const CaregiverSubmitAgreementState.initial()) {
    on<CaregiverSubmitAgreementEvent>((event, emit) async {
      await event.when(submit: (signatureUrl) async {
        emit(const CaregiverSubmitAgreementState.loading());
        final result = await careGiverSubmitAgreementRepo.submit(
            signatureUrl: signatureUrl);

        result.fold(
            (l) => emit(CaregiverSubmitAgreementState.failed(error: l.error)),
            (r) => emit(CaregiverSubmitAgreementState.success(
                data: r.message ?? "status")));
      });
    });
  }
}
