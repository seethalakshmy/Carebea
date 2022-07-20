import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/modules/login/views/login_view.dart';
import 'package:carebea/app/modules/profile/widgets/logout_button.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if(profileController.isProfileLoaded.value){
        return Align(
          alignment: Alignment.center,
            child: circularProgressIndicator(context));
      }
      return Scaffold(
          appBar: appBar(context),
          body: Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Profile Details',
                  style: customTheme(context).medium.copyWith(fontSize: 14),
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * .05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 50,
                      child: Image.asset(Assets.profile, fit: BoxFit.contain,),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text('Name',
                  style: customTheme(context).regular.copyWith(
                      fontSize: 12, color: Colors.grey),
                ),
                Text(profileController.profileResponse!.profileResponseResult!
                    .name!,

                  style: customTheme(context).regular.copyWith(fontSize: 14),

                ),
                SizedBox(height: 10,),
                Text('Branch',
                  style: customTheme(context).regular.copyWith(
                      fontSize: 12, color: Colors.grey),
                ),
                Text('Carebae Branch',
                  style: customTheme(context).regular.copyWith(fontSize: 14),

                ),
                SizedBox(height: 10,),
                Text('Mobile number',
                  style: customTheme(context).regular.copyWith(
                      fontSize: 12, color: Colors.grey),
                ),
                Text(profileController.profileResponse!.profileResponseResult!
                    .phone!,
                  style: customTheme(context).regular.copyWith(fontSize: 14),

                ),
                LogoutButton(

                )


              ],
            ),
          )
      );
    });
  }
}
