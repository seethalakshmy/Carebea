import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../presentation/widget/custom_text.dart';

class CSnackBar {
  static showSuccess(BuildContext context, {required String msg}) {
    FToast fToast;
    fToast = FToast();
    fToast.init(context);
    fToast.showToast(
        child: SizedBox(
          width: 380,
          height: 50,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Icon(
                  //   Icons.check,
                  //   color: Colors.white,
                  //   size: 20,
                  // ),

                  CustomText(
                    msg,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  //
                  // InkWell(
                  //   onTap: () {
                  //     fToast.removeCustomToast();
                  //   },
                  //   child: const Icon(
                  //     Icons.close,
                  //     color: Colors.white,
                  //     size: 20,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
        toastDuration: const Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            top: 16.0,
            right: 30,
            child: child,
          );
        });
  }

  static showError(BuildContext context, {required String msg}) {
    FToast fToast;
    fToast = FToast();
    fToast.init(context);
    fToast.showToast(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .3,
          height: 50,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CustomText(
                    msg,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  // InkWell(
                  //   onTap: () {
                  //     fToast.removeCustomToast();
                  //   },
                  //   child: const Icon(
                  //     Icons.close,
                  //     color: Colors.white,
                  //     size: 20,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
        toastDuration: const Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            top: 16.0,
            left: 30,
            right: 30,
            child: child,
          );
        });
  }
}
