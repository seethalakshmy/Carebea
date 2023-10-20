import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/on_boarding/models/common_response.dart';
import '../../../infrastructure/page/page_repository.dart';

part 'page_bloc.freezed.dart';

part 'page_event.dart';

part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageRepo pageRepo;

  PageBloc(this.pageRepo) : super(PageState.initial()) {
    on<_CreatePage>(_createPage);
  }

  _createPage(_CreatePage event, Emitter<PageState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await pageRepo.createPage(
            title: event.title,
            description: event.description,
            pageFor: event.pageFor ?? '');
    PageState pageState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(
        isLoading: false,
        isError: true,
      );
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        // autoTabRouter?.setActiveIndex(10);
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        response: r,
        isLoading: false,
      );
    });
    emit(
      pageState,
    );
  }
}
