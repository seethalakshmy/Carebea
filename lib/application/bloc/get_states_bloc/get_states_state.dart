part of 'get_states_bloc.dart';

@freezed
class GetStatesState with _$GetStatesState {
  const factory GetStatesState.initial() = _Initial;
  const factory GetStatesState.loading({required List<StateItem> data}) =
      _Loading;
  const factory GetStatesState.failed({required String error}) = _Failed;
  const factory GetStatesState.success({required List<StateItem> data}) =
      _Success;
}
