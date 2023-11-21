import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_alert_dialog_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.width,
    required this.subText,
    this.onNameTap,
    this.needUnderLine = false,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String subText;
  final double? width;
  final Function()? onNameTap;
  final bool needUnderLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            _buildImage(context),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: onNameTap,
                  child: CustomSizedBox(
                    child: CustomText(
                      name,
                      width: width,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration:
                            needUnderLine ? TextDecoration.underline : null,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                CustomText(subText),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  ClipRRect _buildImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedImage(
          onTap: () {
            showDialog(
              barrierLabel: "",
              barrierDismissible: true,
              context: context,
              builder: (BuildContext buildContext) {
                return CustomAlertDialogWidget(
                    showHeading: false,
                    width: 700,
                    heading: "",
                    child: CachedImage(
                      fit: BoxFit.contain,
                      imgUrl: imageUrl,
                    ));
              },
            );
          },
          height: DBL.oneFifty.val,
          width: DBL.oneFifty.val,
          imgUrl: imageUrl,
          placeHolderHeight: DBL.oneFifty.val,
          placeHolderWidth: DBL.oneFifty.val),
    );
  }
}
