import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/modules/shops/models/payment_model.dart';
import 'package:carebea/app/modules/near_by_shop/models/remark_model.dart';
import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/modules/shops/repo/order_list_repo.dart';
import 'package:carebea/app/modules/shops/repo/payment_repo.dart';
import 'package:carebea/app/modules/near_by_shop/repo/remark_list_repo.dart';
import 'package:carebea/app/modules/shops/repo/shop_list_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/shared_prefs.dart';
import '../../create_order/model/create_order.dart';
import '../models/remark_submit_response.dart';

class NearByShopsController extends GetxController {
  ShopListRepo shopListRepo = ShopListRepo();
  OrderListRepo orderListRepo = OrderListRepo();
  RemarkListRepo remarkListRepo = RemarkListRepo();
  RxBool isOrdersLoading = true.obs;
  RxBool isLoading = true.obs;
  RxBool isRemarksLoading = true.obs;
  RxBool isRemarksSubmitLoading = false.obs;
  ShopListResponse? shopDetailResponse;
  RemarkModel? remarkModel;
  RxList<ShopList> shopList = RxList<ShopList>();
  FilterVal? filterVals;
  RxBool isFilterClick = false.obs;
  RxBool isShopDetailsLoading = false.obs;
  DateTime? backbuttonpressedTime;
  OrderListResponse? orderListResponse;
  List<History>? orderHistory;
  List<PaymentCommentsList>? remarkList;
  PaymentRepo paymentRepo = PaymentRepo();
  PaymentResponse? paymentResponse;
  RemarkSubmitResponse? remarkSubmitResponse;
  RxString selectedReason = 'Choose'.obs;
  RxInt selectedReasonId = 0.obs;

  int pageNumber = 0;
  int pageSize = 10;
  ScrollController scrollController = ScrollController();

  Rx<PaymentMethod?> selectedPaymentMethod = Rx<PaymentMethod?>(null);
  TextEditingController collectedAmountEditingController =
      TextEditingController();
  TextEditingController cheqNoController = TextEditingController();
  TextEditingController searchEditingController = TextEditingController();

  Rx<SearchType> selectedSearchtype = Rx(
    SearchType("Name", "name"),
  );

  List<SearchType> searchitems = [
    SearchType("Name", "name"),
    SearchType("Phone", "phone"),
    SearchType("Local Area", "local_area"),
  ];

  final count = 0.obs;

  @override
  void onInit() {
    scrollController.addListener(() {
      if (((scrollController.position.maxScrollExtent * .7) <=
              scrollController.position.pixels) &&
          !isPaginating.value) {
        paginate();
      }
    });
    fetchAllShops();
    fetchRemarks();
    super.onInit();
  }

  fetchAllShops() async {
    searchEditingController.text = "";
    shopList.clear();
    filterSelected("");
    pageNumber = 0;

    isLoading(true);
    var shopListResponse = await shopListRepo.shopList(SharedPrefs.getUserId()!,
        pageNumber: pageNumber, pageSize: pageSize);
    if (shopListResponse.shopListResult?.status ?? false) {
      pageNumber += 1;
      shopList(shopListResponse.shopListResult?.shopList ?? []);

      filterVals = shopListResponse.shopListResult!.filterVals;
    } else {
      shopList.clear();
      filterVals = null;
    }

    isLoading(false);
  }

  fetchRemarks() async {
    isRemarksLoading(true);

    remarkModel = await remarkListRepo.remarkList();

    if (remarkModel?.result?.status == true) {
      remarkList = remarkModel?.result?.paymentCommentsList;
    } else {
      remarkList = [];
    }

    isRemarksLoading(false);
  }

