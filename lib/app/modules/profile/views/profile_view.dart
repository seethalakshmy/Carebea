import 'package:carebea/app/modules/login/views/login_view.dart';
import 'package:carebea/app/modules/profile/widgets/logout_button.dart';
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 15,
          automaticallyImplyLeading: false,
          title: Image.asset(
            Assets.assetsLogo,
            scale: 4,
          ),

        ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Profile Details',
              style: customTheme(context).medium.copyWith(fontSize: 14),
            ),
            SizedBox(height:MediaQuery.of(context).size.height*.05 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50,
                  child: Image.asset(Assets.profile,fit: BoxFit.contain,),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text('Name',
              style: customTheme(context).regular.copyWith(fontSize: 12,color: Colors.grey),
            ),
            Text('Jake Johnson',
              style: customTheme(context).regular.copyWith(fontSize: 14),

            ),
            SizedBox(height: 10,),
            Text('Branch',
              style: customTheme(context).regular.copyWith(fontSize: 12,color: Colors.grey),
            ),
            Text('Carebae Branch',
              style: customTheme(context).regular.copyWith(fontSize: 14),

            ),
            SizedBox(height: 10,),
            Text('Mobile number',
              style: customTheme(context).regular.copyWith(fontSize: 12,color: Colors.grey),
            ),
            Text('+91 58236374',
              style: customTheme(context).regular.copyWith(fontSize: 14),

            ),
            LogoutButton(

            )






          ],
        ),
      )
    );
  }
}
