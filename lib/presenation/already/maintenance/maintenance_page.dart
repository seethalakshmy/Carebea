
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/custom_text.dart';
import 'package:admin_580_tech/core/icons.dart';
import 'package:admin_580_tech/core/image.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterx/flutterx.dart';

class MaintenancePage extends StatefulWidget {
  const MaintenancePage({Key? key}) : super(key: key);

  @override
  State<MaintenancePage> createState() => _MaintenancePageState();
}

class _MaintenancePageState extends State<MaintenancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectionArea(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Center(
            child: ScrollConfiguration(
              behavior:
              ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Responsive.isMobile(context)
                        ? Column(
                      children: [
                        SvgPicture.asset(
                          IconlyBroken.adminKitText,
                        ),
                        FxBox.h28,
                        Text(
                          "Site is Under Maintenance",
                          style: TextStyle(
                            color: isDark
                                ? ColorConst.darkFontColor
                                : ColorConst.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        FxBox.h8,
                        Text(
                          "Please check back in sometime.",
                          style: TextStyle(
                            color: isDark
                                ? ColorConst.darkFontColor
                                : ColorConst.textColor,
                          ),
                        ),
                        FxBox.h32,
                        const CustomText(
                          textAlign: TextAlign.center,
                          title:
                          'Our website is under construction, we are working \nvery hard to give you the best experience with this one.',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        FxBox.h28,
                        SizedBox(
                          height:
                          MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 1,
                          child: Image.asset(
                            Images.maintenance,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    )
                    //Column(children: _list())
                        : Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                IconlyBroken.adminKitText,
                              ),
                              FxBox.h28,
                              Text(
                                Strings.maintenancaTitle,
                                style: TextStyle(
                                  color: isDark
                                      ? ColorConst.darkFontColor
                                      : ColorConst.textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),
                              ),
                              FxBox.h8,
                              Text(
                                Strings.maintenancaSubtitle,
                                style: TextStyle(
                                  color: isDark
                                      ? ColorConst.darkFontColor
                                      : ColorConst.textColor,
                                ),
                              ),
                              FxBox.h32,
                              const CustomText(
                                textAlign: TextAlign.center,
                                title:
                                Strings.maintenancaText,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height:
                            MediaQuery.of(context).size.height * 0.5,
                            child: Image.asset(
                              Images.maintenance,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}