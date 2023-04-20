part of 'data_table_bloc.dart';

@freezed
class DataTableEvent with _$DataTableEvent {
  const factory DataTableEvent.rebuild({required int page, required int limit}) = _Rebuild;
}