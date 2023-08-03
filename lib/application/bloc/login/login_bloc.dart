import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/login/login_response.dart';
import 'package:admin_580_tech/infrastructure/login/login_repository.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/routes/app_router.gr.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository;

  LoginBloc(this.loginRepository) : super(LoginState.initial()) {
    on<_Login>(_login);
  }

  _login(_Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, LoginResponse> homeResult =
        await loginRepository.login(
            email: event.email, password: event.password);
    LoginState stateResult = homeResult.fold((l) {
      CSnackBar.showSuccess(event.context, msg: l.error ?? "");
      return state.copyWith(
          error: l.error,
          isLoading: false,
          isError: true,
          isClientError: l.isClientError ?? false);
    }, (r) {
      if (r.status ?? false) {
        SharedPreffUtil sharedPrefUtil = SharedPreffUtil();
        sharedPrefUtil.setLogin = true;
        sharedPrefUtil.setAdminId = r.data?.userId ?? "";
        sharedPrefUtil.setAccessToken = r.data?.accessToken ?? "";
        sharedPrefUtil.setViewRole = r.data?.permissions?.role?.view ?? false;
        sharedPrefUtil.setEditRole = r.data?.permissions?.role?.view ?? false;
        sharedPrefUtil.setDeleteRole =
            r.data?.permissions?.role?.delete ?? false;

        sharedPrefUtil.setViewAdmin = r.data?.permissions?.admin?.view ?? false;
        sharedPrefUtil.setEditAdmin = r.data?.permissions?.admin?.edit ?? false;
        sharedPrefUtil.setDeleteAdmin =
            r.data?.permissions?.admin?.delete ?? false;

        sharedPrefUtil.setViewCareGiver =
            r.data?.permissions?.careAmbassador?.view ?? false;
        // sharedPrefUtil.setEditCareGiver =
        //     r.data?.permissions?.careAmbassador?.edit ?? false;

        sharedPrefUtil.setViewServiceRequest =
            r.data?.permissions?.services?.view ?? false;
        sharedPrefUtil.setEditServiceRequest =
            r.data?.permissions?.services?.edit ?? false;

        sharedPrefUtil.setViewTransaction =
            r.data?.permissions?.transactions?.view ?? false;

        event.context.router.replace(const SideMenuRoute());
        // autoTabRouter?.setActiveIndex(1);
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }

      return state.copyWith(
        response: r,
        isLoading: false,
      );
    });
    emit(
      stateResult,
    );
  }
}
