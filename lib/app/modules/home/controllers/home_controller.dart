import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/modules/home/data/repo/home_data_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:get/get.dart';

import '../../shops/models/shop_model.dart';

class HomeController extends GetxController {
  final HomeDataRepository _repository = HomeDataRepository();
  RxBool isLoading = true.obs;
  HomeData? homeData;
  List<ShopList> shopList = [];
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
    fetchHomePageData();  
    super.onInit();
  }

  fetchHomePageData() async {
    isLoading(true);
    var response = await _repository.getHomePageData(userId: SharedPrefs.getUserId()!);
    if (!(response.result?.status ?? false)) {
      showSnackBar(response.result?.message ?? "Something happend!!");
    } else {
      homeData = response;
    }
    isLoading(false);
  }

  Future<void> homeSearchShop(String? query) async {
    var shopListResponse;
    if ((query ?? "").isEmpty) {
      // shopListResponse = await _repository.shopList(SharedPrefs.getUserId()!);
    }
      shopListResponse = await _repository
          .homeShopSearch(salesPersonId: SharedPrefs.getUserId()!, query: {selectedSearchtype.value.type!: query});
    if (shopListResponse.shopListResult?.status ?? false) {
      shopList = shopListResponse.shopListResult?.shopList ?? [];
    } else {
      shopList = [];
    }
  }
}

class SearchType {
  final String? title;
  final String? type;

  SearchType(this.title, this.type);
}
