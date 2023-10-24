part of 'page_bloc.dart';

@freezed
class PageEvent with _$PageEvent {
  const factory PageEvent.createPage({
    required String title,
    required String description,
    required String? pageFor,
    required BuildContext context,
  }) = _CreatePage;

  const factory PageEvent.getPages() = _GetPages;

  const factory PageEvent.radioForClient({int? isSelected}) = _RadioForClient;

  const factory PageEvent.updatePage({
    required String userId,
    required String id,
    required String title,
    required String description,
    required String? pageFor,
    required BuildContext context,
  }) = _UpdatePage;

  const factory PageEvent.deletePage({
    required String id,
    required BuildContext context,
  }) = _DeletePage;
}
