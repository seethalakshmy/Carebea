import 'package:carebea/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/services/api_service.dart';
import '../../../utils/global_state_controller.dart';
import '../../../utils/shared_prefs.dart';
import '../../dashboard/controllers/dashboard_controller.dart';




class LogoutButton extends StatefulWidget {

  const LogoutButton({this.icon, this.title,});

  final String? icon;
  final String? title;

  @override
  _LogoutButtonState createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  final DashboardController dashboardController = Get.find();
  final GlobalStateController globalStateController = Get.put(GlobalStateController());
  final ApiService apiService = Get.find();


  @override
  Widget build(BuildContext context) {

    return ListTile(
      onTap: () {
        SharedPrefs.getUserId()==null?Get.offAllNamed(Routes.LOGIN):
        confirmToLogout();
      },
      contentPadding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
      leading: Container(
        margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        height: 28,
        width: 29,
        child: const Icon(
          Icons.logout,
          color: Colors.white,
          size: 22,
        ),
      ),
      title:
      Text(SharedPrefs.getUserId()==null?
      'LOGIN':'LOGOUT',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
    );


  }

  confirmToLogout() {
    Get.defaultDialog(
        title: "",
        radius: 8,
        barrierDismissible: false,
        content: Column(
          children: [

            const SizedBox(height: 10,),

            const Text("Are you sure to logout?"),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: TextButton.styleFrom(
                        textStyle: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.red)),
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.red),
                    )),
                TextButton(
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        // fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff53b175))),
                  onPressed: () async {
                    // userData.write('isLogged', false);
                    // userData.remove('userId');
                    var getAccessToken = await apiService.getAccessToken();

                    if(getAccessToken){
                      var DeveiceId = SharedPrefs.getDeviceId();
                      var  DeveiceType = SharedPrefs.getDeviceType();
                      var appVersion =  SharedPrefs.getAppVersion();
                      var accessToken = SharedPrefs.getAccessToken();
                      var refreshToken = SharedPrefs.getAccessToken();



                      SharedPrefs.shared.clear();

                      SharedPrefs.setDeviceId(DeveiceId);
                      SharedPrefs.setDeviceType(DeveiceType);
                      SharedPrefs.setAppVersion(appVersion);
                      SharedPrefs.setAccessToken(accessToken!);
                      SharedPrefs.setRefreshToken(refreshToken!);





                      globalStateController.userId = null;


                         Get.back();
                        Get.snackbar("", "",snackPosition: SnackPosition.BOTTOM,titleText:  const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Center(child: Text("Logged out successfully",style: TextStyle(color: Colors.black),)),
                        ),borderRadius: 8,padding: const EdgeInsets.all(4.0),);
                        Get.toNamed(Routes.PROFILE);
                        // dashboardController.changeScreen(2);





                    }





                  },
                  child:   const Text("OK",style: TextStyle(
                    // fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff53b175))),
                ),
              ],
            ),
          ],
        ));
  }
}
