import 'package:carebea/app/modules/near_by_shop/repo/near_by_shop_repo.dart';
import 'package:carebea/app/modules/remark_history/controllers/remark_history_controller.dart';
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

class NearByShopsController extends GetxController
    with GetTickerProviderStateMixin {
  ShopListRepo shopListRepo = ShopListRepo();
  NearByShopRepo nearByShopRepo = NearByShopRepo();
  OrderListRepo orderListRepo = OrderListRepo();
  RemarkListRepo remarkListRepo = RemarkListRepo();
  RxBool isOrdersLoading = true.obs;
  RxBool isLoading = false.obs;
  RxBool isRemarksLoading = true.obs;
  RxBool isRemarksSubmitLoading = false.obs;
  RxBool isNearByShopLoading = false.obs;
  ShopListResponse? shopDetailResponse;
  RemarkModel? remarkModel;
  RxList<ShopList> shopList = RxList<ShopList>();
  RxList<ShopList> nearByShopList = RxList<ShopList>();
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
  double? latitude;
  double? longitude;
  bool? isFromDelivery;
  TabController? tabController;
  RemarkHistoryController remarkHistoryController = Get.find();

  Rx<SearchType> selectedSearchtype = Rx(
    SearchType("Name", "name"),
  );

  List<SearchType> searchitems = [
    SearchType("Name", "name"),
    SearchType("Phone", "phone"),
    SearchType("Local Area", "local_area"),
  ];

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    latitude = Get.arguments['latitude'];
    longitude = Get.arguments['longitude'];
    isFromDelivery = Get.arguments['is_from_delivery'];
    debugPrint("is from delivery $isFromDelivery");
    remarkHistoryController.scrollController.addListener(() {
      if (((remarkHistoryController.scrollController.position.maxScrollExtent *
                  .7) <=
              remarkHistoryController.scrollController.position.pixels) &&
          !remarkHistoryController.isPaginating.value) {
        debugPrint(
            "pixel change ${remarkHistoryController.scrollController.position}");
        remarkHistoryController.paginate();
      }
    });
    scrollController.addListener(() {
      if (((scrollController.position.maxScrollExtent * .7) <=
              scrollController.position.pixels) &&
          !isNearByShopPaginating.value) {
        debugPrint("pixel change ${scrollController.position}");
        paginateNearByShop(latitude: latitude!, longitude: longitude!);
      }
    });
    fetchNearByShops(latitude: latitude!, longitude: longitude!);
    // fetchAllShops();
    fetchRemarks();
    super.onInit();
  }

  fetchAllShops() async {
    debugPrint("isloading before api call $isLoading");

    searchEditingController.text = "";
    shopList.clear();
    filterSelected("");
    pageNumber = 0;

    isLoading(true);
    var shopListResponse = await shopListRepo.shopList(
        salesPersonId: isFromDelivery == true ? null : SharedPrefs.getUserId()!,
        pageNumber: pageNumber,
        pageSize: pageSize,
        deliveryPersonId:
            isFromDelivery == true ? SharedPrefs.getUserId()! : null);
    if (shopListResponse.shopListResult?.status ?? false) {
      pageNumber += 1;
      shopList(shopListResponse.shopListResult?.shopList ?? []);

      filterVals = shopListResponse.shopListResult!.filterVals;
      isLoading(false);
      debugPrint("isloading after api call $isLoading");
    } else {
      shopList.clear();
      filterVals = null;
      isLoading(false);
      debugPrint("isloading after api call $isLoading");
    }
    debugPrint("isloading after api call $isLoading");

    isLoading(false);
  }

  fetchNearByShops(
      {required double latitude, required double longitude}) async {
    nearByShopList.clear();
    pageNumber = 0;

    isNearByShopLoading(true);
    var nearByShopResponse = await nearByShopRepo.nearByShopList(
        salesPersonId: isFromDelivery == true ? null : SharedPrefs.getUserId()!,
        deliveryPersonId:
            isFromDelivery == false ? null : SharedPrefs.getUserId()!,
        latitude: latitude,
        longitude: longitude,
        limit: pageSize,
        pageNumber: pageNumber);

    if (nearByShopResponse.shopListResult?.status ?? false) {
      pageNumber += 1;
      nearByShopList(nearByShopResponse.shopListResult?.shopList ?? []);
    } else {
      nearByShopList.clear();
    }
    isNearByShopLoading(false);
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
        shopId: shopId,
        latitude: latitude!,
        longitude: longitude!);

    if (remarkSubmitResponse?.result?.status == true) {
      isRemarksSubmitLoading(false);
      selectedReasonId.value = 0;
      selectedReason.value = "choose";

      ScaffoldMessenger.of(Get.context!).showSnackBar(
          const SnackBar(content: Text("Remark submitted successfully")));
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

  // void clearFilters() async {
  //   await fetchAllShops();
  // }

  RxInt previousOrderCount = 0.obs;
  RxInt upcomingOrderCount = 0.obs;
  ShopList? shop;

  String? query;

  Future<void> searchShop(String? query) async {
    nearByShopList.clear();
    isFilterClick(true);
    filterSelected("");
    pageNumber = 0;
    var shopListResponse;
    if ((query ?? "").isEmpty) {
      await fetchNearByShops(latitude: latitude!, longitude: longitude!);
    } else {
      if (this.query == query) {
        await fetchAllShops();
        // isFilterClick(false);
        return;
      }
      this.query = query;

      shopListResponse = await shopListRepo.shopSearch(
          deliveryPersonId:
              isFromDelivery == true ? SharedPrefs.getUserId() : null,
          salesPersonId:
              isFromDelivery == true ? null : SharedPrefs.getUserId()!,
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
    var shopListResponse = await shopListRepo.shopList(
        salesPersonId: isFromDelivery == true ? null : SharedPrefs.getUserId()!,
        deliveryPersonId:
            isFromDelivery == true ? SharedPrefs.getUserId()! : null,
        pageNumber: pageNumber,
        pageSize: pageSize);
    if ((shopListResponse.shopListResult?.status ?? false) &&
        ((shopListResponse.shopListResult!.shopCount ?? 0) > 0)) {
      pageNumber += 1;
      shopList.addAll(shopListResponse.shopListResult!.shopList!);
    }
  }

  RxBool isNearByShopPaginating = false.obs;

  Future<void> _paginateNearByShopList(
      {required double latitude, required double longitude}) async {
    var nearByShopListResponse = await nearByShopRepo.nearByShopList(
        salesPersonId: isFromDelivery == true ? null : SharedPrefs.getUserId()!,
        deliveryPersonId:
            isFromDelivery == false ? null : SharedPrefs.getUserId()!,
        latitude: latitude,
        longitude: longitude,
        limit: pageSize,
        pageNumber: pageNumber);
    if ((nearByShopListResponse.shopListResult?.status ?? false) &&
        ((nearByShopListResponse.shopListResult!.shopCount ?? 0) > 0)) {
      pageNumber += 1;
      nearByShopList.addAll(nearByShopListResponse.shopListResult!.shopList!);
    }
  }

  Future<void> _paginateSearchShop() async {
    if (pageNumber == 0) {
      pageNumber = 1;
    }
    var shopListResponse = await shopListRepo.shopSearch(
        salesPersonId: isFromDelivery == true ? null : SharedPrefs.getUserId()!,
        deliveryPersonId:
            isFromDelivery == true ? SharedPrefs.getUserId()! : null,
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

  paginateNearByShop(
      {required double latitude, required double longitude}) async {
    isNearByShopPaginating(true);
    await _paginateNearByShopList(latitude: latitude, longitude: longitude);
    isNearByShopPaginating(false);
  }
}

class SearchType {
  final String? title;
  final String? type;

  SearchType(this.title, this.type);
}
