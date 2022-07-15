import 'package:carebea/app/modules/shops/models/shop_model.dart';
import 'package:carebea/app/modules/shops/repo/shop_list_repo.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/shared_prefs.dart';

class ShopsController extends GetxController {
  ShopListRepo shopListRepo = ShopListRepo();
  RxBool isLoading = false.obs;
  ShopListResponse? shopListResponse;
  ShopListResponse? shopFilterResponse;
  ShopListResponse? shopSearchResult;
  RxBool isFilterClick = false.obs;

  //TODO: Implement ShopsController

  final count = 0.obs;
  @override
  void onInit() {
    fetchAllShops(isInitial: false, forSearch:true);
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

  fetchAllShops({required bool isInitial,
    required bool forSearch,
    String? searchKey} ) async {
    isLoading(true);
    shopListResponse = await shopListRepo.shopList(SharedPrefs.getUserId()!);

    debugPrint("fetchAllShops $shopListResponse");

    debugPrint(
        'fetch shops status ${shopListResponse!.shopListResult!.status!}');


    isLoading(false);
  }

  filterShops(String filterName,int filterId)async{
    isFilterClick(true);
    shopFilterResponse = await shopListRepo.shopFilter(SharedPrefs.getUserId()!,filterName,filterId);
    isFilterClick(false);

  }

  RxBool searching = false.obs;
  String query = '';

  onSearchSubmitted(String key) async {
    debugPrint('searchedKey $key');
    query = key;

    searching(true);
    fetchAllShops(forSearch:true, isInitial:false,searchKey: key);
    // searching(false);
  }

  openSearchDelegate(String key) {
    // showSearch(context: Get.context!, delegate: Search());
    Get.toNamed(Routes.SHOPS);
    onSearchSubmitted(key);
  }






}


