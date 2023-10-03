part of 'faq_creation_bloc.dart';

@freezed
class FaqCreationEvent with _$FaqCreationEvent {
  const factory FaqCreationEvent.getFaq({required String id}) = _GetFaq;
  const factory FaqCreationEvent.addFaq(
      {required BuildContext context,
      required String question,
      required String answer,
      required String status,
      required bool forClient,
      String? profilePic}) = _AddFaq;

  const factory FaqCreationEvent.updateFaq({
    required String id,
    required String question,
    required String answer,
    required String status,
    required bool forClient,
    required BuildContext context,
  }) = _UpdateFaq;
  const factory FaqCreationEvent.radioForClient({required int isSelected}) =
      _RadioForClient;
}
