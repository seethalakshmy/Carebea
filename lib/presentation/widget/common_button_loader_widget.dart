import 'package:flutter/material.dart';

import '../../core/enum.dart';
import 'custom_card.dart';
import 'custom_container.dart';

class CommonButtonLoaderWidget extends StatelessWidget {
  const CommonButtonLoaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        width: 110,
        height: 38,
        decoration: BoxDecoration(
            color: AppColor.primaryColor.val,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: CustomContainer(
              width: 20,
              height: 20,
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColor.white.val,
                  strokeWidth: 2.0,
                ),
              )),
        ),
      ),
    );
  }
}
