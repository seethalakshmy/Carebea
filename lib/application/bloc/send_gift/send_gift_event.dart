part of 'send_gift_bloc.dart';

@freezed
class SendGiftEvent with _$SendGiftEvent {
  const factory SendGiftEvent.sendGift({
    required BuildContext context,
    required String userId,
    required String title,
    required String description,
  }) = _SendGift;
}
