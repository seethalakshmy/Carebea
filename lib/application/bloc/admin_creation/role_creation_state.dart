part of 'role_creation_bloc.dart';

@freezed
class AdminCreationState with _$AdminCreationState {
  const factory AdminCreationState({
    required bool isLoading,
    required bool isError,
    required String? error,
    required CommonResponse? response,
  }) = _AdminCreationState;

  factory AdminCreationState.initial() {
    return const AdminCreationState(
      isLoading: true,
      isError: false,
      response: null,
      error: null,
    );
  }
}
