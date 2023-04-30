import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presenation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterx/flutterx.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    required this.title,
    this.subtitle,
    Key? key,
  }) : super(key: key);
  final String title;
  final String?subtitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FxBox.h32,
            SizedBox(
              height: 300,
              width: 400,
              child: SvgPicture.asset('assets/images/error-500.svg'),
            ),
            FxBox.h48,
            Text(
              title ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            subtitle != null?Text(
              subtitle!,
              style: TextStyle(
                color: isDark ? ColorConst.darkFontColor : ColorConst.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ):const SizedBox.shrink(),
            FxBox.h24,
            FxButton(
              text: Strings.backToDashBoard,
              borderRadius: 15,
              padding:
                  const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              onPressed: () {
                context.router.navigate(const DashboardRoute());
              },
              icon: const Icon(Icons.home, size: 15),
            ),
          ],
        ),
      ),
    );
  }
}
