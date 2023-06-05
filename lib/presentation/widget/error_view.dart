import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterx/flutterx.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.isClientError,
    required this.errorMessage,
    Key? key,
  }) : super(key: key);
  final String? errorMessage;
  final bool? isClientError;

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
              errorMessage ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            Text(
              isClientError!
                  ? Strings.noInternetConnectionSubTitle
                  : Strings.weAreWorkingToFix,
              style: TextStyle(
                color: isDark ? ColorConst.darkFontColor : ColorConst.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            FxBox.h24,
            Visibility(
              visible: !isClientError!,
              child: FxButton(
                text: Strings.backToDashBoard,
                borderRadius: 15,
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                onPressed: () {
                  context.router.navigate(const DashboardRoute());
                },
                icon: const Icon(Icons.home, size: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
