import 'package:carebea/app/modules/home/data/models/home_data_model.dart';
import 'package:carebea/app/modules/home/data/repo/home_data_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/show_snackbar.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeDataRepository _repository = HomeDataRepository();
  RxBool isLoading = true.obs;
  HomeData? homeData;
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
}
