part of 'page_bloc.dart';

@freezed
class PageEvent with _$PageEvent {
  const factory PageEvent.createPage({
    required String title,
    required String description,
    required String? pageFor,
    required BuildContext context,
  }) = _CreatePage;
}
