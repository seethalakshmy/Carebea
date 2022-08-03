import 'package:carebea/app/modules/profile/models/profile_model.dart';
import 'package:carebea/app/modules/profile/repo/profile_repo.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  ProfileViewRepo profileViewRepo = ProfileViewRepo();
  ProfileResponse? profileResponse;
  RxBool isProfileLoaded = false.obs;
  //TODO: Implement ProfileController

  final count = 0.obs;
  @override
  void onInit() {
    fetchProfileData();
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

  void increment() => count.value++;

  fetchProfileData() async {
    isProfileLoaded(true);

    profileResponse = await profileViewRepo.viewProfile(userId: SharedPrefs.getUserId()!);

    isProfileLoaded(false);
  }
}
