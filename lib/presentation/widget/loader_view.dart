import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/enum.dart';
import 'custom_container.dart';

class LoaderView extends StatelessWidget {
  const LoaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.white.val,
      highlightColor: Color(0xffE8F2FF),
      child: CustomContainer(
        color: AppColor.white.val,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
