import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/on_boarding/models/common_response.dart';
import '../../../infrastructure/send_gift/send_gift_respository.dart';
import '../../../presentation/routes/app_router.gr.dart';

part 'send_gift_bloc.freezed.dart';

part 'send_gift_event.dart';

part 'send_gift_state.dart';

class SendGiftBloc extends Bloc<SendGiftEvent, SendGiftState> {
  SendGiftRepository sendGiftRepository;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  SendGiftBloc(this.sendGiftRepository) : super(SendGiftState.initial()) {
    on<_SendGift>(_sendGift);
  }

  _sendGift(_SendGift event, Emitter<SendGiftState> emit) async {
    emit(state.copyWith(
      isLoadingButton: true,
    ));
    final Either<ApiErrorHandler, CommonResponse> result =
        await sendGiftRepository.sendGift(
            event.userId, event.title, event.description);
    SendGiftState sendGiftState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");

      return state.copyWith(
        isLoadingButton: false,
      );
    }, (r) {
      CSnackBar.showSuccess(event.context, msg: "Successfully send gift");

      event.context.router.navigate(const UpcomingBirthdayRoute());
      return state.copyWith(isLoadingButton: false);
    });
    emit(sendGiftState);
  }
}
