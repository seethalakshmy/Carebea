import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/modules/home/data/models/reports_data.dart';
import 'package:carebea/app/modules/home/data/repo/home_data_repo.dart';
import 'package:carebea/app/modules/shops/models/order_list_model.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
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

  @override
  void onInit() {
    fetchHomePageData();

    super.onInit();
  }

  Future fetchreports() async {
    reportsData = await _repository.getReports();
  }

  Future fetchHomePageData() async {
    isLoading(true);
    var response = await _repository.getHomePageData(userId: SharedPrefs.getUserId()!);
    if (!(response.result?.status ?? false)) {
      showSnackBar(response.result?.message ?? "Something happend!!");
    } else {
      homeData = response;
      latestShopList = homeData?.result?.latestShopList ?? [];
      latestShopList.sort((a, b) => b.id!.compareTo(a.id!));
    }
    isLoading(false);
  }

  Future<List<ShopList>> homeSearchShop(String? query) async {
    if ((query ?? "").isEmpty) {
      return [];
      // shopListResponse = await _repository.shopList(SharedPrefs.getUserId()!);
    }
    var shopListResponse =
        await _repository.homeShopSearch(salesPersonId: SharedPrefs.getUserId()!, query: {"name": query});
    if (shopListResponse.shopListResult?.status ?? false) {
      return shopListResponse.shopListResult?.shopList ?? [];
    }
    return [];
  }

  Future<List<History>> homeSearchOrder(String? query) async {
    if ((query ?? "").isEmpty) {
      return [];
    }
    var orderListResponse = await _repository.homeOrderSearch(salesPersonId: SharedPrefs.getUserId()!, query: query);
    if (orderListResponse.orderListResult?.status ?? false) {
      return orderListResponse.orderListResult?.history ?? [];
    }
    return [];
  }
}

class SearchType {
  final String? title;
  final String? type;

  SearchType(this.title, this.type);
}
