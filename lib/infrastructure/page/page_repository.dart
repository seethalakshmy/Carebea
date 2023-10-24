import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/core/api_error_handler/api_error_handler.dart';
import '../../domain/on_boarding/models/common_response.dart';
import '../../domain/page/i_page_repo.dart';
import '../../domain/page/model/get_pages_response.dart';

class PageRepo extends IPageRepo {
  ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> createPage(
      {required String title,
      required String description,
      required String pageFor}) async {
    try {
      final response = await apiClient.createPage(title, description, pageFor);
      if (response.status == true) {
        return Right(response);
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    } on DioError catch (e) {
      if (e.message.contains("SocketException")) {
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, GetPagesResponse>> getPages() async {
    try {
      final response = await apiClient.getPages();
      return Right(response);
    } on DioError catch (e) {
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> updatePage(
      {required String userId,
      required String id,
      required String title,
      required String description,
      required String pageFor}) async {
    try {
      final response =
          await apiClient.updatePage(userId, id, title, description, pageFor);
      if (response.status == true) {
        return Right(response);
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    } on DioError catch (e) {
      if (e.message.contains("SocketException")) {
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> deletePage({
    required String id,
  }) async {
    try {
      final response = await apiClient.deletePage(id);
      if (response.status == true) {
        return Right(response);
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    } on DioError catch (e) {
      if (e.message.contains("SocketException")) {
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }
}
