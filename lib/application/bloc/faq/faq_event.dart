part of 'faq_bloc.dart';

@freezed
class FaqEvent with _$FaqEvent {
  const factory FaqEvent.getFaq({
    required String userId,
    required int page,
    required int limit,
  }) = _GetFaq;
  const factory FaqEvent.getFaqList() = _GetFaqList;
}
