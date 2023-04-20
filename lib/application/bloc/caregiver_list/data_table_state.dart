part of 'data_table_bloc.dart';

@freezed
class DataTableState with _$DataTableState {
  const factory DataTableState.initial() = _Initial;
  const factory DataTableState.loading() = _Loading;
  const factory DataTableState.success({required CaregiversResponse? response}) = _Success;
  const factory DataTableState.error({ String? msg}) = _Error;
}
