import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/user_management/i_users_repo.dart';
import 'package:admin_580_tech/domain/user_management/model/name.dart';
import 'package:admin_580_tech/domain/user_management/model/user_data.dart';
import 'package:admin_580_tech/domain/user_management/model/user_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/user_management/model/users.dart';

class UsersRepository implements IUsersRepo {
  final ApiClient _apiClient = ApiClient();
  List<Users> mUsers = [
    Users(
      userId: "#ID111",
      isActive: true,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "John", lastName: "Simon"),
    ),
    Users(
      userId: "#ID112",
      isActive: false,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "David", lastName: "Simon"),
    ),
    Users(
      userId: "#ID113",
      isActive: true,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "John", lastName: "Angel"),
    ),
    Users(
      userId: "#ID114",
      isActive: true,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "Patrick", lastName: "Bateman"),
    ),
    Users(
      userId: "#ID115",
      isActive: false,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "Denzel", lastName: "Washington"),
    ),
    Users(
      userId: "#ID116",
      isActive: true,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "Chris", lastName: "Simon"),
    ),
    Users(
      userId: "#ID117",
      isActive: true,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "David", lastName: "Simon"),
    ),
    Users(
      userId: "#ID118",
      isActive: false,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "Elon", lastName: "Musk"),
    ),
    Users(
      userId: "#ID119",
      isActive: true,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "Jordan", lastName: "Simon"),
    ),
    Users(
      userId: "#ID110",
      isActive: true,
      email: "test1@gmail.com",
      profile: "",
      mobile: "9567200199",
      role: "Decision Maker",
      name: Name(firstName: "Jacob", lastName: "Simon"),
    ),
  ];

  @override
  Future<Either<ApiErrorHandler, UserResponse>> getUsers(
      {required int page, required int limit}) async {
    try {
      final response =
          UserResponse(status: true, data: UserData(users: mUsers));

      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
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
}
