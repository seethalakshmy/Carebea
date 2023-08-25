part of 'faq_creation_bloc.dart';

@freezed
class FaqCreationEvent with _$FaqCreationEvent {
  const factory FaqCreationEvent.addFaq(
      {required BuildContext context,
      required String question,
      required String answer,
      String? profilePic}) = _AddFaq;

  const factory FaqCreationEvent.updateFaq({
    required String userId,
    required BuildContext context,
    required String question,
    required String answer,
  }) = _UpdateFaq;
}
