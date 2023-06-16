import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/cached_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/table_status_box.dart';
import 'package:flutter/material.dart';

import 'alert_text_label.dart';
import 'custom_svg.dart';

class ServiceDetailCareGiverView extends StatelessWidget {
  const ServiceDetailCareGiverView(
      {Key? key, required this.imgUrl})
      : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
        child: Row(
          children: [
            AlertTextLabel(AppString.careAmbassador.val,isCustomWidth: true),
            CachedImage(imgUrl: imgUrl,isCircle: true),
          ],
        ));
  }
}
