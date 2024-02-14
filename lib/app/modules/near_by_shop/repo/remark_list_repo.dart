import 'package:carebea/app/modules/near_by_shop/data/remark_list_datasource.dart';
import 'package:carebea/app/modules/near_by_shop/models/remark_submit_response.dart';
import 'package:carebea/app/modules/shops/data/shop_list_datasource.dart';
import 'package:carebea/app/modules/near_by_shop/models/remark_model.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:flutter/cupertino.dart';

class RemarkListRepo {
  RemarkListDataSource remarkListDataSource = RemarkListDataSource();

  ///RemarkList
  Future<RemarkModel> remarkList() async {
    return remarkListDataSource.remarkList();
  }

  Future<RemarkSubmitResponse> remarkSubmit(
      {required int userId,
      required int commentId,
      required int shopId}) async {
    return remarkListDataSource.remarkSubmission(
        userId: userId, commentId: commentId, shopId: shopId);
  }
}
