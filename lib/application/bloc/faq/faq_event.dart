part of 'faq_bloc.dart';

@freezed
class FaqEvent with _$FaqEvent {
  const factory FaqEvent.getFaqList({required String searchTerm}) = _GetFaqList;

  const factory FaqEvent.deleteFaq(
      {required String faqId, required BuildContext context}) = _DeleteFaq;
}
