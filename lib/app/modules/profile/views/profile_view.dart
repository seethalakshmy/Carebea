import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/modules/login/views/login_view.dart';
import 'package:carebea/app/modules/profile/widgets/logout_button.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_alertbox.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:restart_app/restart_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile Details',
                style: customTheme(context).medium.copyWith(fontSize: 14),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Expanded(
                child: Obx(() {
                  if (profileController.isProfileLoaded.value) {
                    return Align(alignment: Alignment.center, child: circularProgressIndicator(context));
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 50,
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 50,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Name',
                        style: customTheme(context).regular.copyWith(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        profileController.profileResponse!.profileResponseResult!.name!,
                        style: customTheme(context).regular.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Branch',
                        style: customTheme(context).regular.copyWith(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        'Carebae Branch',
                        style: customTheme(context).regular.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Mobile number',
                        style: customTheme(context).regular.copyWith(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        profileController.profileResponse!.profileResponseResult!.phone!,
                        style: customTheme(context).regular.copyWith(fontSize: 14),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            logout();
                          },
                          child: Text(
                            "Logout",
                            style: customTheme(context).medium.copyWith(color: customTheme(context).primary),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ));
  }

  void logout() {
    showDialog<bool>(
      context: Get.context!,
      builder: (ctx) => CustomAlertbox(
        title: "Logout",
        content: "Are you sure you want to logout?",
        actions: [
          Expanded(child: CustomButton(title: "Yes", onTap: () => Get.back(result: true))),
          const SizedBox(width: 10),
          Expanded(child: CustomButton(title: "No", onTap: () => Get.back(result: false))),
        ],
      ),
    ).then((value) {
      if (value ?? false) {
        var DeveiceId = SharedPrefs.getDeviceId();
        var DeveiceType = SharedPrefs.getDeviceType();
        var appVersion = SharedPrefs.getAppVersion();
        var accessToken = SharedPrefs.getAccessToken();
        var refreshToken = SharedPrefs.getAccessToken();

        SharedPrefs.shared.clear();

        SharedPrefs.setDeviceId(DeveiceId);
        SharedPrefs.setDeviceType(DeveiceType);
        SharedPrefs.setAppVersion(appVersion);
        SharedPrefs.setAccessToken(accessToken!);
        SharedPrefs.setRefreshToken(refreshToken!);

        // Get.offAllNamed(Routes.APP_START_UP);
        Restart.restartApp();
      }
    });
  }
}