  submitRemarks({required int commentId, required int shopId}) async {
    isRemarksSubmitLoading(true);

    remarkSubmitResponse = await remarkListRepo.remarkSubmit(
        userId: SharedPrefs.getUserId() ?? 0,
        commentId: commentId,
        shopId: shopId);

    if (remarkSubmitResponse?.result?.status == true) {
      isRemarksSubmitLoading(false);
      selectedReasonId.value = 0;
      selectedReason.value = "choose";

      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
          content: Text(remarkSubmitResponse?.result?.message ?? "Success")));
    } else {
      isRemarksSubmitLoading(false);
      selectedReasonId.value = 0;
      selectedReason.value = "choose";

      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
          content: Text(remarkSubmitResponse?.result?.message ?? "Error")));
    }
  }

  RxString filterSelected = "".obs;

  filterShops(String filterName, int filterId) async {
    shopList.clear();
    searchEditingController.text = "";
    isFilterClick(true);
    filterSelected("$filterName-$filterId");
    pageNumber = 0;
    var shopFilterResponse = await shopListRepo.shopFilter(
        SharedPrefs.getUserId()!, filterName, filterId,
        pageNumber: pageNumber, pageSize: pageSize);
    if (shopFilterResponse.shopListResult?.status ?? false) {
      pageNumber = 1;
      shopList(shopFilterResponse.shopListResult?.shopList ?? []);
    }
    isFilterClick(false);
  }

  shopDetail(int shopId) async {
    isShopDetailsLoading(true);
    shopDetailResponse = await shopListRepo.shopDetails(shopId);
    isShopDetailsLoading(false);
  }

  void clearFilters() async {
    await fetchAllShops();
  }

  RxInt previousOrderCount = 0.obs;
  RxInt upcomingOrderCount = 0.obs;
  ShopList? shop;

  String? query;

  Future<void> searchShop(String? query) async {
    isFilterClick(true);
    filterSelected("");
    pageNumber = 0;
    var shopListResponse;
    if ((query ?? "").isEmpty) {
      await fetchAllShops();
    } else {
      if (this.query == query) {
        isFilterClick(false);
        return;
      }
      this.query = query;

      shopListResponse = await shopListRepo.shopSearch(
          salesPersonId: SharedPrefs.getUserId()!,
          query: {selectedSearchtype.value.type!: query},
          pageNumber: pageNumber,
          pageSize: pageSize);
      if (shopListResponse.shopListResult?.status ?? false) {
        pageNumber = 1;
        shopList(shopListResponse.shopListResult?.shopList ?? []);
      } else {
        shopList.clear();
      }
    }

    isFilterClick(false);
  }

  RxBool isPaginating = false.obs;

  Future<void> _paginateShopList() async {
    var shopListResponse = await shopListRepo.shopList(SharedPrefs.getUserId()!,
        pageNumber: pageNumber, pageSize: pageSize);
    if ((shopListResponse.shopListResult?.status ?? false) &&
        ((shopListResponse.shopListResult!.shopCount ?? 0) > 0)) {
      pageNumber += 1;
      shopList.addAll(shopListResponse.shopListResult!.shopList!);
    }
  }

  Future<void> _paginateSearchShop() async {
    if (pageNumber == 0) {
      pageNumber = 1;
    }
    var shopListResponse = await shopListRepo.shopSearch(
        salesPersonId: SharedPrefs.getUserId()!,
        query: {selectedSearchtype.value.type!: searchEditingController.text},
        pageNumber: pageNumber,
        pageSize: pageSize);
    if ((shopListResponse.shopListResult?.status ?? false) &&
        ((shopListResponse.shopListResult!.shopCount ?? 0) > 0)) {
      pageNumber += 1;
      shopList.addAll(shopListResponse.shopListResult!.shopList!);
    }
  }

  Future<void> _paginateFilterShops() async {
    var split = filterSelected.split("-");
    var shopListResponse = await shopListRepo.shopFilter(
        SharedPrefs.getUserId()!, split.first, int.parse(split.last),
        pageNumber: pageNumber, pageSize: pageSize);
    if ((shopListResponse.shopListResult?.status ?? false) &&
        ((shopListResponse.shopListResult!.shopCount ?? 0) > 0)) {
      pageNumber += 1;
      shopList.addAll(shopListResponse.shopListResult!.shopList!);
    }
  }

  paginate() async {
    isPaginating(true);
    if (searchEditingController.text.isNotEmpty) {
      await _paginateSearchShop();
    } else if (filterSelected.isNotEmpty) {
      await _paginateFilterShops();
    } else {
      await _paginateShopList();
    }

    isPaginating(false);
  }
}

class SearchType {
  final String? title;
  final String? type;

  SearchType(this.title, this.type);
}
