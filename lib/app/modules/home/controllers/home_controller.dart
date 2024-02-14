import 'dart:developer';

import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/modules/home/data/models/reports_data.dart';
import 'package:carebea/app/modules/home/data/repo/home_data_repo.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../shops/models/shop_model.dart';

class HomeController extends GetxController {
  final HomeDataRepository _repository = HomeDataRepository();
  RxBool isLoading = true.obs;
  HomeData? homeData;
  List<LatestShopList> latestShopList = [];
  List<ShopList> shopList = [];
  List<History> orderList = [];
  List<UpcomingOrdersList> upcomingOrderList = [];
  RxString selectedSearchtype = 'Shop'.obs;
  ReportsData? reportsData;

  ScrollController scrollController = ScrollController();
  Position? currentPosition;

  @override
  void onInit() {
    fetchHomePageData();

    super.onInit();
  }

  Future fetchreports() async {
    reportsData = await _repository.getReports();
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(Get.context!).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    // else {
    //   _getCurrentPosition();
    //   debugPrint("lat ${_currentPosition?.latitude}");
    //   debugPrint("lon ${_currentPosition?.longitude}");
    //   Get.to(() => NearByShops());
    // }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
          content: Text(
              'Location Permission is permanently denied, Please enable it in settings')));
      return false;
    }
    return true;
  }

  Future<void> getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      currentPosition = position;
      // setState(() => _currentPosition = position);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future fetchHomePageData() async {
    isLoading(true);
    var response =
        await _repository.getHomePageData(userId: SharedPrefs.getUserId()!);
    if (!(response.result?.status ?? false)) {
      showSnackBar(response.result?.message ?? "Something happend!!");
    } else {
      homeData = response;
      latestShopList = homeData?.result?.latestShopList ?? [];
      latestShopList.sort((a, b) => b.id!.compareTo(a.id!));
    }
    try {
      await fetchreports();
    } catch (e, s) {
      log("error home", error: e, stackTrace: s);
    }
    isLoading(false);
  }

  int pageNumber = 0;
  int pageSize = 20;

  Future<List<ShopList>> homeSearchShop(String? query) async {
    if ((query ?? "").isEmpty) {
      return [];
      // shopListResponse = await _repository.shopList(SharedPrefs.getUserId()!);
    }
    var shopListResponse = await _repository.homeShopSearch(
        salesPersonId: SharedPrefs.getUserId()!,
        query: {"name": query},
        pageNumber: pageNumber,
        pageSize: pageSize);
    if (shopListResponse.shopListResult?.status ?? false) {
      return shopListResponse.shopListResult?.shopList ?? [];
    }
    return [];
  }

  Future<List<History>> homeSearchOrder(String? query) async {
    pageNumber = 0;
    if ((query ?? "").isEmpty) {
      return [];
    }
    var orderListResponse = await _repository.homeOrderSearch(
        salesPersonId: SharedPrefs.getUserId()!,
        query: query,
        pageNumber: pageNumber,
        pageSize: pageSize);
    if (orderListResponse.orderListResult?.status ?? false) {
      return orderListResponse.orderListResult?.history ?? [];
    }
    return [];
  }

  paginate() {}
}

class SearchType {
  final String? title;
  final String? type;

  SearchType(this.title, this.type);
}
