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

  PageBloc(this.pageRepo) : super(PageState.initial()) {
    on<_CreatePage>(_createPage);
    on<_GetPages>(_getPages);
    on<_RadioForClient>(_radioForClient);
    on<_UpdatePage>(_updatePage);
    on<_DeletePage>(_deletePage);
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
        autoTabRouter?.setActiveIndex(24);
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

  _getPages(_GetPages event, Emitter<PageState> emit) async {
    final Either<ApiErrorHandler, GetPagesResponse> homeResult =
        await pageRepo.getPages();
    PageState homeState = homeResult.fold((l) {
      return state.copyWith(
        isLoading: false,
        isError: true,
      );
    }, (r) {
      pageList.clear();
      pageList.addAll(r.data!);
      return state.copyWith(
        getPagesResponse: r,
        isLoading: false,
      );
    });
    emit(
      homeState,
    );
  }

  _radioForClient(_RadioForClient event, Emitter<PageState> emit) {
    emit(state.copyWith(isForClient: event.isSelected!));
  }

  _updatePage(_UpdatePage event, Emitter<PageState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await pageRepo.updatePage(
            userId: event.userId,
            id: event.id,
            title: event.title,
            description: event.description,
            pageFor: event.pageFor ?? ' ');
    PageState pageState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(
        isLoading: false,
        isError: true,
      );
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        autoTabRouter?.setActiveIndex(24);
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

  _deletePage(_DeletePage event, Emitter<PageState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, CommonResponse> result =
        await pageRepo.deletePage(
      id: event.id,
    );
    PageState pageState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(
        isLoading: false,
        isError: true,
      );
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        add(PageEvent.getPages());
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
