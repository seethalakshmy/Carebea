part of 'send_gift_bloc.dart';

@freezed
class SendGiftState with _$SendGiftState {
  const factory SendGiftState({
    required bool isLoadingButton,
    required bool isError,
    required String? error,
  }) = _SendGiftState;

  factory SendGiftState.initial() {
    return const SendGiftState(
      isError: false,
      error: null,
      isLoadingButton: false,
    );
  }
}
