import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/on_boarding/models/common_response.dart';
import '../../../domain/resend_otp/resend_otp_repo.dart';

part 'resend_otp_bloc.freezed.dart';
part 'resend_otp_event.dart';
part 'resend_otp_state.dart';

class ResendOtpBloc extends Bloc<ResendOtpEvent, ResendOtpState> {
  final ResendOTPRepo repo;

  ResendOtpBloc(this.repo) : super(const ResendOtpState.initial()) {
    on<ResendOtpEvent>((event, emit) async {
      await event.when(resend: (userId, type) async {
        emit(const ResendOtpState.loading());
        final response = await repo.resendOTP(userId: userId, type: type);
        response.fold((l) => emit(ResendOtpState.failed(error: l.error)),
            (r) => emit(ResendOtpState.success(data: r)));
      });
    });
  }
}
