import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_handler.freezed.dart';

@freezed
class ApiErrorHandler with _$ApiErrorHandler {
  const factory ApiErrorHandler.clientFailure({required String error})=ClientFailure;
  const factory ApiErrorHandler.serverFailure({required String error})=ServerFailure;
}

