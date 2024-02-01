import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/on_boarding/models/common_response.dart';
import '../../../domain/page/model/get_pages_response.dart';
import '../../../infrastructure/page/page_repository.dart';
import '../../../presentation/side_menu/side_menu_page.dart';

part 'page_bloc.freezed.dart';

part 'page_event.dart';

part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageRepo pageRepo;
  List<PageData> pageList = [];
  final TextEditingController titleController = TextEditingController();
  int radioValue = 0;

  PageBloc(this.pageRepo)
      : super(PageState.initial(
            radioValue: 0,
            isLoading: false,
            getPagesResponse: null,
            isError: false,
            isForClient: 0,
            response: null)) {
    // on<_CreatePage>(_createPage);
    on<_GetPages>(_getPages);
    on<_RadioForClient>(_radioForClient);
    on<_UpdatePage>(_updatePage);
    on<_DeletePage>(_deletePage);
  }

  _getPages(_GetPages event, Emitter<PageState> emit) async {
    emit(PageState.loading());
    final Either<ApiErrorHandler, GetPagesResponse> homeResult =
        await pageRepo.getPages();
    PageState homeState = homeResult.fold((l) {
      return PageState.initial(
          radioValue: radioValue,
          isLoading: false,
          getPagesResponse: null,
          isError: true,
          isForClient: 0,
          response: null);
    }, (r) {
      pageList.clear();
      pageList.addAll(r.data!);

      return PageState.initial(
          radioValue: radioValue,
          isLoading: false,
          getPagesResponse: r,
          isError: false,
          isForClient: 0,
          response: null);
    });
    emit(
      homeState,
    );
  }

  _radioForClient(_RadioForClient event, Emitter<PageState> emit) {
    emit(PageState.loading());
    radioValue = event.isSelected != null ? event.isSelected! : radioValue;

    emit(PageState.initial(
        radioValue: radioValue,
        isLoading: false,
        getPagesResponse: null,
        isError: false,
        isForClient: 0,
        response: null));
  }

  _updatePage(_UpdatePage event, Emitter<PageState> emit) async {
    emit(PageState.loading());

    final Either<ApiErrorHandler, CommonResponse> result =
        await pageRepo.updatePage(
            userId: event.userId,
            id: event.id,
            title: event.title,
            description: event.description,
            pageFor: event.pageFor ?? ' ');
    PageState pageState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return PageState.initial(
          radioValue: radioValue,
          isLoading: false,
          getPagesResponse: null,
          isError: true,
          isForClient: 0,
          response: null);

      // return state.copyWith(
      //     isLoading: false, isError: true, radioValue: radioValue);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: "Updated successfully");
        autoTabRouter?.setActiveIndex(24);
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      // return state.copyWith(
      //     response: r, isLoading: false, radioValue: radioValue);
      return PageState.initial(
          radioValue: radioValue,
          isLoading: false,
          getPagesResponse: null,
          isError: true,
          isForClient: 0,
          response: r);
    });
    emit(
      pageState,
    );
  }

  _deletePage(_DeletePage event, Emitter<PageState> emit) async {
    emit(PageState.loading());

    // emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await pageRepo.deletePage(
      id: event.id,
    );
    PageState pageState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return PageState.initial(
          radioValue: radioValue,
          isLoading: false,
          getPagesResponse: null,
          isError: true,
          isForClient: 0,
          response: null);

      // return state.copyWith(
      //     isLoading: false, isError: true, radioValue: radioValue);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: "Page deleted successfully");
        add(const PageEvent.getPages());
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      // return state.copyWith(
      //     response: r, isLoading: false, radioValue: radioValue);
      return PageState.initial(
          radioValue: radioValue,
          isLoading: false,
          getPagesResponse: null,
          isError: true,
          isForClient: 0,
          response: r);
    });
    emit(
      pageState,
    );
  }
}
