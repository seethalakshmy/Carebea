import 'package:carebea/app/modules/remark_history/repo/remark_history_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/remark_history_response.dart';

class RemarkHistoryController extends GetxController {
  int pageSize = 10;
  int pageNumber = 0;
  RxBool isLoading = false.obs;
  RxList<PaymentFollowupsList> remarkHistory = RxList<PaymentFollowupsList>();
  RemarkHistoryRepo remarkHistoryRepo = RemarkHistoryRepo();

  ScrollController scrollController = ScrollController();
  int? shopId = 0;

  @override
  void onInit() {
    shopId = Get.arguments['shop_id'];
    debugPrint("shopId $shopId");
    scrollController.addListener(() {
      if (((scrollController.position.maxScrollExtent * .7) <=
              scrollController.position.pixels) &&
          !isPaginating.value) {
        debugPrint("pixel change ${scrollController.position}");
        paginate();
      }
    });
    // fetchRemarkHistory(shopId: shopId!);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  fetchRemarkHistory({required int shopId}) async {
    remarkHistory.clear();
    pageNumber = 0;

    isLoading(true);
    var remarkHistoryResponse = await remarkHistoryRepo.remarkHistory(
        shopId: shopId, limit: pageSize, pageNumber: pageNumber);
    if (remarkHistoryResponse.result?.status ?? false) {
      pageNumber += 1;
      remarkHistory(remarkHistoryResponse.result?.paymentFollowupsList ?? []);
    } else {
      remarkHistory.clear();
    }

    isLoading(false);
  }

  RxBool isPaginating = false.obs;
  Future<void> _paginateRemarkHistory() async {
    var remarkHistoryResponse = await remarkHistoryRepo.remarkHistory(
        shopId: shopId!, limit: pageSize, pageNumber: pageNumber);
    if ((remarkHistoryResponse.result?.status ?? false) &&
        ((remarkHistoryResponse.result?.count ?? 0) > 0)) {
      pageNumber += 1;
      remarkHistory.addAll(remarkHistoryResponse.result!.paymentFollowupsList!);
    }
  }

  paginate() async {
    isPaginating(true);
    await _paginateRemarkHistory();

    isPaginating(false);
  }
}
